(define-module (guix-cran packages a)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages web)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages java)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages video)
  #:use-module (gnu packages package-management)
  #:use-module (gnu packages backup)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages geo)
  #:use-module (gnu packages python)
  #:use-module (gnu packages sqlite)
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
  #:use-module (guix-cran packages e)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages b))

(define-public r-azurevmmetadata
  (package
    (name "r-azurevmmetadata")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AzureVMmetadata" version))
       (sha256
        (base32 "15ghijzva6qzq2riq8ci4bh6ssknnp15yyy1fql0k4878wkf7vs0"))))
    (properties `((upstream-name . "AzureVMmetadata")))
    (build-system r-build-system)
    (propagated-inputs (list r-openssl r-httr))
    (home-page "https://cran.r-project.org/package=AzureVMmetadata")
    (synopsis "Interface to Azure Virtual Machine Instance Metadata")
    (description
     "This package provides a simple interface to the instance metadata for a virtual
machine running in Microsoft's Azure cloud.  This provides information about the
VM's configuration, such as its processors, memory, networking, storage, and so
on.  Part of the @code{AzureR} family of packages.")
    (license license:expat)))

(define-public r-azurevm
  (package
    (name "r-azurevm")
    (version "2.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AzureVM" version))
       (sha256
        (base32 "0766a4y17qgq3vgb398n6zn8sdjrv65gpvrnr9b9g89zdsdy9fc4"))))
    (properties `((upstream-name . "AzureVM")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-jsonlite r-azurermr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AzureVM")
    (synopsis "Virtual Machines in 'Azure'")
    (description
     "Functionality for working with virtual machines (VMs) in Microsoft's Azure
cloud: <https://azure.microsoft.com/en-us/services/virtual-machines/>.  Includes
facilities to deploy, startup, shutdown, and cleanly delete VMs and VM clusters.
 Deployment configurations can be highly customised, and can make use of
existing resources as well as creating new ones.  A selection of predefined
configurations is provided to allow easy deployment of commonly used Linux and
Windows images, including Data Science Virtual Machines.  With a running VM,
execute scripts and install optional extensions.  Part of the @code{AzureR}
family of packages.")
    (license license:expat)))

(define-public r-azurevision
  (package
    (name "r-azurevision")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AzureVision" version))
       (sha256
        (base32 "0a4lnj60577bxy5vyd7yqji984kgwpwd4zykxz2d060r8l31rf42"))))
    (properties `((upstream-name . "AzureVision")))
    (build-system r-build-system)
    (propagated-inputs (list r-httr r-azurermr r-azurecognitive))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AzureVision")
    (synopsis "Interface to Azure Computer Vision Services")
    (description
     "An interface to Azure Computer Vision
<https://docs.microsoft.com/azure/cognitive-services/Computer-vision/Home> and
Azure Custom Vision
<https://docs.microsoft.com/azure/cognitive-services/custom-vision-service/home>,
building on the low-level functionality provided by the @code{AzureCognitive}
package.  These services allow users to leverage the cloud to carry out visual
recognition tasks using advanced image processing models, without needing
powerful hardware of their own.  Part of the @code{AzureR} family of packages.")
    (license license:expat)))

(define-public r-azuretablestor
  (package
    (name "r-azuretablestor")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AzureTableStor" version))
       (sha256
        (base32 "0xrfpi9psn1h21g4mvcbqsjav56s8cha381vsjkp1swilrxhmk5l"))))
    (properties `((upstream-name . "AzureTableStor")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-uuid
                             r-openssl
                             r-jsonlite
                             r-httr
                             r-azurestor
                             r-azurermr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AzureTableStor")
    (synopsis "Interface to the Table Storage Service in 'Azure'")
    (description
     "An interface to the table storage service in Azure':
<https://azure.microsoft.com/en-us/services/storage/tables/>.  Supplies
functionality for reading and writing data stored in tables, both as part of a
storage account and from a @code{CosmosDB} database with the table service API.
Part of the @code{AzureR} family of packages.")
    (license license:expat)))

(define-public r-azurestor
  (package
    (name "r-azurestor")
    (version "3.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AzureStor" version))
       (sha256
        (base32 "0jrc4m8p0hss07hna157z510rh84lhjmyqsa47wirpr0b5ba6kr3"))))
    (properties `((upstream-name . "AzureStor")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-vctrs
                             r-r6
                             r-openssl
                             r-mime
                             r-httr
                             r-azurermr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AzureStor")
    (synopsis "Storage Management in 'Azure'")
    (description
     "Manage storage in Microsoft's Azure cloud:
<https://azure.microsoft.com/en-us/product-categories/storage/>.  On the admin
side, @code{AzureStor} includes features to create, modify and delete storage
accounts.  On the client side, it includes an interface to blob storage, file
storage, and Azure Data Lake Storage Gen2': upload and download files and blobs;
list containers and files/blobs; create containers; and so on.  Authenticated
access to storage is supported, via either a shared access key or a shared
access signature (SAS).  Part of the @code{AzureR} family of packages.")
    (license license:expat)))

(define-public r-azurermr
  (package
    (name "r-azurermr")
    (version "2.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AzureRMR" version))
       (sha256
        (base32 "09mjc5ibk1g1azskqnrcgfb5bi88aw55g96cyas5vlwgi54xzs70"))))
    (properties `((upstream-name . "AzureRMR")))
    (build-system r-build-system)
    (propagated-inputs (list r-uuid
                             r-r6
                             r-jsonlite
                             r-httr
                             r-azuregraph
                             r-azureauth))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AzureRMR")
    (synopsis "Interface to 'Azure Resource Manager'")
    (description
     "This package provides a lightweight but powerful R interface to the Azure
Resource Manager REST API. The package exposes a comprehensive class framework
and related tools for creating, updating and deleting Azure resource groups,
resources and templates.  While @code{AzureRMR} can be used to manage any Azure
service, it can also be extended by other packages to provide extra
functionality for specific services.  Part of the @code{AzureR} family of
packages.")
    (license license:expat)))

(define-public r-azureqstor
  (package
    (name "r-azureqstor")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AzureQstor" version))
       (sha256
        (base32 "1z7j8kakiarpw3q2rii7gl9zc2nsb49nzs1nxg1hgfyvcdhw2fcg"))))
    (properties `((upstream-name . "AzureQstor")))
    (build-system r-build-system)
    (propagated-inputs (list r-openssl r-httr r-azurestor r-azurermr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AzureQstor")
    (synopsis "Interface to 'Azure Queue Storage'")
    (description
     "An interface to Azure Queue Storage'.  This is a cloud service for storing large
numbers of messages, for example from automated sensors, that can be accessed
remotely via authenticated calls using HTTP or HTTPS. Queue storage is often
used to create a backlog of work to process asynchronously.  Part of the
@code{AzureR} family of packages.")
    (license license:expat)))

(define-public r-azuremlsdk
  (package
    (name "r-azuremlsdk")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "azuremlsdk" version))
       (sha256
        (base32 "0s64kjrmcdnjdwh5mdm5vxgvrl9ghvfv6bair7qfzz32jlab99m0"))))
    (properties `((upstream-name . "azuremlsdk")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinycssloaders
                             r-shiny
                             r-servr
                             r-rstudioapi
                             r-reticulate
                             r-plyr
                             r-htmltools
                             r-ggplot2
                             r-dt))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/azure/azureml-sdk-for-r")
    (synopsis "Interface to the 'Azure Machine Learning' 'SDK'")
    (description
     "Interface to the Azure Machine Learning Software Development Kit ('SDK').  Data
scientists can use the SDK to train, deploy, automate, and manage machine
learning models on the Azure Machine Learning service.  To learn more about
Azure Machine Learning visit the website:
<https://docs.microsoft.com/en-us/azure/machine-learning/service/overview-what-is-azure-ml>.")
    (license license:expat)))

(define-public r-azurekusto
  (package
    (name "r-azurekusto")
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AzureKusto" version))
       (sha256
        (base32 "0n0bkaj9gsg2xcczpbg8nm62ipgh4s6a8lvnaiylh8q3w1z6aqfl"))))
    (properties `((upstream-name . "AzureKusto")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-r6
                             r-openssl
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-dbi
                             r-azurermr
                             r-azureauth))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AzureKusto")
    (synopsis "Interface to 'Kusto'/'Azure Data Explorer'")
    (description
     "An interface to Azure Data Explorer', also known as Kusto', a fast, distributed
data exploration service from Microsoft:
<https://azure.microsoft.com/en-us/products/data-explorer/>.  Includes DBI and
dplyr interfaces, with the latter modelled after the dbplyr package, whereby
queries are translated from R into the native KQL query language and executed
lazily.  On the admin side, the package extends the object framework provided by
@code{AzureRMR} to support creation and deletion of databases, and management of
database principals.  Part of the @code{AzureR} family of packages.")
    (license license:expat)))

(define-public r-azurekeyvault
  (package
    (name "r-azurekeyvault")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AzureKeyVault" version))
       (sha256
        (base32 "15x0mkgn7pq2yk05l5vwvd744gxkz28nb5azc1yz502ayr1s6hnm"))))
    (properties `((upstream-name . "AzureKeyVault")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6
                             r-openssl
                             r-jsonlite
                             r-jose
                             r-httr
                             r-azurermr
                             r-azuregraph
                             r-azureauth))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AzureKeyVault")
    (synopsis "Key and Secret Management in 'Azure'")
    (description
     "Manage keys, certificates, secrets, and storage accounts in Microsoft's Key
Vault service: <https://azure.microsoft.com/services/key-vault/>.  Provides
facilities to store and retrieve secrets, use keys to encrypt, decrypt, sign and
verify data, and manage certificates.  Integrates with the @code{AzureAuth}
package to enable authentication with a certificate, and with the openssl
package for importing and exporting cryptographic objects.  Part of the
@code{AzureR} family of packages.")
    (license license:expat)))

(define-public r-azuregraph
  (package
    (name "r-azuregraph")
    (version "1.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AzureGraph" version))
       (sha256
        (base32 "0x7ya1yxk0cga9cfbfkd332l2syswdqjamzr2xqvb6ybwc5lpcy2"))))
    (properties `((upstream-name . "AzureGraph")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6
                             r-openssl
                             r-jsonlite
                             r-httr
                             r-curl
                             r-azureauth))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AzureGraph")
    (synopsis "Simple Interface to 'Microsoft Graph'")
    (description
     "This package provides a simple interface to the Microsoft Graph API
<https://learn.microsoft.com/en-us/graph/overview>.  Graph is a comprehensive
framework for accessing data in various online Microsoft services.  This package
was originally intended to provide an R interface only to the Azure Active
Directory part, with a view to supporting interoperability of R and Azure':
users, groups, registered apps and service principals.  However it has since
been expanded into a more general tool for interacting with Graph.  Part of the
@code{AzureR} family of packages.")
    (license license:expat)))

(define-public r-azurecosmosr
  (package
    (name "r-azurecosmosr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AzureCosmosR" version))
       (sha256
        (base32 "07bpmjxfyzk1aq8r06biiqsn2ibv7ymgqccxfxkbvszpfq79nryj"))))
    (properties `((upstream-name . "AzureCosmosR")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-uuid
                             r-openssl
                             r-jsonlite
                             r-httr
                             r-curl
                             r-azurermr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AzureCosmosR")
    (synopsis "Interface to the 'Azure Cosmos DB' 'NoSQL' Database Service")
    (description
     "An interface to Azure @code{CosmosDB}':
<https://azure.microsoft.com/en-us/services/cosmos-db/>.  On the admin side,
@code{AzureCosmosR} provides functionality to create and manage Cosmos DB
instances in Microsoft's Azure cloud.  On the client side, it provides an
interface to the Cosmos DB SQL API, letting the user store and query documents
and attachments in Cosmos DB'.  Part of the @code{AzureR} family of packages.")
    (license license:expat)))

(define-public r-azurecontainers
  (package
    (name "r-azurecontainers")
    (version "1.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AzureContainers" version))
       (sha256
        (base32 "0lykvf4kk1q7b7ln4l8jlrxgqyvrg1cfnap4ak8zkhxmrgzqpc5f"))))
    (properties `((upstream-name . "AzureContainers")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6
                             r-processx
                             r-openssl
                             r-httr
                             r-azurermr
                             r-azuregraph))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AzureContainers")
    (synopsis
     "Interface to 'Container Instances', 'Docker Registry' and 'Kubernetes' in 'Azure'")
    (description
     "An interface to container functionality in Microsoft's Azure cloud:
<https://azure.microsoft.com/en-us/product-categories/containers/>.  Manage
Azure Container Instance (ACI), Azure Container Registry (ACR) and Azure
Kubernetes Service (AKS) resources, push and pull images, and deploy services.
On the client side, lightweight shells to the docker', docker-compose', kubectl
and helm commandline tools are provided.  Part of the @code{AzureR} family of
packages.")
    (license license:expat)))

(define-public r-azurecognitive
  (package
    (name "r-azurecognitive")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AzureCognitive" version))
       (sha256
        (base32 "1mn3qw5g77x24qyhybhn1p3h4s9ymdafrj35i24f32ncr5abnd2f"))))
    (properties `((upstream-name . "AzureCognitive")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr r-azurermr r-azureauth))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AzureCognitive")
    (synopsis "Interface to Azure Cognitive Services")
    (description
     "An interface to Azure Cognitive Services
<https://docs.microsoft.com/en-us/azure/cognitive-services/>.  Both an Azure
Resource Manager interface, for deploying Cognitive Services resources, and a
client framework are supplied.  While @code{AzureCognitive} can be called by the
end-user, it is meant to provide a foundation for other packages that will
support specific services, like Computer Vision, Custom Vision, language
translation, and so on.  Part of the @code{AzureR} family of packages.")
    (license license:expat)))

(define-public r-azureauth
  (package
    (name "r-azureauth")
    (version "1.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AzureAuth" version))
       (sha256
        (base32 "1arr7vbcj9ibrx826md487hcmlch46b2h3r03a14wxq6ssxj4x0z"))))
    (properties `((upstream-name . "AzureAuth")))
    (build-system r-build-system)
    (propagated-inputs (list r-rappdirs
                             r-r6
                             r-openssl
                             r-jsonlite
                             r-jose
                             r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AzureAuth")
    (synopsis "Authentication Services for Azure Active Directory")
    (description
     "This package provides Azure Active Directory (AAD) authentication functionality
for R users of Microsoft's Azure cloud <https://azure.microsoft.com/>.  Use this
package to obtain OAuth 2.0 tokens for services including Azure Resource
Manager, Azure Storage and others.  It supports both AAD v1.0 and v2.0, as well
as multiple authentication methods, including device code and resource owner
grant.  Tokens are cached in a user-specific directory obtained using the
rappdirs package.  The interface is based on the OAuth framework in the httr
package, but customised and streamlined for Azure.  Part of the @code{AzureR}
family of packages.")
    (license license:expat)))

(define-public r-azureappinsights
  (package
    (name "r-azureappinsights")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AzureAppInsights" version))
       (sha256
        (base32 "09a53anvllap85cs2qg1vdjcyr50vlirlhigrn4x47zilrjsm0xx"))))
    (properties `((upstream-name . "AzureAppInsights")))
    (build-system r-build-system)
    (arguments
     (list
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
    (propagated-inputs (list r-shiny r-rlang r-lubridate r-jsonlite
                             r-assertthat))
    (native-inputs (list esbuild))
    (home-page "https://cran.r-project.org/package=AzureAppInsights")
    (synopsis "Include Azure Application Insights in Shiny Apps")
    (description
     "Imports Azure Application Insights for web pages into Shiny apps via Microsoft's
@code{JavaScript} snippet.  Allows app developers to submit page tracking and
submit events.")
    (license license:expat)))

(define-public r-azlogr
  (package
    (name "r-azlogr")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "azlogr" version))
       (sha256
        (base32 "1vn1b6sz7gp6pr7m2mspppjxxb9b54rc9am99lsilkg90cv1ba8h"))))
    (properties `((upstream-name . "azlogr")))
    (build-system r-build-system)
    (propagated-inputs (list r-logger r-jsonlite r-httr r-digest r-catools))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=azlogr")
    (synopsis "Logging in 'R' and Post to 'Azure Log Analytics' Workspace")
    (description
     "It extends the functionality of logger package.  Additional logging metadata can
be configured to be collected.  Logging messages are displayed on console and
optionally they are sent to Azure Log Analytics workspace in real-time.")
    (license license:expat)))

(define-public r-aziad
  (package
    (name "r-aziad")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AZIAD" version))
       (sha256
        (base32 "0nzd3y4kcb628f1h0xpslx2nva8pv6i3mmp9vm5c49xiq43d82cz"))))
    (properties `((upstream-name . "AZIAD")))
    (build-system r-build-system)
    (propagated-inputs (list r-qrm
                             r-foreach
                             r-extradistr
                             r-envstats
                             r-doparallel
                             r-corpcor))
    (home-page "https://cran.r-project.org/package=AZIAD")
    (synopsis "Analyzing Zero-Inflated and Zero-Altered Data")
    (description
     "Description: Computes maximum likelihood estimates of general, zero-inflated,
and zero-altered models for discrete and continuous distributions.  It also
performs Kolmogorov-Smirnov (KS) tests and likelihood ratio tests for general,
zero-inflated, and zero-altered data.  Additionally, it obtains the inverse of
the Fisher information matrix and confidence intervals for the parameters of
general, zero-inflated, and zero-altered models.  The package simulates random
deviates from zero-inflated or hurdle models to obtain maximum likelihood
estimates.  Based on the work of Aldirawi et al. (2022)
<doi:10.1007/s42519-021-00230-y> and Dousti Mousavi et al. (2023)
<doi:10.1080/00949655.2023.2207020>.")
    (license license:expat)))

(define-public r-axisandallies
  (package
    (name "r-axisandallies")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "axisandallies" version))
       (sha256
        (base32 "0z1b17vy9vb8fm2vrhk4nf94ndqrpcpy8isfyb5n8xbm2mygr45m"))))
    (properties `((upstream-name . "axisandallies")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=axisandallies")
    (synopsis "Axis and Allies Spring")
    (description
     "Simulates battles in the board game Axis and Allies Spring 1942, and calculates
your probability of winning a battle.  This speeds the game up significantly.")
    (license license:expat)))

(define-public r-aws-wrfsmn
  (package
    (name "r-aws-wrfsmn")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aws.wrfsmn" version))
       (sha256
        (base32 "1ayyk0phq7afc9p0p8xjgdpzyylx91hc9j02rp2hcq1rf0fnkaw7"))))
    (properties `((upstream-name . "aws.wrfsmn")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra
                             r-magrittr
                             r-lubridate
                             r-hydrogof
                             r-ggplot2
                             r-dplyr
                             r-aws-s3))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=aws.wrfsmn")
    (synopsis "Data Processing of SMN Hi-Res Weather Forecast from 'AWS'")
    (description
     "Exploration of Weather Research & Forecasting ('WRF') Model data of Servicio
Meteorologico Nacional (SMN) from Amazon Web Services
(<https://registry.opendata.aws/smn-ar-wrf-dataset/>) cloud.  The package
provides the possibility of data downloading, processing and correction methods.
 It also has map management and series exploration of available meteorological
variables of WRF forecast.")
    (license license:gpl3+)))

(define-public r-aws-translate
  (package
    (name "r-aws-translate")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aws.translate" version))
       (sha256
        (base32 "1x6cvpfddgwywsji4ywygmqn3pwy3i1aci9lk4nsrrfkzggwcbpb"))))
    (properties `((upstream-name . "aws.translate")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr r-aws-signature))
    (home-page "https://github.com/cloudyr/aws.translate")
    (synopsis "Client for 'AWS Translate'")
    (description
     "This package provides a client for AWS Translate
<https://aws.amazon.com/documentation/translate>, a machine translation service
that will convert a text input in one language into a text output in another
language.")
    (license license:gpl2+)))

(define-public r-aws-transcribe
  (package
    (name "r-aws-transcribe")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aws.transcribe" version))
       (sha256
        (base32 "1nni1b935i2ir67lfhcj0106vzr310mk2jvln32gvzbnqxcggz7m"))))
    (properties `((upstream-name . "aws.transcribe")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr r-aws-signature))
    (home-page "https://github.com/cloudyr/aws.transcribe")
    (synopsis "Client for 'AWS Transcribe'")
    (description
     "Client for AWS Transcribe <https://aws.amazon.com/documentation/transcribe>, a
cloud transcription service that can convert an audio media file in English and
other languages into a text transcript.")
    (license license:gpl2+)))

(define-public r-aws-polly
  (package
    (name "r-aws-polly")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aws.polly" version))
       (sha256
        (base32 "1xfx9g5iq1wcl27cmj4ss3y3f5yr1qmma77ki09g3ji2xvd50101"))))
    (properties `((upstream-name . "aws.polly")))
    (build-system r-build-system)
    (propagated-inputs (list r-tuner r-jsonlite r-httr r-aws-signature))
    (home-page "https://github.com/cloudyr/aws.polly")
    (synopsis "Client for AWS Polly")
    (description
     "This package provides a client for AWS Polly
<http://aws.amazon.com/documentation/polly>, a speech synthesis service.")
    (license license:gpl2+)))

(define-public r-aws-lambda
  (package
    (name "r-aws-lambda")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aws.lambda" version))
       (sha256
        (base32 "0vp13qw7mw8dz01q30z7bnj47qx9js1zmxasc2n733gi07fdj62f"))))
    (properties `((upstream-name . "aws.lambda")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr r-base64enc r-aws-signature))
    (home-page "https://github.com/cloudyr/aws.lambda")
    (synopsis "AWS Lambda Client Package")
    (description
     "This package provides a simple client package for the Amazon Web Services
('AWS') Lambda API <https://aws.amazon.com/lambda/>.")
    (license license:gpl3)))

(define-public r-aws-kms
  (package
    (name "r-aws-kms")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aws.kms" version))
       (sha256
        (base32 "0f9l62g4z68ickzi4if3pw3algb41rn47z9cpxga8aggkclk86l4"))))
    (properties `((upstream-name . "aws.kms")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr r-base64enc r-aws-signature))
    (home-page "https://github.com/cloudyr/aws.kms")
    (synopsis "'AWS Key Management Service' Client Package")
    (description
     "Client package for the AWS Key Management Service <https://aws.amazon.com/kms/>,
a cloud service for managing encryption keys.")
    (license license:gpl2+)))

(define-public r-aws-iam
  (package
    (name "r-aws-iam")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aws.iam" version))
       (sha256
        (base32 "1p4w50icfw6mrzr6aazdbh977yvyvsf1yavjscyvv11xf3y9f9j2"))))
    (properties `((upstream-name . "aws.iam")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-jsonlite r-httr r-aws-signature))
    (home-page "https://github.com/cloudyr/aws.iam")
    (synopsis "AWS IAM Client Package")
    (description
     "This package provides a simple client for the Amazon Web Services ('AWS')
Identity and Access Management ('IAM') API <https://aws.amazon.com/iam/>.")
    (license license:gpl2+)))

(define-public r-aws-ecx
  (package
    (name "r-aws-ecx")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aws.ecx" version))
       (sha256
        (base32 "1yz20h2k5rf13jsgpk8aj6d27a1zj602g916pngq525m08cmbvka"))))
    (properties `((upstream-name . "aws.ecx")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-rjson r-httr r-aws-signature))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Jiefei-Wang/aws.ecx")
    (synopsis "Communicating with AWS EC2 and ECS using AWS REST APIs")
    (description
     "Providing the functions for communicating with Amazon Web Services(AWS) Elastic
Compute Cloud(EC2) and Elastic Container Service(ECS).  The functions will have
the prefix ecs_ or ec2_ depending on the class of the API. The request will be
sent via the REST API and the parameters are given by the function argument.
The credentials can be set via aws_set_credentials'.  The EC2 documentation can
be found at
<https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Welcome.html> and ECS
can be found at
<https://docs.aws.amazon.com/@code{AmazonECS/latest/APIReference/Welcome.html>}.")
    (license license:gpl3)))

(define-public r-aws-ec2metadata
  (package
    (name "r-aws-ec2metadata")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aws.ec2metadata" version))
       (sha256
        (base32 "1lbljg2fp3yh1hwlbmprkc1prw80jv0ycvpg1vggagm68wm5x288"))))
    (properties `((upstream-name . "aws.ec2metadata")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-curl))
    (home-page "https://github.com/cloudyr/aws.ec2metadata")
    (synopsis "Get EC2 Instance Metadata")
    (description
     "Retrieve Amazon EC2 instance metadata from within the running instance.")
    (license license:gpl2+)))

(define-public r-aws-comprehend
  (package
    (name "r-aws-comprehend")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aws.comprehend" version))
       (sha256
        (base32 "0qn4mkdd17c8kmrm4ml7l1x3rzaw3gbykhrj3m0ga53crcqdhqri"))))
    (properties `((upstream-name . "aws.comprehend")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr r-aws-signature))
    (home-page "https://github.com/cloudyr/aws.comprehend")
    (synopsis "Client for 'AWS Comprehend'")
    (description
     "Client for AWS Comprehend <https://aws.amazon.com/comprehend>, a cloud natural
language processing service that can perform a number of quantitative text
analyses, including language detection, sentiment analysis, and feature
extraction.")
    (license license:gpl2+)))

(define-public r-aws-alexa
  (package
    (name "r-aws-alexa")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aws.alexa" version))
       (sha256
        (base32 "0m1i1xgi9fqixq90ai2ag0079aa75nlyhbr3ln3yhk5g8zx9i9m9"))))
    (properties `((upstream-name . "aws.alexa")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-httr r-dplyr r-aws-signature))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=aws.alexa")
    (synopsis "Client for the Amazon Alexa Web Information Services API")
    (description
     "Use the Amazon Alexa Web Information Services API to find information about
domains, including the kind of content that they carry, how popular are
they---rank and traffic history, sites linking to them, among other things.  See
<https://aws.amazon.com/awis/> for more information.")
    (license license:expat)))

(define-public r-awr-kinesis
  (package
    (name "r-awr-kinesis")
    (version "1.7.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AWR.Kinesis" version))
       (sha256
        (base32 "0ak2ry5zj6gb9g6laabv0ym3i1vqdwl56g6k58fkpjb87rlb2hbp"))))
    (properties `((upstream-name . "AWR.Kinesis")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjava r-logger r-jsonlite r-awr))
    (home-page "https://github.com/daroczig/AWR.Kinesis")
    (synopsis "Amazon 'Kinesis' Consumer Application for Stream Processing")
    (description
     "Fetching data from Amazon Kinesis Streams using the Java-based
@code{MultiLangDaemon} interacting with Amazon Web Services ('AWS') for easy
stream processing from R. For more information on Kinesis', see
<https://aws.amazon.com/kinesis>.")
    (license license:agpl3)))

(define-public r-awr
  (package
    (name "r-awr")
    (version "1.11.189-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AWR" version))
       (sha256
        (base32 "1imvpmq6br0z7l67w66a5s1ylbv6xvypj0wc09bmjy7sapdmkn4x"))))
    (properties `((upstream-name . "AWR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjava))
    (home-page "https://github.com/daroczig/AWR")
    (synopsis "'AWS' Java 'SDK' for R")
    (description
     "Make the compiled Java modules of the Amazon Web Services ('AWS') SDK available
to be used in downstream R packages interacting with AWS'.  See
<https://aws.amazon.com/sdk-for-java> for more information on the AWS SDK for
Java.")
    (license license:agpl3)))

(define-public r-awinr
  (package
    (name "r-awinr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "awinR" version))
       (sha256
        (base32 "09cp9wfb4aslfddlk72n0kawfghyn1fcjya5afjhiffwww5ps3iy"))))
    (properties `((upstream-name . "awinR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://windsor.ai/")
    (synopsis "Get Data from 'Awin' via the 'Windsor.ai' API")
    (description
     "Collect your data on digital marketing campaigns from Awin using the Windsor.ai
API <https://windsor.ai/api-fields/>.")
    (license license:gpl3)))

(define-public r-awesom
  (package
    (name "r-awesom")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aweSOM" version))
       (sha256
        (base32 "0nfbn7rgazvc5nljf8i7bwpxy5j0w404bnrvi02k97jvmrra1dyb"))))
    (properties `((upstream-name . "aweSOM")))
    (build-system r-build-system)
    (arguments
     (list
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
    (propagated-inputs (list r-viridis
                             r-shiny
                             r-rmarkdown
                             r-readxl
                             r-readods
                             r-rcolorbrewer
                             r-rclipboard
                             r-kohonen
                             r-kernlab
                             r-htmlwidgets
                             r-htmltools
                             r-haven
                             r-ggplot2
                             r-foreign
                             r-fields
                             r-e1071
                             r-dt
                             r-data-table
                             r-cluster
                             r-bslib))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://cran.r-project.org/package=aweSOM")
    (synopsis "Interactive Self-Organizing Maps")
    (description
     "Self-organizing maps (also known as SOM, see Kohonen (2001)
<doi:10.1007/978-3-642-56927-2>) are a method for dimensionality reduction and
clustering of continuous data.  This package introduces interactive (html)
graphics for easier analysis of SOM results.  It also features an interactive
interface, for push-button training and visualization of SOM on numeric,
categorical or mixed data, as well as tools to evaluate the quality of SOM.")
    (license license:gpl2+)))

(define-public r-aweek
  (package
    (name "r-aweek")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aweek" version))
       (sha256
        (base32 "14n1xmargr89mf4n0bdzdwn7qh314a1xg1bid5px762vk0qf4fws"))))
    (properties `((upstream-name . "aweek")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://www.repidemicsconsortium.org/aweek/")
    (synopsis "Convert Dates to Arbitrary Week Definitions")
    (description
     "Which day a week starts depends heavily on the either the local or professional
context.  This package is designed to be a lightweight solution to easily
switching between week-based date definitions.")
    (license license:expat)))

(define-public r-avotrex
  (package
    (name "r-avotrex")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "avotrex" version))
       (sha256
        (base32 "1qr9yhwrllpk0drg3s1r4f5hsx78yfys6nyj2vdk70n8na102243"))))
    (properties `((upstream-name . "avotrex")))
    (build-system r-build-system)
    (propagated-inputs (list r-treetools
                             r-tidytree
                             r-stringr
                             r-snow
                             r-phytools
                             r-foreach
                             r-dplyr
                             r-dosnow
                             r-doparallel
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=avotrex")
    (synopsis
     "Global Dataset of Anthropogenic Extinct Birds and their Traits: Phylogeny Builder")
    (description
     "Grafts the extinct bird species from the Avotrex database (Sayol et al., in
review) on to the @code{BirdTree} phylogenies <https://birdtree.org>, using a
set of different commands.")
    (license license:gpl3)))

(define-public r-avocado
  (package
    (name "r-avocado")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "avocado" version))
       (sha256
        (base32 "0qy9ripwydm3f70rpxwk0asc7r25hg8jcbrr4rz8bxs93q1lsz8x"))))
    (properties `((upstream-name . "avocado")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=avocado")
    (synopsis "Weekly Hass Avocado Sales Summary")
    (description
     "This package provides a weekly summary of Hass Avocado sales for the contiguous
US from January 2017 to November 2020.  See the package website for more
information, documentation, and examples.  Data source: Haas Avocado Board
<https://hassavocadoboard.com/category-data/>.")
    (license license:expat)))

(define-public r-avirtualtwins
  (package
    (name "r-avirtualtwins")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aVirtualTwins" version))
       (sha256
        (base32 "1jg19ns3mxfycc11i2c152d83n4kqz3dd6d269sijnxrw80kzjki"))))
    (properties `((upstream-name . "aVirtualTwins")))
    (build-system r-build-system)
    (propagated-inputs (list r-rpart r-randomforest r-party))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/prise6/aVirtualTwins")
    (synopsis "Adaptation of Virtual Twins Method from Jared Foster")
    (description
     "Research of subgroups in random clinical trials with binary outcome and two
treatments groups.  This is an adaptation of the Jared Foster method
(<https://www.ncbi.nlm.nih.gov/pubmed/21815180>).")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-avinertia
  (package
    (name "r-avinertia")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AvInertia" version))
       (sha256
        (base32 "1i3fy4jf91x662xhi07kcsg9b1p0hfyj2x5fav3zkvs9lx7gwfqx"))))
    (properties `((upstream-name . "AvInertia")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-reshape2
                             r-readxl
                             r-pracma
                             r-ggthemes
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/charvey23/AvInertia")
    (synopsis "Calculate the Inertial Properties of a Flying Bird")
    (description
     "This package provides tools to compute the center of gravity and moment of
inertia tensor of any flying bird.  The tools function by modeling a bird as a
composite structure of simple geometric objects.  This requires detailed
morphological measurements of bird specimens although those obtained for the
associated paper have been included in the package for use.  Refer to the
vignettes and supplementary material for detailed information on the package
function.")
    (license license:gpl3)))

(define-public r-avidar
  (package
    (name "r-avidar")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "avidaR" version))
       (sha256
        (base32 "1rm37lsmi5cyrkdpb55hr5m1pklwv5czzk4m1dzqzdvn4qp95ms7"))))
    (properties `((upstream-name . "avidaR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-tibble
                             r-readr
                             r-rcolorbrewer
                             r-r6
                             r-httr
                             r-dplyr
                             r-curl
                             r-circlize
                             r-base64enc))
    (home-page "https://gitlab.com/fortunalab/avidaR")
    (synopsis "Computational Biologistâs Toolkit To Get Data From 'avidaDB'")
    (description
     "Easy-to-use tools for performing complex queries on @code{avidaDB}', a semantic
database that stores genomic and transcriptomic data of self-replicating
computer programs (known as digital organisms) that mutate and evolve within a
user-defined computational environment.")
    (license license:expat)))

(define-public r-avgas
  (package
    (name "r-avgas")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AVGAS" version))
       (sha256
        (base32 "0s0h6rpsni73a0j679g22ngpaazdfifxpi7mwpa7ac3p0kdzvji0"))))
    (properties `((upstream-name . "AVGAS")))
    (build-system r-build-system)
    (propagated-inputs (list r-variablescreening
                             r-selectiveinference
                             r-pracma
                             r-matrix
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=AVGAS")
    (synopsis "Variable Selection using Genetic Algorithms")
    (description
     "We provide a stage-wise selection method using genetic algorithm which can
perform fast interaction selection in high-dimensional linear regression models
with two-way interaction effects under strong, weak, or no heredity condition.
Ye, C.,and Yang,Y. (2019) <doi:10.1109/TIT.2019.2913417>.")
    (license license:gpl2)))

(define-public r-avesperu
  (package
    (name "r-avesperu")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "avesperu" version))
       (sha256
        (base32 "0s92sdxhgc8d5qwv3frig87j4fxnj28kaykrqiqvdgjwjd6yhgbh"))))
    (properties `((upstream-name . "avesperu")))
    (build-system r-build-system)
    (home-page "https://github.com/PaulESantos/avesperu")
    (synopsis "Access to the List of Birds Species of Peru")
    (description
     "Allows access to the data found in the species list featured in the renowned
List of the Birds of Peru Plenge, M. A. (2023)
<https://sites.google.com/site/boletinunop/checklist>.  This publication stands
as one of Peru's most comprehensive reviews of bird diversity.  The dataset
incorporates detailed species accounts and has been meticulously structured for
effortless utilization within the R environment.")
    (license license:expat)))

(define-public r-averisk
  (package
    (name "r-averisk")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "averisk" version))
       (sha256
        (base32 "02j27d4jxgy2bk5sgxp1xdfyqr321civs99qj0g8cp34gwqk0j3m"))))
    (properties `((upstream-name . "averisk")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=averisk")
    (synopsis
     "Calculation of Average Population Attributable Fractions and Confidence Intervals")
    (description
     "Average population attributable fractions are calculated for a set of risk
factors (either binary or ordinal valued) for both prospective and case- control
designs.  Confidence intervals are found by Monte Carlo simulation.  The method
can be applied to either prospective or case control designs, provided an
estimate of disease prevalence is provided.  In addition to an exact calculation
of AF, an approximate calculation, based on randomly sampling permutations has
been implemented to ensure the calculation is computationally tractable when the
number of risk factors is large.")
    (license license:cc0)))

(define-public r-avar
  (package
    (name "r-avar")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "avar" version))
       (sha256
        (base32 "0zpdgkshadzi01llqcsddzzhpywycsy5411rcvsgmm8wsi0n4khs"))))
    (properties `((upstream-name . "avar")))
    (build-system r-build-system)
    (propagated-inputs (list r-simts r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SMAC-Group/avar")
    (synopsis "Allan Variance")
    (description
     "This package implements the allan variance and allan variance linear regression
estimator for latent time series models.  More details about the method can be
found, for example, in Guerrier, S., Molinari, R., & Stebler, Y. (2016)
<doi:10.1109/LSP.2016.2541867>.")
    (license license:agpl3)))

(define-public r-available
  (package
    (name "r-available")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "available" version))
       (sha256
        (base32 "1j6z0zwd7xjk6j6wk74fjq3nhx9gk7ys09i543gakcskmdm59dw4"))))
    (properties `((upstream-name . "available")))
    (build-system r-build-system)
    (propagated-inputs (list r-yesno
                             r-tidytext
                             r-tibble
                             r-stringdist
                             r-snowballc
                             r-memoise
                             r-jsonlite
                             r-glue
                             r-desc
                             r-crayon
                             r-clisymbols
                             r-cli))
    (home-page "https://github.com/r-lib/available")
    (synopsis
     "Check if the Title of a Package is Available, Appropriate and Interesting")
    (description
     "Check if a given package name is available to use.  It checks the name's
validity.  Checks if it is used on @code{GitHub}', CRAN and Bioconductor'.
Checks for unintended meanings by querying Wiktionary and Wikipedia.")
    (license license:expat)))

(define-public r-av
  (package
    (name "r-av")
    (version "0.9.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "av" version))
       (sha256
        (base32 "0j2ajlkncdw181i2psmpahgmpxjkcg4ph2zp6iqb3nx5cyj441a3"))))
    (properties `((upstream-name . "av")))
    (build-system r-build-system)
    (inputs (list zlib))
    (native-inputs (list pkg-config))
    (home-page "https://ropensci.r-universe.dev/av")
    (synopsis "Working with Audio and Video in R")
    (description
     "Bindings to FFmpeg <http://www.ffmpeg.org/> AV library for working with audio
and video in R. Generates high quality video from images or R graphics with
custom audio.  Also offers high performance tools for reading raw audio,
creating spectrograms', and converting between countless audio / video formats.
This package interfaces directly to the C API and does not require any command
line utilities.")
    (license license:expat)))

(define-public r-autoweatherindices
  (package
    (name "r-autoweatherindices")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AutoWeatherIndices" version))
       (sha256
        (base32 "08f2c026vn5kmsdlf54sxakzjp2f43dkrs6mv9qwnjfrd2hchzzi"))))
    (properties `((upstream-name . "AutoWeatherIndices")))
    (build-system r-build-system)
    (propagated-inputs (list r-hmisc r-gtools))
    (home-page "https://cran.r-project.org/package=AutoWeatherIndices")
    (synopsis "Calculating Weather Indices")
    (description
     "Weather indices are formed from weather variables in this package.  The users
can input any number of weather variables recorded over any number of weeks.
This package has no restriction on the number of weeks and weather variables to
be taken as input.The details of the method can be seen (i)'Joint effects of
weather variables on rice yields by R. Agrawal, R. C. Jain and M. P. Jha in
Mausam, vol.  34, pp.  189-194,
1983,<doi:10.54302/mausam.v34i2.2392>,(ii)'Improved weather indices based
Bayesian regression model for forecasting crop yield by M. Yeasin, K. N. Singh,
A. Lama and B. Gurung in Mausam, vol.  72, pp.879-886,
2021,<doi:10.54302/mausam.v72i4.670>.")
    (license license:gpl3)))

(define-public r-autovi
  (package
    (name "r-autovi")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autovi" version))
       (sha256
        (base32 "1f0pmcqjzb4w10693khakva84dn32k01a655c5r4xf1n86vvq2jv"))))
    (properties `((upstream-name . "autovi")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-reticulate
                             r-ggplot2
                             r-cli
                             r-cassowaryr
                             r-bandicoot))
    (home-page "https://tengmcing.github.io/autovi/")
    (synopsis "Auto Visual Inference with Computer Vision Models")
    (description
     "This package provides automated visual inference of residual plots using
computer vision models, facilitating diagnostic checks for classical normal
linear regression models.")
    (license license:expat)))

(define-public r-autots
  (package
    (name "r-autots")
    (version "0.9.11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autoTS" version))
       (sha256
        (base32 "1mwpazynp5hdc2ccnhvddkajfcd4qam23pvjl9accq1rnxzxkiyv"))))
    (properties `((upstream-name . "autoTS")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-shinycssloaders
                             r-shiny
                             r-rlang
                             r-rcpproll
                             r-prophet
                             r-plotly
                             r-magrittr
                             r-lubridate
                             r-ggplot2
                             r-forecast
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vivienroussez/autoTS")
    (synopsis
     "Automatic Model Selection and Prediction for Univariate Time Series")
    (description
     "Offers a set of functions to easily make predictions for univariate time series.
@code{autoTS} is a wrapper of existing functions of the forecast and prophet
packages, harmonising their outputs in tidy dataframes and using default values
for each.  The core function @code{getBestModel}() allows the user to
effortlessly benchmark seven algorithms along with a bagged estimator to
identify which one performs the best for a given time series.")
    (license license:gpl3)))

(define-public r-autotransqf
  (package
    (name "r-autotransqf")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AutoTransQF" version))
       (sha256
        (base32 "1kqdzz719r2bp37b6fn21njgbiyn7rrpms7jcjl8i0znwxkspd82"))))
    (properties `((upstream-name . "AutoTransQF")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam r-moments r-matlab2r))
    (home-page "https://github.com/yyyuehhu/AutoTransQF")
    (synopsis "Novel Automatic Shifted Log Transformation")
    (description
     "This package provides a novel parametrization of log transformation and a shift
parameter to automate the transformation process are proposed in R package
@code{AutoTransQF} based on Feng et al. (2016).  Please read Feng et al. (2016)
<doi:10.1002/sta4.104> for more details of the method.")
    (license license:gpl3)))

(define-public r-autothresholdr
  (package
    (name "r-autothresholdr")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autothresholdr" version))
       (sha256
        (base32 "1fkny4i1fpy5fkya52cw4bzpdi236smq4qq23q1zdba3srmpyzsl"))))
    (properties `((upstream-name . "autothresholdr")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-strex
                             r-rlang
                             r-rcpp
                             r-purrr
                             r-magrittr
                             r-ijtiff
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://rorynolan.github.io/autothresholdr/")
    (synopsis "An R Port of the 'ImageJ' Plugin 'Auto Threshold'")
    (description
     "Algorithms for automatically finding appropriate thresholds for numerical data,
with special functions for thresholding images.  Provides the @code{ImageJ} Auto
Threshold plugin functionality to R users.  See
<https://imagej.net/plugins/auto-threshold> and Landini et al. (2017)
<DOI:10.1111/jmi.12474>.")
    (license license:gpl3)))

(define-public r-autostsm
  (package
    (name "r-autostsm")
    (version "3.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autostsm" version))
       (sha256
        (base32 "0vaddh04p2sj1j0a55ny4imraplnflcv2dw365cn9r4bgcj8xhh7"))))
    (properties `((upstream-name . "autostsm")))
    (build-system r-build-system)
    (propagated-inputs (list r-strucchange
                             r-sandwich
                             r-progress
                             r-maxlik
                             r-lubridate
                             r-lmtest
                             r-kalmanfilter
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-forecast
                             r-foreach
                             r-dosnow
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=autostsm")
    (synopsis "Automatic Structural Time Series Models")
    (description
     "Automatic model selection for structural time series decomposition into trend,
cycle, and seasonal components, plus optionality for structural interpolation,
using the Kalman filter.  Koopman, Siem Jan and Marius Ooms (2012) \"Forecasting
Economic Time Series Using Unobserved Components Time Series Models\"
<doi:10.1093/oxfordhb/9780195398649.013.0006>.  Kim, Chang-Jin and Charles R.
Nelson (1999) \"State-Space Models with Regime Switching: Classical and
Gibbs-Sampling Approaches with Applications\"
<doi:10.7551/mitpress/6444.001.0001><http://econ.korea.ac.kr/~cjkim/>.")
    (license license:gpl2+)))

(define-public r-autostepwiseglm
  (package
    (name "r-autostepwiseglm")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AutoStepwiseGLM" version))
       (sha256
        (base32 "0wwi8hg2q1zkf28rq7bj0f9fcxc5hj59hkmk0gl9p8i3rghlyrms"))))
    (properties `((upstream-name . "AutoStepwiseGLM")))
    (build-system r-build-system)
    (propagated-inputs (list r-formula-tools r-caret))
    (home-page "https://cran.r-project.org/package=AutoStepwiseGLM")
    (synopsis "Builds Stepwise GLMs via Train and Test Approach")
    (description
     "Randomly splits data into testing and training sets.  Then, uses stepwise
selection to fit numerous multiple regression models on the training data, and
tests them on the test data.  Returned for each model are plots comparing model
Akaike Information Criterion (AIC), Pearson correlation coefficient (r) between
the predicted and actual values, Mean Absolute Error (MAE), and R-Squared among
the models.  Each model is ranked relative to the other models by the model
evaluation metrics (i.e., AIC, r, MAE, and R-Squared) and the model with the
best mean ranking among the model evaluation metrics is returned.  Model
evaluation metric weights for AIC, r, MAE, and R-Squared are taken in as
arguments as aic_wt, r_wt, mae_wt, and r_squ_wt, respectively.  They are equally
weighted as default but may be adjusted relative to each other if the user
prefers one or more metrics to the others, Field, A. (2013,
ISBN:978-1-4462-4918-5).")
    (license license:expat)))

(define-public r-autostats
  (package
    (name "r-autostats")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autostats" version))
       (sha256
        (base32 "1283m1b5bllzfsilsjkk0sj8l1wsjpvnq1vk7r20gnd8nf6kybmn"))))
    (properties `((upstream-name . "autostats")))
    (build-system r-build-system)
    (propagated-inputs (list r-yardstick
                             r-xgboost
                             r-workflows
                             r-tune
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rsample
                             r-rlist
                             r-rlang
                             r-recosystem
                             r-recipes
                             r-purrr
                             r-presenter
                             r-patchwork
                             r-party
                             r-parsnip
                             r-nnet
                             r-magrittr
                             r-jtools
                             r-janitor
                             r-igraph
                             r-gtools
                             r-ggthemes
                             r-ggplot2
                             r-ggeasy
                             r-framecleaner
                             r-dplyr
                             r-dials
                             r-data-table
                             r-ckmeans-1d-dp
                             r-broom-mixed
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://harrison4192.github.io/autostats/")
    (synopsis "Auto Stats")
    (description
     "Automatically do statistical exploration.  Create formulas using tidyselect
syntax, and then determine cross-validated model accuracy and variable
contributions using glm and xgboost'.  Contains additional helper functions to
create and modify formulas.  Has a flagship function to quickly determine
relationships between categorical and continuous variables in the data set.")
    (license license:expat)))

(define-public r-autoshiny
  (package
    (name "r-autoshiny")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autoshiny" version))
       (sha256
        (base32 "0hwrsc08lq6zyx869qmiyd0fc83wqfyzx65a3s2j2xnzf4wwzgbq"))))
    (properties `((upstream-name . "autoshiny")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny))
    (home-page "https://github.com/alekrutkowski/autoshiny")
    (synopsis "Automatic Transformation of an 'R' Function into a 'shiny' App")
    (description
     "Static code compilation of a shiny app given an R function (into ui.R and
server.R files or into a shiny app object).  See examples at
<https://github.com/alekrutkowski/autoshiny>.")
    (license license:gpl2)))

(define-public r-autoseed
  (package
    (name "r-autoseed")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Autoseed" version))
       (sha256
        (base32 "0xr3sjfccvp8h18jqxzajb2pfn4nm8q9maic6k9zzr15fxvphiy5"))))
    (properties `((upstream-name . "Autoseed")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=Autoseed")
    (synopsis "Retrieve Disease-Related Genes from Public Sources")
    (description
     "For researchers to quickly and comprehensively acquire disease genes, so as to
understand the mechanism of disease, we developed this program to acquire
disease-related genes.  The data is integrated from three public databases.  The
three databases are @code{eDGAR}', @code{DrugBank} and @code{MalaCards}'.  The
@code{eDGAR} is a comprehensive database, containing data on the relationship
between disease and genes. @code{DrugBank} contains information on 13443 drugs
and 5157 targets. @code{MalaCards} integrates human disease information,
including disease-related genes.")
    (license license:gpl3+)))

(define-public r-autoscorecard
  (package
    (name "r-autoscorecard")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autoScorecard" version))
       (sha256
        (base32 "03zq23x7gha02zvmb5vwmv1pz54ghcfr0sk75krh59cgprx5ysl5"))))
    (properties `((upstream-name . "autoScorecard")))
    (build-system r-build-system)
    (propagated-inputs (list r-rpart
                             r-rocr
                             r-infotheo
                             r-ggplot2
                             r-discretization
                             r-corrplot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=autoScorecard")
    (synopsis "Fully Automatic Generation of Scorecards")
    (description
     "This package provides an efficient suite of R tools for scorecard modeling,
analysis, and visualization.  Including equal frequency binning, equidistant
binning, K-means binning, chi-square binning, decision tree binning, data
screening, manual parameter modeling, fully automatic generation of scorecards,
etc.  This package is designed to make scorecard development easier and faster.
References include: 1. <http://shichen.name/posts/>.  2.  Dong-feng Li(Peking
University),Class PPT. 3. <https://zhuanlan.zhihu.com/p/389710022>.  4.
<https://www.zhangshengrong.com/p/281@code{oqR9JNw/>}.")
    (license license:agpl3)))

(define-public r-autoscore
  (package
    (name "r-autoscore")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AutoScore" version))
       (sha256
        (base32 "14wn566xm308zir12rckwc5fagm2x1mrphy0a7iri0cbrffgnkz4"))))
    (properties `((upstream-name . "AutoScore")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tableone
                             r-survminer
                             r-survival
                             r-survauc
                             r-rlang
                             r-randomforestsrc
                             r-randomforest
                             r-proc
                             r-plotly
                             r-ordinal
                             r-magrittr
                             r-knitr
                             r-hmisc
                             r-ggplot2
                             r-dplyr
                             r-coxed
                             r-car))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nliulab/AutoScore")
    (synopsis
     "An Interpretable Machine Learning-Based Automatic Clinical Score Generator")
    (description
     "This package provides a novel interpretable machine learning-based framework to
automate the development of a clinical scoring model for predefined outcomes.
Our novel framework consists of six modules: variable ranking with machine
learning, variable transformation, score derivation, model selection, domain
knowledge-based score fine-tuning, and performance evaluation.The The original
@code{AutoScore} structure is described in the research
paper<doi:10.2196/21798>.  A full tutorial can be found
here<https://nliulab.github.io/@code{AutoScore/>}.  Users or clinicians could
seamlessly generate parsimonious sparse-score risk models (i.e., risk scores),
which can be easily implemented and validated in clinical practice.  We hope to
see its application in various medical case studies.")
    (license license:gpl2+)))

(define-public r-autoregressionmde
  (package
    (name "r-autoregressionmde")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AutoregressionMDE" version))
       (sha256
        (base32 "1dmg0q4sp2d2anzhw2my8xjhpyjsx0kf7r202q5bkw8yr57jnhvr"))))
    (properties `((upstream-name . "AutoregressionMDE")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=AutoregressionMDE")
    (synopsis "Minimum Distance Estimation in Autoregressive Model")
    (description
     "Consider autoregressive model of order p where the distribution function of
innovation is unknown, but innovations are independent and symmetrically
distributed.  The package contains a function named ARMDE which takes X (vector
of n observations) and p (order of the model) as input argument and returns
minimum distance estimator of the parameters in the model.")
    (license license:gpl2)))

(define-public r-autoreg
  (package
    (name "r-autoreg")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autoReg" version))
       (sha256
        (base32 "0r26h2ik6cx21dlilpcx9a60dj1fw3zq06f2prmxw7ybk1ix19zm"))))
    (properties `((upstream-name . "autoReg")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tidycmprsk
                             r-survival
                             r-stringr
                             r-scales
                             r-rlang
                             r-purrr
                             r-patchwork
                             r-pammtools
                             r-officer
                             r-nortest
                             r-moonbook
                             r-mice
                             r-maxstat
                             r-ggplot2
                             r-flextable
                             r-dplyr
                             r-crayon
                             r-broom
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cardiomoon/autoReg")
    (synopsis "Automatic Linear and Logistic Regression and Survival Analysis")
    (description
     "Make summary tables for descriptive statistics and select explanatory variables
automatically in various regression models.  Support linear models, generalized
linear models and cox-proportional hazard models.  Generate publication-ready
tables summarizing result of regression analysis and plots.  The tables and
plots can be exported in \"HTML\", \"pdf('@code{LaTex}')\", \"docx('MS Word')\" and
\"pptx('MS Powerpoint')\" documents.")
    (license license:gpl3)))

(define-public r-autorasch
  (package
    (name "r-autorasch")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autoRasch" version))
       (sha256
        (base32 "15vgmpvcw7hi1i5kaqj9q126qmfa54h8ay9w6wa7yxjbginp9v7c"))))
    (properties `((upstream-name . "autoRasch")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-lavaan r-foreach
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=autoRasch")
    (synopsis "Semi-Automated Rasch Analysis")
    (description
     "This package performs Rasch analysis (semi-)automatically, which has been shown
to be comparable with the standard Rasch analysis (Feri Wijayanto et al. (2021)
<doi:10.1111/bmsp.12218>, Feri Wijayanto et al. (2022)
<doi:10.3758/s13428-022-01947-9>, Feri Wijayanto et al. (2022)
<doi:10.1177/01466216221125178>).")
    (license license:gpl2)))

(define-public r-autoplots
  (package
    (name "r-autoplots")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AutoPlots" version))
       (sha256
        (base32 "0fw90l1dc7s488yn7m45ivkg3l97bx7cks8vd66984zhqp0g66jd"))))
    (properties `((upstream-name . "AutoPlots")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-quanteda-textstats
                             r-quanteda
                             r-nortest
                             r-lubridate
                             r-echarts4r
                             r-e1071
                             r-dplyr
                             r-data-table
                             r-combinat))
    (home-page "https://github.com/AdrianAntico/AutoPlots")
    (synopsis "Creating Echarts Visualizations as Easy as Possible")
    (description
     "Create beautiful and interactive visualizations in a single function call.  The
data.table package is utilized to perform the data wrangling necessary to
prepare your data for the plot types you wish to build, along with allowing fast
processing for big data.  There are two broad classes of plots available:
standard plots and machine learning evaluation plots.  There are lots of
parameters available in each plot type function for customizing the plots (such
as faceting) and data wrangling (such as variable transformations and
aggregation).")
    (license license:agpl3+)))

(define-public r-autoplotprotein
  (package
    (name "r-autoplotprotein")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Autoplotprotein" version))
       (sha256
        (base32 "13mxqmhhdiq7mz4m6nx39dsq7x3bm8fsgskswx48vsq6x2k6byxa"))))
    (properties `((upstream-name . "Autoplotprotein")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-seqinr r-plyr r-plotrix r-ade4))
    (home-page "https://cran.r-project.org/package=Autoplotprotein")
    (synopsis "Development of Visualization Tools for Protein Sequence")
    (description
     "The image of the amino acid transform on the protein level is drawn, and the
automatic routing of the functional elements such as the domain and the mutation
site is completed.")
    (license license:gpl3)))

(define-public r-autoplotly
  (package
    (name "r-autoplotly")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autoplotly" version))
       (sha256
        (base32 "1z577jvadgiz028z7x0786d3qhlkrvv9i34xmllizvg94kxv3bl1"))))
    (properties `((upstream-name . "autoplotly")))
    (build-system r-build-system)
    (propagated-inputs (list r-plotly r-ggplot2 r-ggfortify))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/terrytangyuan/autoplotly")
    (synopsis
     "Automatic Generation of Interactive Visualizations for Statistical Results")
    (description
     "Functionalities to automatically generate interactive visualizations for
statistical results supported by ggfortify', such as time series, PCA,
clustering and survival analysis, with plotly.js <https://plotly.com/> and
ggplot2 style.  The generated visualizations can also be easily extended using
ggplot2 and plotly syntax while staying interactive.")
    (license license:gpl2)))

(define-public r-autopipe
  (package
    (name "r-autopipe")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AutoPipe" version))
       (sha256
        (base32 "0bzllh92fgsmz79lh6m2f10vsx5qng4l7bwbwkp2kzwnncy7cq63"))))
    (properties `((upstream-name . "AutoPipe")))
    (build-system r-build-system)
    (propagated-inputs (list r-siggenes
                             r-rtsne
                             r-rcolorbrewer
                             r-pamr
                             r-org-hs-eg-db
                             r-msigdbr
                             r-fgsea
                             r-consensusclusterplus
                             r-clusterprofiler
                             r-cluster
                             r-annotate))
    (home-page "https://cran.r-project.org/package=AutoPipe")
    (synopsis
     "Automated Transcriptome Classifier Pipeline: Comprehensive Transcriptome Analysis")
    (description
     "An unsupervised fully-automated pipeline for transcriptome analysis or a
supervised option to identify characteristic genes from predefined subclasses.
We rely on the pamr
<http://www.bioconductor.org/packages//2.7/bioc/html/pamr.html> clustering
algorithm to cluster the Data and then draw a heatmap of the clusters with the
most significant genes and the least significant genes according to the pamr
algorithm.  This way we get easy to grasp heatmaps that show us for each cluster
which are the clusters most defining genes.")
    (license license:gpl3)))

(define-public r-autonewsmd
  (package
    (name "r-autonewsmd")
    (version "0.0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autonewsmd" version))
       (sha256
        (base32 "1wax4npyzkxjl1avgg6m275744nnpbv3qk8sbjg0dkqp58cb33lx"))))
    (properties `((upstream-name . "autonewsmd")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-quarto r-magrittr r-git2r r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kapsner/autonewsmd")
    (synopsis "Auto-Generate Changelog using Conventional Commits")
    (description
     "Automatically generate a changelog file (NEWS.md / CHANGELOG.md) from the git
history using conventional commit messages
(<https://www.conventionalcommits.org/en/v1.0.0/>).")
    (license license:gpl3)))

(define-public r-automrp
  (package
    (name "r-automrp")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autoMrP" version))
       (sha256
        (base32 "00shy2yjkhys59nvxwd0smr5bzkfrg55xq6rcmc5z7f6c07wygci"))))
    (properties `((upstream-name . "autoMrP")))
    (build-system r-build-system)
    (propagated-inputs (list r-vglmer
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-lme4
                             r-knitr
                             r-glmmlasso
                             r-ggplot2
                             r-gbm
                             r-foreach
                             r-forcats
                             r-ebmaforecast
                             r-e1071
                             r-dplyr
                             r-dorng
                             r-doparallel))
    (native-inputs (list r-r-rsp))
    (home-page "https://github.com/retowuest/autoMrP")
    (synopsis "Improving MrP with Ensemble Learning")
    (description
     "This package provides a tool that improves the prediction performance of
multilevel regression with post-stratification (@code{MrP}) by combining a
number of machine learning methods.  For information on the method, please refer
to Broniecki, WÃ¼est, Leemann (2020) Improving Multilevel Regression with
Post-Stratification Through Machine Learning (@code{autoMrP}) in the Journal of
Politics'.  Final pre-print version:
<https://lucasleemann.files.wordpress.com/2020/07/automrp-r2pa.pdf>.")
    (license license:gpl3)))

(define-public r-automl
  (package
    (name "r-automl")
    (version "1.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "automl" version))
       (sha256
        (base32 "1nrg8q3y6rv69nmnsylg8rps4b4prx46j5a8ljlr24yc34504ck3"))))
    (properties `((upstream-name . "automl")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=automl")
    (synopsis "Deep Learning with Metaheuristic")
    (description
     "Fits from simple regression to highly customizable deep neural networks either
with gradient descent or metaheuristic, using automatic hyper parameters tuning
and custom cost function.  A mix inspired by the common tricks on Deep Learning
and Particle Swarm Optimization.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-automfa
  (package
    (name "r-automfa")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autoMFA" version))
       (sha256
        (base32 "1sbcl38cq7y7hln1qffk5s71xgg9hs7dlwyvynqf96z2z2421pw4"))))
    (properties `((upstream-name . "autoMFA")))
    (build-system r-build-system)
    (propagated-inputs (list r-usethis
                             r-rfast
                             r-rdpack
                             r-pracma
                             r-matrix
                             r-mass
                             r-expm
                             r-abind))
    (home-page "https://cran.r-project.org/package=autoMFA")
    (synopsis "Algorithms for Automatically Fitting MFA Models")
    (description
     "This package provides methods for fitting the Mixture of Factor Analyzers (MFA)
model automatically.  The MFA model is a mixture model where each sub-population
is assumed to follow the Factor Analysis model.  The Factor Analysis (FA) model
is a latent variable model which assumes that observations are normally
distributed, but imposes constraints on their covariance matrix.  The MFA model
contains two hyperparameters; g (the number of components in the mixture) and q
(the number of factors in each component Factor Analysis model).  Usually, the
Expectation-Maximisation algorithm would be used to fit the MFA model, but this
requires g and q to be known.  This package treats g and q as unknowns and
provides several methods which infer these values with as little input from the
user as possible.")
    (license license:gpl3+)))

(define-public r-automagic
  (package
    (name "r-automagic")
    (version "0.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "automagic" version))
       (sha256
        (base32 "1mmm6kj6mxrn3s4v8ryszkxr9z7bh9cvhin7xjq111fkwly7wjkq"))))
    (properties `((upstream-name . "automagic")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-remotes
                             r-purrr
                             r-magrittr
                             r-knitr
                             r-formatr
                             r-dplyr))
    (home-page "https://github.com/cole-brokamp/automagic")
    (synopsis
     "Automagically Document and Install Packages Necessary to Run R Code")
    (description
     "Parse R code in a given directory for R packages and attempt to install them
from CRAN or @code{GitHub}.  Optionally use a dependencies file for tighter
control over which package versions to install.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-autokeras
  (package
    (name "r-autokeras")
    (version "1.0.12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autokeras" version))
       (sha256
        (base32 "0wyqz40fc277z1q1zxdmmjzksnmlh58r27a6hx08h6hmzvng5avy"))))
    (properties `((upstream-name . "autokeras")))
    (build-system r-build-system)
    (propagated-inputs (list r-reticulate r-keras))
    (home-page "https://github.com/r-tensorflow/autokeras")
    (synopsis "R Interface to 'AutoKeras'")
    (description
     "R Interface to @code{AutoKeras} <https://autokeras.com/>. @code{AutoKeras} is an
open source software library for Automated Machine Learning (@code{AutoML}).
The ultimate goal of @code{AutoML} is to provide easily accessible deep learning
tools to domain experts with limited data science or machine learning
background. @code{AutoKeras} provides functions to automatically search for
architecture and hyperparameters of deep learning models.")
    (license license:expat)))

(define-public r-autoimage
  (package
    (name "r-autoimage")
    (version "2.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autoimage" version))
       (sha256
        (base32 "1jhkd7mbig6wpyc69iynfrj5i62lrwcwqbgjkmq8b9p5raglm1g2"))))
    (properties `((upstream-name . "autoimage")))
    (build-system r-build-system)
    (propagated-inputs (list r-mba
                             r-maps
                             r-mapproj
                             r-ggplot2
                             r-fields
                             r-colorspace))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=autoimage")
    (synopsis "Multiple Heat Maps for Projected Coordinates")
    (description
     "This package provides functions for displaying multiple images or scatterplots
with a color scale, i.e., heat maps, possibly with projected coordinates.  The
package relies on the base graphics system, so graphics are rendered rapidly.")
    (license license:gpl2+)))

(define-public r-autohrf
  (package
    (name "r-autohrf")
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autohrf" version))
       (sha256
        (base32 "1p65rl3bm5ka2pfjni3bil9linhvr50c99sg8d5240nj9nqdylj0"))))
    (properties `((upstream-name . "autohrf")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer
                             r-magrittr
                             r-lubridate
                             r-gtools
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/demsarjure/autohrf")
    (synopsis
     "Automated Generation of Data-Informed GLM Models in Task-Based fMRI Data Analysis")
    (description
     "Analysis of task-related functional magnetic resonance imaging (@code{fMRI})
activity at the level of individual participants is commonly based on general
linear modelling (GLM) that allows us to estimate to what extent the blood
oxygenation level dependent (BOLD) signal can be explained by task response
predictors specified in the GLM model.  The predictors are constructed by
convolving the hypothesised timecourse of neural activity with an assumed
hemodynamic response function (HRF).  To get valid and precise estimates of task
response, it is important to construct a model of neural activity that best
matches actual neuronal activity.  The construction of models is most often
driven by predefined assumptions on the components of brain activity and their
duration based on the task design and specific aims of the study.  However, our
assumptions about the onset and duration of component processes might be wrong
and can also differ across brain regions.  This can result in inappropriate or
suboptimal models, bad fitting of the model to the actual data and invalid
estimations of brain activity.  Here we present an approach in which
theoretically driven models of task response are used to define constraints
based on which the final model is derived computationally using the actual data.
 Specifically, we developed autohrf â a package for the R programming language
that allows for data-driven estimation of HRF models.  The package uses genetic
algorithms to efficiently search for models that fit the underlying data well.
The package uses automated parameter search to find the onset and duration of
task predictors which result in the highest fitness of the resulting GLM based
on the @code{fMRI} signal under predefined restrictions.  We evaluate the
usefulness of the autohrf package on publicly available datasets of task-related
@code{fMRI} activity.  Our results suggest that by using autohrf users can find
better task related brain activity models in a quick and efficient manner.")
    (license license:gpl3+)))

(define-public r-autoharp
  (package
    (name "r-autoharp")
    (version "0.0.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autoharp" version))
       (sha256
        (base32 "0jn7nya4lb1pvdy7yyimxga4gn042jqwl3w82m6c244kqydm5fi0"))))
    (properties `((upstream-name . "autoharp")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-shiny
                             r-rmarkdown
                             r-rlang
                             r-pryr
                             r-magrittr
                             r-lintr
                             r-knitr
                             r-igraph
                             r-dplyr))
    (home-page "https://singator.github.io/autoharp-docs/")
    (synopsis "Semi-Automatic Grading of R and Rmd Scripts")
    (description
     "This package provides a customisable set of tools for assessing and grading R or
R-markdown scripts from students.  It allows for checking correctness of code
output, runtime statistics and static code analysis.  The latter feature is made
possible by representing R expressions using a tree structure.")
    (license license:expat)))

(define-public r-autogo
  (package
    (name "r-autogo")
    (version "0.9.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autoGO" version))
       (sha256
        (base32 "19gy5gk214vqnil2wky2fpia1dlhcc4vwnws4fl2f0xq9as2nrq9"))))
    (properties `((upstream-name . "autoGO")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-textshape
                             r-summarizedexperiment
                             r-stringr
                             r-reshape2
                             r-readr
                             r-rcolorbrewer
                             r-purrr
                             r-openxlsx
                             r-imgur
                             r-gsva
                             r-ggrepel
                             r-ggplot2
                             r-enrichr
                             r-dplyr
                             r-dichromat
                             r-deseq2
                             r-complexheatmap
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=autoGO")
    (synopsis
     "Auto-GO: Reproducible, Robust and High Quality Ontology Enrichment Visualizations")
    (description
     "Auto-GO is a framework that enables automated, high quality Gene Ontology
enrichment analysis visualizations.  It also features a handy wrapper for
Differential Expression analysis around the DESeq2 package described in Love et
al. (2014) <doi:10.1186/s13059-014-0550-8>.  The whole framework is structured
in different, independent functions, in order to let the user decide which steps
of the analysis to perform and which plot to produce.")
    (license license:expat)))

(define-public r-autofrk
  (package
    (name "r-autofrk")
    (version "1.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autoFRK" version))
       (sha256
        (base32 "1k3h2gsck06dnvrifg9rhxi6b3fwfjrkvg0q2wzb9kdnnzgiwcln"))))
    (properties `((upstream-name . "autoFRK")))
    (build-system r-build-system)
    (propagated-inputs (list r-spam
                             r-rspectra
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-mgcv
                             r-mass
                             r-latticekrig
                             r-fnn
                             r-filematrix
                             r-filehashsqlite
                             r-filehash
                             r-fields))
    (home-page "https://cran.r-project.org/package=autoFRK")
    (synopsis "Automatic Fixed Rank Kriging")
    (description
     "Automatic fixed rank kriging for (irregularly located) spatial data using a
class of basis functions with multi-resolution features and ordered in terms of
their resolutions.  The model parameters are estimated by maximum likelihood
(ML) and the number of basis functions is determined by Akaike's information
criterion (AIC).  For spatial data with either one realization or independent
replicates, the ML estimates and AIC are efficiently computed using their
closed-form expressions when no missing value occurs.  Details regarding the
basis function construction, parameter estimation, and AIC calculation can be
found in Tzeng and Huang (2018) <doi:10.1080/00401706.2017.1345701>.  For data
with missing values, the ML estimates are obtained using the expectation-
maximization algorithm.  Apart from the number of basis functions, there are no
other tuning parameters, making the method fully automatic.  Users can also
include a stationary structure in the spatial covariance, which utilizes
@code{LatticeKrig} package.")
    (license license:gpl2+)))

(define-public r-autofc
  (package
    (name "r-autofc")
    (version "0.2.0.1001")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autoFC" version))
       (sha256
        (base32 "08q3d2gcjwg36wy7lk8bkhv9i8cayckayslx30zbkypbhabh8bqm"))))
    (properties `((upstream-name . "autoFC")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-thurstonianirt
                             r-simdesign
                             r-mplusautomation
                             r-mass
                             r-lavaan
                             r-irrcac
                             r-glue
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tspsyched/autoFC")
    (synopsis "Automatic Construction of Forced-Choice Tests")
    (description
     "Forced-choice (FC) response has gained increasing popularity and interest for
its resistance to faking when well-designed (Cao & Drasgow, 2019
<doi:10.1037/apl0000414>).  To established well-designed FC scales, typically
each item within a block should measure different trait and have similar level
of social desirability (Zhang et al., 2020 <doi:10.1177/1094428119836486>).
Recent study also suggests the importance of high inter-item agreement of social
desirability between items within a block (Pavlov et al., 2021
<doi:10.31234/osf.io/hmnrc>).  In addition to this, FC developers may also need
to maximize factor loading differences (Brown & Maydeu-Olivares, 2011
<doi:10.1177/0013164410375112>) or minimize item location differences (Cao &
Drasgow, 2019 <doi:10.1037/apl0000414>) depending on scoring models.  Decision
of which items should be assigned to the same block, termed item pairing, is
thus critical to the quality of an FC test.  This pairing process is essentially
an optimization process which is currently carried out manually.  However, given
that we often need to simultaneously meet multiple objectives, manual pairing
becomes impractical or even not feasible once the number of latent traits and/or
number of items per trait are relatively large.  To address these problems,
@code{autoFC} is developed as a practical tool for facilitating the automatic
construction of FC tests (Li et al., 2022 <doi:10.1177/01466216211051726>),
essentially exempting users from the burden of manual item pairing and reducing
the computational costs and biases induced by simple ranking methods.  Given
characteristics of each item (and item responses), FC measures can be
constructed either automatically based on user-defined pairing criteria and
weights, or based on exact specifications of each block (i.e., blueprint; see Li
et al., 2024 <doi:10.1177/10944281241229784>).  Users can also generate
simulated responses based on the Thurstonian Item Response Theory model (Brown &
Maydeu-Olivares, 2011 <doi:10.1177/0013164410375112>) and predict trait scores
of simulated/actual respondents based on an estimated model.")
    (license license:gpl3)))

(define-public r-autoensemble
  (package
    (name "r-autoensemble")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autoEnsemble" version))
       (sha256
        (base32 "106hfhc5hp6v51drkhrv8dgxflqx8rljn6l91cy8hf6h3m0qy5x2"))))
    (properties `((upstream-name . "autoEnsemble")))
    (build-system r-build-system)
    (propagated-inputs (list r-h2otools r-h2o r-curl))
    (home-page "https://github.com/haghish/autoEnsemble")
    (synopsis
     "Automated Stacked Ensemble Classifier for Severe Class Imbalance")
    (description
     "An @code{AutoML} algorithm is developed to construct homogeneous or
heterogeneous stacked ensemble models using specified base-learners.  Various
criteria are employed to identify optimal models, enhancing diversity among them
and resulting in more robust stacked ensembles.  The algorithm optimizes the
model by incorporating an increasing number of top-performing models to create a
diverse combination.  Presently, only models from h2o.ai are supported.")
    (license license:expat)))

(define-public r-autodeskr
  (package
    (name "r-autodeskr")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AutoDeskR" version))
       (sha256
        (base32 "1n7c8ris8b517bs1wahpvrhwfbvn2q4jbq01kgiv9lfmkjckzfkc"))))
    (properties `((upstream-name . "AutoDeskR")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/paulgovan/autodeskr")
    (synopsis "An Interface to the 'AutoDesk' 'API' Platform")
    (description
     "An interface to the @code{AutoDesk} API Platform including the Authentication
API for obtaining authentication to the @code{AutoDesk} Forge Platform, Data
Management API for managing data across the platform's cloud services, Design
Automation API for performing automated tasks on design files in the cloud,
Model Derivative API for translating design files into different formats,
sending them to the viewer app, and extracting design data, and Viewer for
rendering 2D and 3D models (see <https://developer.autodesk.com> for more
information).")
    (license (list (license:fsdg-compatible "Apache License")
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-autocovariateselection
  (package
    (name "r-autocovariateselection")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autoCovariateSelection" version))
       (sha256
        (base32 "0s9ar7bmw0n84hvavp63zhm6769l9p88md0kqqcxl0mw67j8q930"))))
    (properties `((upstream-name . "autoCovariateSelection")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr r-dplyr r-data-table))
    (home-page "https://github.com/technOslerphile/autoCovariateSelection")
    (synopsis "Automated Covariate Selection Using HDPS Algorithm")
    (description
     "This package contains functions to implement automated covariate selection using
methods described in the high-dimensional propensity score (HDPS) algorithm by
Schneeweiss et.al.  Covariate adjustment in real-world-observational-data (RWD)
is important for for estimating adjusted outcomes and this can be done by using
methods such as, but not limited to, propensity score matching, propensity score
weighting and regression analysis.  While these methods strive to statistically
adjust for confounding, the major challenge is in selecting the potential
covariates that can bias the outcomes comparison estimates in observational RWD
(Real-World-Data).  This is where the utility of automated covariate selection
comes in.  The functions in this package help to implement the three major steps
of automated covariate selection as described by Schneeweiss et.  al elsewhere.
These three functions, in order of the steps required to execute automated
covariate selection are, get_candidate_covariates(), get_recurrence_covariates()
and get_prioritised_covariates().  In addition to these functions, a sample
real-world-data from publicly available de-identified medical claims data is
also available for running examples and also for further exploration.  The
original article where the algorithm is described by Schneeweiss et.al. (2009)
<doi:10.1097/EDE.0b013e3181a663cc> .")
    (license license:expat)))

(define-public r-autocogs
  (package
    (name "r-autocogs")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autocogs" version))
       (sha256
        (base32 "0v27l9a0ysj7x9wjka1jl1bq9rmxmzldclcp1w59a6807wjlszhx"))))
    (properties `((upstream-name . "autocogs")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-progress
                             r-moments
                             r-mclust
                             r-mass
                             r-hexbin
                             r-ggplot2
                             r-dplyr
                             r-diptest
                             r-checkmate
                             r-broom))
    (home-page "https://github.com/schloerke/autocogs")
    (synopsis "Automatic Cognostic Summaries")
    (description
     "Automatically calculates cognostic groups for plot objects and list column plot
objects.  Results are returned in a nested data frame.")
    (license license:expat)))

(define-public r-autobagging
  (package
    (name "r-autobagging")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "autoBagging" version))
       (sha256
        (base32 "01k44rgkpbbr3m2x360aq0fz2qi7nz036g5dsh2y3jy94rmddbyy"))))
    (properties `((upstream-name . "autoBagging")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost
                             r-rpart
                             r-party
                             r-minerva
                             r-mass
                             r-lsr
                             r-infotheo
                             r-entropy
                             r-e1071
                             r-corelearn
                             r-cluster
                             r-caret
                             r-abind))
    (home-page "https://cran.r-project.org/package=autoBagging")
    (synopsis "Learning to Rank Bagging Workflows with Metalearning")
    (description
     "This package provides a framework for automated machine learning.  Concretely,
the focus is on the optimisation of bagging workflows.  A bagging workflows is
composed by three phases: (i) generation: which and how many predictive models
to learn; (ii) pruning: after learning a set of models, the worst ones are cut
off from the ensemble; and (iii) integration: how the models are combined for
predicting a new observation. @code{autoBagging} optimises these processes by
combining metalearning and a learning to rank approach to learn from metadata.
It automatically ranks 63 bagging workflows by exploiting past performance and
dataset characterization.  A complete description of the method can be found in:
Pinto, F., Cerqueira, V., Soares, C., Mendes-Moreira, J. (2017):
\"@code{autoBagging}: Learning to Rank Bagging Workflows with Metalearning\"
@code{arXiv} preprint @code{arXiv:1706.09367}.")
    (license license:gpl2+)))

(define-public r-autoads
  (package
    (name "r-autoads")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AutoAds" version))
       (sha256
        (base32 "0w2v13bs4fjhavn38prsld972lygj8j9nilxy4lly3f9bc97hnj3"))))
    (properties `((upstream-name . "AutoAds")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-ggplot2 r-forecast))
    (home-page "https://cran.r-project.org/package=AutoAds")
    (synopsis "Advertisement Metrics Calculation")
    (description
     "Calculations of the most common metrics of automated advertisement and plotting
of them with trend and forecast.  Calculations and description of metrics is
taken from different RTB platforms support documentation.  Plotting and
forecasting is based on packages forecast', described in Rob J Hyndman and
George Athanasopoulos (2021) \"Forecasting: Principles and Practice\"
<https://otexts.com/fpp3/> and Rob J Hyndman et al \"Documentation for forecast'\"
(2003) <https://pkg.robjhyndman.com/forecast/>, and ggplot2', described in
Hadley Wickham et al \"Documentation for ggplot2'\" (2015)
<https://ggplot2.tidyverse.org/>, and Hadley Wickham, Danielle Navarro, and
Thomas Lin Pedersen (2015) \"ggplot2: Elegant Graphics for Data Analysis\"
<https://ggplot2-book.org/>.")
    (license license:expat)))

(define-public r-auto-pca
  (package
    (name "r-auto-pca")
    (version "0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "auto.pca" version))
       (sha256
        (base32 "01m2ldpcxzj7fhgmr9wp4ha3gqdyh7l5bkrnw83smcbq5229hsyy"))))
    (properties `((upstream-name . "auto.pca")))
    (build-system r-build-system)
    (propagated-inputs (list r-psych r-plyr))
    (home-page "https://cran.r-project.org/package=auto.pca")
    (synopsis
     "Automatic Variable Reduction Using Principal Component Analysis")
    (description
     "PCA done by eigenvalue decomposition of a data correlation matrix, here it
automatically determines the number of factors by eigenvalue greater than 1 and
it gives the uncorrelated variables based on the rotated component scores, Such
that in each principal component variable which has the high variance are
selected.  It will be useful for non-statisticians in selection of variables.
For more information, see the
<http://www.ijcem.org/papers032013/ijcem_032013_06.pdf> web page.")
    (license license:gpl2)))

(define-public r-auth0
  (package
    (name "r-auth0")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "auth0" version))
       (sha256
        (base32 "0pbnxq2f0bpj1gz8yn3wj3qn03dl08l7754k0ys7s49w2isx9y3h"))))
    (properties `((upstream-name . "auth0")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml r-shinyjs r-shiny r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://curso-r.github.io/auth0/")
    (synopsis "Authentication in Shiny with Auth0")
    (description
     "Uses Auth0 API (see <https://auth0.com> for more information) to use a simple
authentication system.  It provides tools to log in and out a shiny application
using social networks or a list of e-mails.")
    (license license:expat)))

(define-public r-autests
  (package
    (name "r-autests")
    (version "0.99")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AUtests" version))
       (sha256
        (base32 "0ima350mjlqvij6f9xy6wfcibvlji7nh0prpqngj7apn82ri4m2k"))))
    (properties `((upstream-name . "AUtests")))
    (build-system r-build-system)
    (propagated-inputs (list r-logistf))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AUtests")
    (synopsis "Approximate Unconditional and Permutation Tests")
    (description
     "This package performs approximate unconditional and permutation testing for 2x2
contingency tables.  Motivated by testing for disease association with rare
genetic variants in case-control studies.  When variants are extremely rare,
these tests give better control of Type I error than standard tests.")
    (license license:gpl2)))

(define-public r-australianpoliticians
  (package
    (name "r-australianpoliticians")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AustralianPoliticians" version))
       (sha256
        (base32 "1ws0fry00xckxgbagp069fcmnbcrcnsvs9v5jizp1xs791ij0njv"))))
    (properties `((upstream-name . "AustralianPoliticians")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-readr r-purrr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RohanAlexander/AustralianPoliticians")
    (synopsis "Provides Datasets About Australian Politicians")
    (description
     "This package provides access to biographical and political data about Australian
federal politicians who served between 1901 and 2021.  This enhances how
reproducible research is that uses this data.")
    (license license:expat)))

(define-public r-ausplotsr
  (package
    (name "r-ausplotsr")
    (version "2.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ausplotsR" version))
       (sha256
        (base32 "0zxzxzhhdmzcvn2kvvmkgrizyx73h4wc7daysjsp54zv8krlh4x9"))))
    (properties `((upstream-name . "ausplotsR")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-stringr
                             r-r2r
                             r-r-utils
                             r-progress
                             r-plyr
                             r-mapdata
                             r-jsonlite
                             r-jose
                             r-httr
                             r-gtools
                             r-ggplot2
                             r-curl
                             r-betapart))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ausplotsR")
    (synopsis "TERN AusPlots Australian Ecosystem Monitoring Data")
    (description
     "Extraction, preparation, visualisation and analysis of TERN @code{AusPlots}
ecosystem monitoring data.  Direct access to plot-based data on vegetation and
soils across Australia, including physical sample barcode numbers.  Simple
function calls extract the data and merge them into species occurrence matrices
for downstream analysis, or calculate things like basal area and fractional
cover.  TERN @code{AusPlots} is a national field plot-based ecosystem
surveillance monitoring method and dataset for Australia.  The data have been
collected across a national network of plots and transects by the Terrestrial
Ecosystem Research Network (TERN - <https://www.tern.org.au>), an Australian
Government NCRIS-enabled project, and its Ecosystem Surveillance platform
(<https://www.tern.org.au/tern-land-observatory/ecosystem-surveillance-and-environmental-monitoring/>).")
    (license license:gpl3)))

(define-public r-auroc
  (package
    (name "r-auroc")
    (version "0.2-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "auRoc" version))
       (sha256
        (base32 "152jdvzigcplii5amj0mnral3g2jyy3rfsc745mx36sspw1396yx"))))
    (properties `((upstream-name . "auRoc")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjags r-probyx r-mbess r-coda))
    (home-page "https://cran.r-project.org/package=auRoc")
    (synopsis "Various Methods to Estimate the AUC")
    (description
     "Estimate the AUC using a variety of methods as follows: (1) frequentist
nonparametric methods based on the Mann-Whitney statistic or kernel methods. (2)
frequentist parametric methods using the likelihood ratio test based on
higher-order asymptotic results, the signed log-likelihood ratio test, the Wald
test, or the approximate t solution to the Behrens-Fisher problem. (3) Bayesian
parametric MCMC methods.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-aurielshgaussian
  (package
    (name "r-aurielshgaussian")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AurieLSHGaussian" version))
       (sha256
        (base32 "0dzwqv396inbx4r6758vr4gip1y42ahavspadgm4xhafvipg73rb"))))
    (properties `((upstream-name . "AurieLSHGaussian")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringdist r-reshape2 r-lsa r-igraph
                             r-flexclust))
    (home-page "https://cran.r-project.org/package=AurieLSHGaussian")
    (synopsis
     "Creates a Neighbourhood Using Locality Sensitive Hashing for Gaussian Projections")
    (description
     "Uses locality sensitive hashing and creates a neighbourhood graph for a data set
and calculates the adjusted rank index value for the same.  It uses Gaussian
random planes to decide the nature of a given point.  Datar, Mayur, Nicole
Immorlica, Piotr Indyk, and Vahab S. Mirrokni(2004) <doi:10.1145/997817.997857>.")
    (license license:gpl2)))

(define-public r-aum
  (package
    (name "r-aum")
    (version "2024.6.19")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aum" version))
       (sha256
        (base32 "0ybvjp7mwwji1ybf4br7y3l20fccg6sl70wjgc5ii8qa4sgr9hq4"))))
    (properties `((upstream-name . "aum")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tdhock/aum")
    (synopsis "Area Under Minimum of False Positives and Negatives")
    (description
     "Efficient algorithms <https://jmlr.org/papers/v24/21-0751.html> for computing
Area Under Minimum, directional derivatives, and line search optimization of a
linear model, with objective defined as either max Area Under the Curve or min
Area Under Minimum.")
    (license license:gpl3)))

(define-public r-auk
  (package
    (name "r-auk")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "auk" version))
       (sha256
        (base32 "055blr0pbhjy0c20xh21pl1cndvxy742hmn4nlddzvd1phknfkzz"))))
    (properties `((upstream-name . "auk")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-stringi
                             r-rlang
                             r-readr
                             r-magrittr
                             r-httr
                             r-dplyr
                             r-countrycode
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/CornellLabofOrnithology/auk")
    (synopsis "eBird Data Extraction and Processing in R")
    (description
     "Extract and process bird sightings records from @code{eBird}
(<http://ebird.org>), an online tool for recording bird observations.  Public
access to the full @code{eBird} database is via the @code{eBird} Basic Dataset
(EBD; see <http://ebird.org/ebird/data/download> for access), a downloadable
text file.  This package is an interface to AWK for extracting data from the EBD
based on taxonomic, spatial, or temporal filters, to produce a manageable file
size that can be imported into R.")
    (license license:gpl3)))

(define-public r-augsimex
  (package
    (name "r-augsimex")
    (version "3.7.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "augSIMEX" version))
       (sha256
        (base32 "0620yxqi160ar91shl5macn890zpc60c9nqy4w8i6m7sskv6gl3z"))))
    (properties `((upstream-name . "augSIMEX")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-nleqslv r-mass r-formula))
    (home-page "https://cran.r-project.org/package=augSIMEX")
    (synopsis
     "Analysis of Data with Mixed Measurement Error and Misclassification in Covariates")
    (description
     "Implementation of the augmented Simulation-Extrapolation (SIMEX) algorithm
proposed by Yi et al. (2015) <doi:10.1080/01621459.2014.922777> for analyzing
the data with mixed measurement error and misclassification.  The main function
provides a similar summary output as that of glm() function.  Both parametric
and empirical SIMEX are considered in the package.")
    (license license:gpl2+)))

(define-public r-augmentedrcbd
  (package
    (name "r-augmentedrcbd")
    (version "0.1.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "augmentedRCBD" version))
       (sha256
        (base32 "1gnl6i81m5w7hxi147ycr963sm661xscw0xb6wm9vcr043ddvx3p"))))
    (properties `((upstream-name . "augmentedRCBD")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi
                             r-reshape2
                             r-rdpack
                             r-openxlsx
                             r-officer
                             r-numform
                             r-multcompview
                             r-multcomp
                             r-moments
                             r-mathjaxr
                             r-ggplot2
                             r-flextable
                             r-emmeans
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=augmentedRCBD")
    (synopsis "Analysis of Augmented Randomised Complete Block Designs")
    (description
     "This package provides functions for analysis of data generated from experiments
in augmented randomised complete block design according to Federer, W.T. (1961)
<doi:10.2307/2527837>.  Computes analysis of variance, adjusted means,
descriptive statistics, genetic variability statistics etc.  Further includes
data visualization and report generation functions.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-audubon
  (package
    (name "r-audubon")
    (version "0.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "audubon" version))
       (sha256
        (base32 "1j6v05qal9f6ci1awb5c1vdl59sdp0472kdm5azvjsibic6bi2m8"))))
    (properties `((upstream-name . "audubon")))
    (build-system r-build-system)
    (propagated-inputs (list r-v8
                             r-stringi
                             r-rlang
                             r-readr
                             r-purrr
                             r-memoise
                             r-matrix
                             r-magrittr
                             r-dplyr))
    (home-page "https://github.com/paithiov909/audubon")
    (synopsis "Japanese Text Processing Tools")
    (description
     "This package provides a collection of Japanese text processing tools for filling
Japanese iteration marks, Japanese character type conversions, segmentation by
phrase, and text normalization which is based on rules for the Sudachi
morphological analyzer and the NEologd (Neologism dictionary for @code{MeCab}').
 These features are specific to Japanese and are not implemented in ICU
(International Components for Unicode).")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-audrex
  (package
    (name "r-audrex")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "audrex" version))
       (sha256
        (base32 "1ifijkbqvdjp1si14p80mbqhq7sby8qgzr181agm3da1nkmic3vp"))))
    (properties `((upstream-name . "audrex")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost
                             r-tictoc
                             r-stringr
                             r-scales
                             r-readr
                             r-rbayesianoptimization
                             r-purrr
                             r-narray
                             r-moments
                             r-modeest
                             r-metrics
                             r-lubridate
                             r-imputets
                             r-ggplot2
                             r-fancova))
    (home-page "https://rpubs.com/giancarlo_vercellino/audrex")
    (synopsis "Automatic Dynamic Regression using Extreme Gradient Boosting")
    (description
     "Dynamic regression for time series using Extreme Gradient Boosting with
hyper-parameter tuning via Bayesian Optimization or Random Search.")
    (license license:gpl3)))

(define-public r-auditor
  (package
    (name "r-auditor")
    (version "1.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "auditor" version))
       (sha256
        (base32 "04fhgz04gl0hjw2vjymhi9pirc82pshlpv8nif8l3zclpgl795lq"))))
    (properties `((upstream-name . "auditor")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-hnp
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-dalex))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ModelOriented/auditor")
    (synopsis "Model Audit - Verification, Validation, and Error Analysis")
    (description
     "This package provides an easy to use unified interface for creating validation
plots for any model.  The auditor helps to avoid repetitive work consisting of
writing code needed to create residual plots.  This visualizations allow to
asses and compare the goodness of fit, performance, and similarity of models.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-audit
  (package
    (name "r-audit")
    (version "0.1-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "audit" version))
       (sha256
        (base32 "0c8b94a5am196sbvmjxya7cg4aq6fcxr8c958fxx3jmy9r4hn6s2"))))
    (properties `((upstream-name . "audit")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=audit")
    (synopsis "Bounds for Accounting Populations")
    (description
     "Find an upper bound for the total amount of overstatement of assets in a set of
accounts, or estimate the amount of sales tax owed on a collection of
transactions (Meeden and Sargent, 2007, <doi:10.1080/03610920701386802>).")
    (license license:expat)))

(define-public r-audiometry
  (package
    (name "r-audiometry")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "audiometry" version))
       (sha256
        (base32 "0v6lhkm298xgdny0fhpldfwj8s4ljr21w6y6sv3vvyl87qjgwx8i"))))
    (properties `((upstream-name . "audiometry")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=audiometry")
    (synopsis "Standard Conform Pure Tone Audiometry (PTA) Plots")
    (description
     "Facilitates plotting audiometric data (mostly) by preparing the coordinate
system according to standards, given e.  g.  in American Speech-Language-Hearing
Association (2005), <doi:10.1044/policy.GL2005-00014>.")
    (license license:gpl3)))

(define-public r-audio
  (package
    (name "r-audio")
    (version "0.1-11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "audio" version))
       (sha256
        (base32 "0z719jxmfzmh6c885m1yixjzdsl1wy17s1sw2hp4ppz4bcrzclhh"))))
    (properties `((upstream-name . "audio")))
    (build-system r-build-system)
    (native-inputs (list pkg-config))
    (home-page "http://www.rforge.net/audio/")
    (synopsis "Audio Interface for R")
    (description
     "Interfaces to audio devices (mainly sample-based) from R to allow recording and
playback of audio.  Built-in devices include Windows MM, Mac OS X
@code{AudioUnits} and @code{PortAudio} (the last one is very experimental).")
    (license license:expat)))

(define-public r-auctionr
  (package
    (name "r-auctionr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "auctionr" version))
       (sha256
        (base32 "0kfx81irqr9mfp4n86z7q5nclcci8vlpvq9zid7miyw3rci7dfvi"))))
    (properties `((upstream-name . "auctionr")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ajmack/auctionr")
    (synopsis "Estimate First-Price Auction Model")
    (description
     "Estimates a first-price auction model with conditionally independent private
values as described in @code{MacKay} (2020) <doi:10.2139/ssrn.3096534>.  The
model allows for unobserved heterogeneity that is common to all bidders in
addition to observable heterogeneity.")
    (license license:gpl3)))

(define-public r-auctestr
  (package
    (name "r-auctestr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "auctestr" version))
       (sha256
        (base32 "15b1x0c9yhl91gir7jmivp8vxzc8q7wvb0mgam9454avc6l29x4y"))))
    (properties `((upstream-name . "auctestr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=auctestr")
    (synopsis "Statistical Testing for AUC Data")
    (description
     "This package performs statistical testing to compare predictive models based on
multiple observations of the A statistic (also known as Area Under the Receiver
Operating Characteristic Curve, or AUC).  Specifically, it implements a testing
method based on the equivalence between the A statistic and the Wilcoxon
statistic.  For more information, see Hanley and @code{McNeil} (1982)
<doi:10.1148/radiology.143.1.7063747>.")
    (license license:expat)))

(define-public r-attrib
  (package
    (name "r-attrib")
    (version "2021.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "attrib" version))
       (sha256
        (base32 "17s3hjp8zdl28y4h9iv854y1hli5yg1h0kqhj8v5hms1lhx7c1qq"))))
    (properties `((upstream-name . "attrib")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsmodel
                             r-tibble
                             r-stringr
                             r-progress
                             r-pbs
                             r-mvmeta
                             r-magrittr
                             r-lubridate
                             r-lme4
                             r-glue
                             r-ggplot2
                             r-dlnm
                             r-data-table
                             r-arm))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=attrib")
    (synopsis "Attributable Burden of Disease")
    (description
     "This package provides functions for estimating the attributable burden of
disease due to risk factors.  The posterior simulation is performed using
arm::sim as described in Gelman, Hill (2012) <doi:10.1017/CBO9780511790942> and
the attributable burden method is based on Nielsen, Krause, Molbak
<doi:10.1111/irv.12564>.")
    (license license:expat)))

(define-public r-attenuation
  (package
    (name "r-attenuation")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "attenuation" version))
       (sha256
        (base32 "0ys4psvkvimmym4qj9cmhq8y7x10kv0x6bsvpjkrsc3l8p2g3474"))))
    (properties `((upstream-name . "attenuation")))
    (build-system r-build-system)
    (home-page "https://github.com/JonasMoss/attenuation/")
    (synopsis "Correcting for Attenuation Due to Measurement Error")
    (description
     "Confidence curves, confidence intervals and p-values for correlation
coefficients corrected for attenuation due to measurement error.  Implements the
methods described in Moss (2019, <arxiv:1911.01576>).")
    (license license:expat)))

(define-public r-attention
  (package
    (name "r-attention")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "attention" version))
       (sha256
        (base32 "09c83dqdrnwxqzh3cbnyyf3y4a2qnj0lvm66iishhg58zdrz92q3"))))
    (properties `((upstream-name . "attention")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=attention")
    (synopsis "Self-Attention Algorithm")
    (description
     "Self-Attention algorithm helper functions and demonstration vignettes of
increasing depth on how to construct the Self-Attention algorithm, this is based
on Vaswani et al. (2017) <doi:10.48550/@code{arXiv.1706.03762>}, Dan Jurafsky
and James H. Martin (2022, ISBN:978-0131873216)
<https://web.stanford.edu/~jurafsky/slp3/> \"Speech and Language Processing (3rd
ed.)\" and Alex Graves (2020)
<https://www.youtube.com/watch?v=A@code{IiwuClvH6k>} \"Attention and Memory in
Deep Learning\".")
    (license license:gpl3+)))

(define-public r-attachment
  (package
    (name "r-attachment")
    (version "0.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "attachment" version))
       (sha256
        (base32 "1plc7mplqky5als8gzp01g55378smikxx6l42b2xyp9knxxprysg"))))
    (properties `((upstream-name . "attachment")))
    (build-system r-build-system)
    (arguments
     (list
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
    (propagated-inputs (list r-yaml
                             r-withr
                             r-stringr
                             r-roxygen2
                             r-rmarkdown
                             r-magrittr
                             r-knitr
                             r-glue
                             r-desc
                             r-cli))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://thinkr-open.github.io/attachment/")
    (synopsis "Deal with Dependencies")
    (description
     "Manage dependencies during package development.  This can retrieve all
dependencies that are used in \".R\" files in the \"R/\" directory, in \".Rmd\" files
in \"vignettes/\" directory and in roxygen2 documentation of functions.  There is
a function to update the \"DESCRIPTION\" file of your package with CRAN packages
or any other remote package.  All functions to retrieve dependencies of \".R\"
scripts and \".Rmd\" or \".qmd\" files can be used independently of a package
development.")
    (license license:gpl3)))

(define-public r-atsa
  (package
    (name "r-atsa")
    (version "3.1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aTSA" version))
       (sha256
        (base32 "1kzkpbiycpdc07kb0j5yhjx9bjpn1s7zh0h3fgwghg071yqkd4if"))))
    (properties `((upstream-name . "aTSA")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=aTSA")
    (synopsis "Alternative Time Series Analysis")
    (description
     "This package contains some tools for testing, analyzing time series data and
fitting popular time series models such as ARIMA, Moving Average and Holt
Winters, etc.  Most functions also provide nice and clear outputs like SAS does,
such as identify, estimate and forecast, which are the same statements in PROC
ARIMA in SAS.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-atrrr
  (package
    (name "r-atrrr")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "atrrr" version))
       (sha256
        (base32 "1y965xpipmd23c0a7rp14v8kw0n6bvxq20rq6ribl1rx5xjd2fhl"))))
    (properties `((upstream-name . "atrrr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-snakecase
                             r-rlang
                             r-purrr
                             r-httr2
                             r-glue
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://jbgruber.github.io/atrrr/")
    (synopsis "Wrapper for the 'AT' Protocol Behind 'Bluesky'")
    (description
     "Wraps the AT Protocol (Authenticated Transfer Protocol) behind Bluesky
<https://bsky.social>.  Functions can be used for, among others, retrieving
posts and followers from the network or posting content.")
    (license license:expat)))

(define-public r-atrisk
  (package
    (name "r-atrisk")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "atRisk" version))
       (sha256
        (base32 "17rs5jjk4av4b6qv14yl5qcnrjxms0va6alhdjxyln4hwrrd97km"))))
    (properties `((upstream-name . "atRisk")))
    (build-system r-build-system)
    (propagated-inputs (list r-sn r-quantreg r-ggridges r-ggplot2 r-dfoptim))
    (home-page "https://cran.r-project.org/package=atRisk")
    (synopsis "At-Risk")
    (description
     "The at-Risk (@code{aR}) approach is based on a two-step parametric estimation
procedure that allows to forecast the full conditional distribution of an
economic variable at a given horizon, as a function of a set of factors.  These
density forecasts are then be used to produce coherent forecasts for any
downside risk measure, e.g., value-at-risk, expected shortfall, downside
entropy.  Initially introduced by Adrian et al. (2019)
<doi:10.1257/aer.20161923> to reveal the vulnerability of economic growth to
financial conditions, the @code{aR} approach is currently extensively used by
international financial institutions to provide Value-at-Risk (@code{VaR}) type
forecasts for GDP growth (Growth-at-Risk) or inflation (Inflation-at-Risk).
This package provides methods for estimating these models.  Datasets for the US
and the Eurozone are available to allow testing of the Adrian et al. (2019)
model.  This package constitutes a useful toolbox (data and functions) for
private practitioners, scholars as well as policymakers.")
    (license license:gpl3)))

(define-public r-atr
  (package
    (name "r-atr")
    (version "0.1-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ATR" version))
       (sha256
        (base32 "0via7zm3byzbdgrfw351fqvx0g5cj2z31bqfwh7kr99nqgjh0dyn"))))
    (properties `((upstream-name . "ATR")))
    (build-system r-build-system)
    (propagated-inputs (list r-partykit))
    (home-page "https://cran.r-project.org/package=ATR")
    (synopsis "Alternative Tree Representation")
    (description
     "Plot party trees in left-right orientation instead of the classical top-down
layout.")
    (license license:gpl2)))

(define-public r-atq
  (package
    (name "r-atq")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ATQ" version))
       (sha256
        (base32 "1hj1phyr8mr7xfbaizmsfh5j36paa6xlyg83v4vryplikba617gm"))))
    (properties `((upstream-name . "ATQ")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-scales
                             r-rlang
                             r-purrr
                             r-gridextra
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vjoshy/ATQ_Surveillance_Package")
    (synopsis "Alert Time Quality - Evaluating Timely Epidemic Metrics")
    (description
     "This package provides tools for evaluating timely epidemic detection models
within school absenteeism-based surveillance systems.  Introduces the concept of
alert time quality as an evaluation metric.  Includes functions to simulate
populations, epidemics, and alert metrics associated with epidemic spread using
population census data.  The methods are based on research published in
Vanderkruk et al. (2023) <doi:10.1186/s12889-023-15747-z> and Ward et al. (2019)
<doi:10.1186/s12889-019-7521-7>.")
    (license license:gpl3+)))

(define-public r-atpolr
  (package
    (name "r-atpolr")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "atpolR" version))
       (sha256
        (base32 "1mi2xghd5vxy6qx621dihx70wk3w1nqvm2h3j2drrb84b8zbvcvh"))))
    (properties `((upstream-name . "atpolR")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra r-stringr r-sf r-rdpack))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/gsapijaszko/atpolR")
    (synopsis "ATPOL Grid Implementation")
    (description
     "ATPOL is a rectangular grid system used for botanical studies in Poland.  The
ATPOL grid was developed in Institute of Botany, Jagiellonian University,
Krakow, Poland in 70.  Since then it is widely used to represent distribution of
plants in Poland. @code{atpolR} provides functions to translate geographic
coordinates to the grid and vice versa.  It also allows to create a choreograph
map.")
    (license license:gpl3)))

(define-public r-atom4r
  (package
    (name "r-atom4r")
    (version "0.3-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "atom4R" version))
       (sha256
        (base32 "08n9apmliwri1vyqwfvyqi7m8b9nj7zpi1vg8gcqlg17skxndm2m"))))
    (properties `((upstream-name . "atom4R")))
    (build-system r-build-system)
    (propagated-inputs (list r-zip
                             r-xml
                             r-readr
                             r-rdflib
                             r-r6
                             r-keyring
                             r-jsonlite
                             r-httr))
    (home-page "https://github.com/eblondel/atom4R")
    (synopsis "Tools to Handle and Publish Metadata as 'Atom' XML Format")
    (description
     "This package provides tools to read/write/publish metadata based on the Atom XML
syndication format.  This includes support of Dublin Core XML implementation,
and a client to API(s) implementing the @code{AtomPub} SWORD API specification.")
    (license license:expat)))

(define-public r-atnr
  (package
    (name "r-atnr")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ATNr" version))
       (sha256
        (base32 "1wlzw5565hprlphjp3jrgyhmgqdbrzwka4m1ac7rhxdgljdfh2j5"))))
    (properties `((upstream-name . "ATNr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-r-rsp r-desolve))
    (native-inputs (list r-r-rsp r-knitr))
    (home-page "https://cran.r-project.org/package=ATNr")
    (synopsis "Run Allometric Trophic Networks Models")
    (description
     "This package implements the differential equations associated to different
versions of Allometric Trophic Models (ATN) to estimate the temporal dynamics of
species biomasses in food webs.  It offers several features to generate
synthetic food webs and to parametrise models as well as a wrapper to the ODE
solver @code{deSolve}.")
    (license license:gpl2+)))

(define-public r-atmopt
  (package
    (name "r-atmopt")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "atmopt" version))
       (sha256
        (base32 "1h79ngq1236gz4w29fs3nj46a3m1x8a28z3xnhc6wn3a46cf8zzi"))))
    (properties `((upstream-name . "atmopt")))
    (build-system r-build-system)
    (propagated-inputs (list r-hiernet r-gtools r-doe-base))
    (home-page "https://cran.r-project.org/package=atmopt")
    (synopsis "Analysis-of-Marginal-Tail-Means")
    (description
     "This package provides functions for implementing the
Analysis-of-marginal-Tail-Means (ATM) method, a robust optimization method for
discrete black-box optimization.  Technical details can be found in Mak and Wu
(2018+) <@code{arXiv:1712.03589>}.  This work was supported by USARO grant
W911NF-17-1-0007.")
    (license license:gpl2+)))

(define-public r-atmchile
  (package
    (name "r-atmchile")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AtmChile" version))
       (sha256
        (base32 "0r8js8racs93vxbq62b44qj9m1vsp24dv81bmsg0a3smpk67zd46"))))
    (properties `((upstream-name . "AtmChile")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinycssloaders
                             r-shiny
                             r-plotly
                             r-openair
                             r-lubridate
                             r-dt
                             r-data-table))
    (home-page "https://github.com/franciscoxaxo/AtmChile")
    (synopsis "Download Air Quality and Meteorological Information of Chile")
    (description
     "Download air quality and meteorological information of Chile from the National
Air Quality System (S.I.N.C.A.)<https://sinca.mma.gob.cl/> dependent on the
Ministry of the Environment and the Meteorological Directorate of Chile
(D.M.C.)<http://www.meteochile.gob.cl/> dependent on the Directorate General of
Civil Aeronautics.")
    (license license:gpl3)))

(define-public r-atlasmaker
  (package
    (name "r-atlasmaker")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AtlasMaker" version))
       (sha256
        (base32 "0p7n73yc4044c4hlnjf4wzhg9zvpwlv6wqw1ams0zb2qw9fcc0fy"))))
    (properties `((upstream-name . "AtlasMaker")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-leaflet))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rachel-greenlee/AtlasMaker")
    (synopsis "Make Multiple 'leaflet' Maps in 'Shiny'")
    (description
     "Simplify creating multiple, related leaflet maps across tabs for a shiny
application.  Users build lists of any polygons, points, and polylines needed
for the project, use the map_server() function to assign built lists and other
chosen aesthetics into each tab, and the package leverages modules to generate
all map tabs.")
    (license license:gpl3+)))

(define-public r-atlas
  (package
    (name "r-atlas")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "atlas" version))
       (sha256
        (base32 "02wm22j40llmdi6z3rzgbc5fpkzmjfq0xar33bypvj1dx1zxygnd"))))
    (properties `((upstream-name . "atlas")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat r-httr))
    (home-page "https://shahlab.stanford.edu/start")
    (synopsis "Stanford 'ATLAS' Search Engine API")
    (description
     "Stanford ATLAS (Advanced Temporal Search Engine) is a powerful tool that allows
constructing cohorts of patients extremely quickly and efficiently.  This
package is designed to interface directly with an instance of ATLAS search
engine and facilitates API queries and data dumps.  Prerequisite is a good
knowledge of the temporal language to be able to efficiently construct a query.
More information available at <https://shahlab.stanford.edu/start>.")
    (license license:gpl3)))

(define-public r-atime
  (package
    (name "r-atime")
    (version "2024.4.23")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "atime" version))
       (sha256
        (base32 "0sh98yvzm4l2zzjsgw6g1hi0valn51lm5jm0c66swy83mgia66ny"))))
    (properties `((upstream-name . "atime")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice r-git2r r-data-table r-bench))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tdhock/atime")
    (synopsis "Asymptotic Timing")
    (description
     "Computing and visualizing comparative asymptotic timings of different algorithms
and code versions.  Also includes functionality for comparing empirical timings
with expected references such as linear or quadratic,
<https://en.wikipedia.org/wiki/Asymptotic_computational_complexity> Also
includes functionality for measuring asymptotic memory and other quantities.")
    (license license:gpl3)))

(define-public r-atemevs
  (package
    (name "r-atemevs")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AteMeVs" version))
       (sha256
        (base32 "0k0kgaq20nygr8l2fq1wq94cfi8f0kxbnzk264d0q4k43mq688yj"))))
    (properties `((upstream-name . "AteMeVs")))
    (build-system r-build-system)
    (propagated-inputs (list r-ncvreg r-mass))
    (home-page "https://cran.r-project.org/package=AteMeVs")
    (synopsis
     "Average Treatment Effects with Measurement Error and Variable Selection for Confounders")
    (description
     "This package provides a recent method proposed by Yi and Chen (2023)
<doi:10.1177/09622802221146308> is used to estimate the average treatment
effects using noisy data containing both measurement error and spurious
variables.  The package @code{AteMeVs} contains a set of functions that provide
a step-by-step estimation procedure, including the correction of the measurement
error effects, variable selection for building the model used to estimate the
propensity scores, and estimation of the average treatment effects.  The
functions contain multiple options for users to implement, including different
ways to correct for the measurement error effects, distinct choices of penalty
functions to do variable selection, and various regression models to
characterize propensity scores.")
    (license license:gpl2)))

(define-public r-atbounds
  (package
    (name "r-atbounds")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ATbounds" version))
       (sha256
        (base32 "007gc9yjxwlhkb0mibxaa394xdiilfm8z6jbbqdn6wl986p07pg3"))))
    (properties `((upstream-name . "ATbounds")))
    (build-system r-build-system)
    (propagated-inputs (list r-mgcv))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ATbounds/ATbounds-r/")
    (synopsis "Bounding Treatment Effects by Limited Information Pooling")
    (description
     "Estimation and inference methods for bounding average treatment effects (on the
treated) that are valid under an unconfoundedness assumption.  The bounds are
designed to be robust in challenging situations, for example, when the
conditioning variables take on a large number of different values in the
observed sample, or when the overlap condition is violated.  This robustness is
achieved by only using limited \"pooling\" of information across observations.
For more details, see the paper by Lee and Weidner (2021), \"Bounding Treatment
Effects by Pooling Limited Information across Observations,\"
<@code{arXiv:2111.05243>}.")
    (license license:gpl3)))

(define-public r-atakrig
  (package
    (name "r-atakrig")
    (version "0.9.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "atakrig" version))
       (sha256
        (base32 "0dzqghs2358hqyklvfblil5ww9d5nmx406invlx5fgqy4k0zcyzf"))))
    (properties `((upstream-name . "atakrig")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra
                             r-snow
                             r-sf
                             r-rcpp
                             r-mass
                             r-gstat
                             r-foreach
                             r-fnn
                             r-dosnow))
    (home-page "https://cran.r-project.org/package=atakrig")
    (synopsis "Area-to-Area Kriging")
    (description
     "Point-scale variogram deconvolution from irregular/regular spatial support
according to Goovaerts, P., (2008) <doi: 10.1007/s11004-007-9129-1>; ordinary
area-to-area (co)Kriging and area-to-point (co)Kriging.")
    (license license:gpl2+)))

(define-public r-ataforecasting
  (package
    (name "r-ataforecasting")
    (version "0.0.60")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ATAforecasting" version))
       (sha256
        (base32 "0q21dg4p9xw28r3q0ayf2bvwwyccilw93849x4c7k82xpyfnwvpb"))))
    (properties `((upstream-name . "ATAforecasting")))
    (build-system r-build-system)
    (propagated-inputs (list r-xts
                             r-tseries
                             r-tsa
                             r-timeseries
                             r-str
                             r-stlplus
                             r-seasonal
                             r-rdpack
                             r-rcpparmadillo
                             r-rcpp
                             r-forecast))
    (home-page "https://github.com/alsabtay/ATAforecasting")
    (synopsis
     "Automatic Time Series Analysis and Forecasting using the Ata Method")
    (description
     "The Ata method (Yapar et al. (2019) <doi:10.15672/hujms.461032>), an alternative
to exponential smoothing (described in Yapar (2016)
<doi:10.15672/HJMS.201614320580>, Yapar et al. (2017)
<doi:10.15672/HJMS.2017.493>), is a new univariate time series forecasting
method which provides innovative solutions to issues faced during the
initialization and optimization stages of existing forecasting methods.
Forecasting performance of the Ata method is superior to existing methods both
in terms of easy implementation and accurate forecasting.  It can be applied to
non-seasonal or seasonal time series which can be decomposed into four
components (remainder, level, trend and seasonal).  This methodology performed
well on the M3 and M4-competition data.  This package was written based on Ali
Sabri Taylanâs @code{PhD} dissertation.")
    (license license:gpl3+)))

(define-public r-atable
  (package
    (name "r-atable")
    (version "0.1.15")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "atable" version))
       (sha256
        (base32 "1x2j48wqycl9y4b8wnbhkfm2clhq5x8grw7ipjbhpxj3y3dlrh0b"))))
    (properties `((upstream-name . "atable")))
    (build-system r-build-system)
    (propagated-inputs (list r-settings
                             r-reshape2
                             r-plyr
                             r-hmisc
                             r-effsize
                             r-doby
                             r-desctools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/arminstroebel/atable")
    (synopsis "Create Tables for Reporting Clinical Trials")
    (description
     "Create Tables for Reporting Clinical Trials.  Calculates descriptive statistics
and hypothesis tests, arranges the results in a table ready for reporting with
@code{LaTeX}, HTML or Word.")
    (license license:gpl3)))

(define-public r-ata
  (package
    (name "r-ata")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ata" version))
       (sha256
        (base32 "08wcnfkbcq2al5ivdjkrjr8alaz0026992ra3ihyw6sd74mcracx"))))
    (properties `((upstream-name . "ata")))
    (build-system r-build-system)
    (propagated-inputs (list r-lpsolve))
    (home-page "https://cran.r-project.org/package=ata")
    (synopsis "Automated Test Assembly")
    (description
     "This package provides a collection of psychometric methods to process item
metadata and use target assessment and measurement blueprint constraints to
assemble a test form.  Currently two automatic test assembly (ata) approaches
are enabled.  For example, the weighted (positive) deviations method, wdm(),
proposed by Swanson and Stocking (1993) <doi:10.1177/014662169301700205> was
implemented in its full specification allowing for both item selection as well
as test form refinement.  The linear constraint programming approach, atalp(),
uses the linear equation solver by Berkelaar et.  al (2014)
<http://lpsolve.sourceforge.net/5.5/> to enable a variety of approaches to
select items.")
    (license license:lgpl2.0)))

(define-public r-asynchlong
  (package
    (name "r-asynchlong")
    (version "2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AsynchLong" version))
       (sha256
        (base32 "1fnrx8dgghs579zpckymc0lip9hisn70agv71kbicgi80k8wn62s"))))
    (properties `((upstream-name . "AsynchLong")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=AsynchLong")
    (synopsis "Regression Analysis of Sparse Asynchronous Longitudinal Data")
    (description
     "Estimation of regression models for sparse asynchronous longitudinal
observations, where time-dependent response and covariates are mismatched and
observed intermittently within subjects.  Kernel weighted estimating equations
are used for generalized linear models with either time-invariant or
time-dependent coefficients.  Cao, H., Li, J., and Fine, J. P. (2016)
<doi:10.1214/16-EJS1141>.  Cao, H., Zeng, D., and Fine, J. P. (2015)
<doi:10.1111/rssb.12086>.")
    (license license:gpl2)))

(define-public r-asymptor
  (package
    (name "r-asymptor")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asymptor" version))
       (sha256
        (base32 "0g8z0nqjp4a9lxvdmzhyx1sqvdrkd9vd0b3i3qjbm4a542jf0aga"))))
    (properties `((upstream-name . "asymptor")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://hugogruson.fr/asymptor/")
    (synopsis "Estimate Asymptomatic Cases via Capture/Recapture Methods")
    (description
     "Estimate the lower and upper bound of asymptomatic cases in an epidemic using
the capture/recapture methods from BÃ¶hning et al. (2020)
<doi:10.1016/j.ijid.2020.06.009> and Rocchetti et al. (2020)
<doi:10.1101/2020.07.14.20153445>.  Note there is currently some discussion
about the validity of the methods implemented in this package.  You should read
carefully the original articles, alongside this answer from Li et al. (2022)
<doi:10.48550/@code{arXiv.2209.11334>} before using this package in your
project.")
    (license license:gpl3)))

(define-public r-asymptest
  (package
    (name "r-asymptest")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asympTest" version))
       (sha256
        (base32 "02l07psiy1888zx86j2r1l5lznz47wdmzbh39pd2nbj8r9i80szr"))))
    (properties `((upstream-name . "asympTest")))
    (build-system r-build-system)
    (home-page "https://www.r-project.org")
    (synopsis
     "Simple R Package for Classical Parametric Statistical Tests and Confidence Intervals in Large Samples")
    (description
     "One and two sample mean and variance tests (differences and ratios) are
considered.  The test statistics are all expressed in the same form as the
Student t-test, which facilitates their presentation in the classroom.  This
contribution also fills the gap of a robust (to non-normality) alternative to
the chi-square single variance test for large samples, since no such procedure
is implemented in standard statistical software.")
    (license license:gpl2+)))

(define-public r-asymmetry-measures
  (package
    (name "r-asymmetry-measures")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asymmetry.measures" version))
       (sha256
        (base32 "039afqmdir200aijln9q0g3rkahkxqahw6yz5mnw62jsslr9xskb"))))
    (properties `((upstream-name . "asymmetry.measures")))
    (build-system r-build-system)
    (propagated-inputs (list r-sn r-skewt r-gamlss-dist))
    (home-page "https://cran.r-project.org/package=asymmetry.measures")
    (synopsis "Asymmetry Measures for Probability Density Functions")
    (description
     "This package provides functions and examples for the weak and strong density
asymmetry measures in the articles: \"A measure of asymmetry\", Patil, Patil and
Bagkavos (2012) <doi:10.1007/s00362-011-0401-6> and \"A measure of asymmetry
based on a new necessary and sufficient condition for symmetry\", Patil, Bagkavos
and Wood (2014) <doi:10.1007/s13171-013-0034-z>.  The measures provided here are
useful for quantifying the asymmetry of the shape of a density of a random
variable.  The package facilitates implementation of the measures which are
applicable in a variety of fields including e.g. probability theory, statistics
and economics.")
    (license license:gpl2+)))

(define-public r-asymmetry
  (package
    (name "r-asymmetry")
    (version "2.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asymmetry" version))
       (sha256
        (base32 "1zppf4gb0rz9c4ixd6fym2qyjs8ddzq09is1rlf000mcnarfl22b"))))
    (properties `((upstream-name . "asymmetry")))
    (build-system r-build-system)
    (propagated-inputs (list r-smacof r-gplots))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=asymmetry")
    (synopsis "Multidimensional Scaling of Asymmetric Proximities")
    (description
     "Multidimensional scaling models and methods for the visualization and analysis
of asymmetric proximity data <doi:10.1111/j.2044-8317.1996.tb01078.x>.  An
asymmetric data matrix has the same number of rows and columns, and these rows
and columns refer to the same set of objects.  At least some elements in the
upper-triangle are different from the corresponding elements in the lower
triangle.  An example of an asymmetric matrix is a student migration table,
where the rows correspond to the countries of origin of the students and the
columns to the destination countries.  This package provides algorithms for
three multidimensional scaling models.  These are the slide-vector model
<doi:10.1007/BF02294474>, a scaling model with unique dimensions and the
asymscal model for asymmetric multidimensional scaling.  Furthermore, a heat map
for skew-symmetric data, and the decomposition of asymmetry are provided for the
exploratory analysis of asymmetric tables.")
    (license license:gpl3+)))

(define-public r-asymmetricsords
  (package
    (name "r-asymmetricsords")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AsymmetricSORDs" version))
       (sha256
        (base32 "0a6ika2vlnklbsr7lmihysbhzzc5za2aw77iw6pc19cw6mba6mpy"))))
    (properties `((upstream-name . "AsymmetricSORDs")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=AsymmetricSORDs")
    (synopsis "Asymmetric Second Order Rotatable Designs (AsymmetricSORDs)")
    (description
     "Response surface designs (RSDs) are widely used for Response Surface Methodology
(RSM) based optimization studies, which aid in exploring the relationship
between a group of explanatory variables and one or more response variable(s)
(G.E.P. Box and K.B. Wilson (1951), \"On the experimental attainment of optimum
conditions\" ; M. Hemavathi, Shashi Shekhar, Eldho Varghese, Seema Jaggi, Bikas
Sinha & Nripes Kumar Mandal (2022) <DOI:
10.1080/03610926.2021.1944213>.\"Theoretical developments in response surface
designs: an informative review and further thoughts\".).  Second order rotatable
designs are the most prominent and popular class of designs used for process and
product optimization trials but it is suitable for situations when all the
number of levels for each factor is the same.  In many practical situations,
RSDs with asymmetric levels (J.S. Mehta and M.N. Das (1968). \"Asymmetric
rotatable designs and orthogonal transformations\" ; M. Hemavathi, Eldho
Varghese, Shashi Shekhar & Seema Jaggi (2020) <DOI:
10.1080/02664763.2020.1864817>. \"Sequential asymmetric third order rotatable
designs (SATORDs)\" .) are more suitable as these designs explore more regions in
the design space.This package contains functions named Asords() ,CCD_coded(),
CCD_original(), SORD_coded() and SORD_original() for generating
asymmetric/symmetric RSDs along with the randomized layout.  It also contains
another function named Pred.var() for generating the variance of predicted
response as well as the moment matrix based on a second order model.")
    (license license:gpl2+)))

(define-public r-asymld
  (package
    (name "r-asymld")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asymLD" version))
       (sha256
        (base32 "1q05pxwn6arpalspgf2m0cym4ivnwyv94i58k9kaihd37kvm5lgc"))))
    (properties `((upstream-name . "asymLD")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=asymLD")
    (synopsis
     "Asymmetric Linkage Disequilibrium (ALD) for Polymorphic Genetic Data")
    (description
     "Computes asymmetric LD measures (ALD) for multi-allelic genetic data.  These
measures are identical to the correlation measure (r) for bi-allelic data.")
    (license license:gpl2)))

(define-public r-asylum
  (package
    (name "r-asylum")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asylum" version))
       (sha256
        (base32 "1gvwnlq5xxy4iiba87wm6f5j7b1gzjz1fzfwj8s6m4z3764j8inb"))))
    (properties `((upstream-name . "asylum")))
    (build-system r-build-system)
    (home-page "https://github.com/humaniverse/asylum")
    (synopsis "Data on Asylum and Resettlement for the UK")
    (description
     "Data on Asylum and Resettlement for the UK, provided by the Home Office
<https://www.gov.uk/government/statistical-data-sets/immigration-system-statistics-data-tables>.")
    (license license:expat)))

(define-public r-asyk
  (package
    (name "r-asyk")
    (version "1.5.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AsyK" version))
       (sha256
        (base32 "0mr09gfxq2xsdrh7h28fkczhs44m367gf7zj09kc5lc5zwd9fs83"))))
    (properties `((upstream-name . "AsyK")))
    (build-system r-build-system)
    (propagated-inputs (list r-deltd))
    (home-page "https://CRAN.R-project.org/package=AsyK")
    (synopsis "Kernel Density Estimation")
    (description
     "This package provides a collection of functions related to density estimation by
using Chen's (2000) idea.  Mean Squared Errors (MSE) are calculated for
estimated curves.  For this purpose, R functions allow the distribution to be
Gamma, Exponential or Weibull.  For details see Chen (2000), Scaillet (2004)
<doi:10.1080/10485250310001624819> and Khan and Akbar.")
    (license license:gpl2)))

(define-public r-asv
  (package
    (name "r-asv")
    (version "1.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ASV" version))
       (sha256
        (base32 "15k6gls2bcwnvpkqyz6jnhzk96rcnjdnxv63kh7zzp2qbidh27hb"))))
    (properties `((upstream-name . "ASV")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppprogress r-rcpparmadillo r-rcpp r-freqdom))
    (home-page
     "https://sites.google.com/view/omori-stat/english/software/asv-r")
    (synopsis "Stochastic Volatility Models with or without Leverage")
    (description
     "The efficient Markov chain Monte Carlo estimation of stochastic volatility
models with and without leverage (asymmetric and symmetric stochastic volatility
models).  Further, it computes the logarithm of the likelihood given parameters
using particle filters.")
    (license license:gpl2+)))

(define-public r-asus
  (package
    (name "r-asus")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asus" version))
       (sha256
        (base32 "05rsbakby0w3xf5zaq5flp4if31x8fnm1l0n1r51ympw4wzzqjh5"))))
    (properties `((upstream-name . "asus")))
    (build-system r-build-system)
    (propagated-inputs (list r-wavethresh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/trambakbanerjee/asus#asus")
    (synopsis "Adaptive SURE Thresholding Using Side Information")
    (description
     "This package provides the ASUS procedure for estimating a high dimensional
sparse parameter in the presence of auxiliary data that encode side information
on sparsity.  It is a robust data combination procedure in the sense that even
when pooling non-informative auxiliary data ASUS would be at least as efficient
as competing soft thresholding based methods that do not use auxiliary data.
For more information, please see the paper Adaptive Sparse Estimation with Side
Information by Banerjee, Mukherjee and Sun (JASA 2020).")
    (license license:gpl2+)))

(define-public r-astrofns
  (package
    (name "r-astrofns")
    (version "4.2-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "astroFns" version))
       (sha256
        (base32 "0c81q9xddd9m2lhbv7r2aq1w262vjamcv8qg4mgrndww8n6vf8zn"))))
    (properties `((upstream-name . "astroFns")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=astroFns")
    (synopsis "Astronomy: Time and Position Functions, Misc. Utilities")
    (description "Miscellaneous astronomy functions, utilities, and data.")
    (license license:gpl2+)))

(define-public r-astrodatr
  (package
    (name "r-astrodatr")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "astrodatR" version))
       (sha256
        (base32 "00689px4znwmlp6qbj6z2a51b7ylx1yrrjpv6zjkvrwpv6lyj9fw"))))
    (properties `((upstream-name . "astrodatR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=astrodatR")
    (synopsis "Astronomical Data")
    (description
     "This package provides a collection of 19 datasets from contemporary astronomical
research.  They are described the textbook `Modern Statistical Methods for
Astronomy with R Applications by Eric D. Feigelson and G. Jogesh Babu (Cambridge
University Press, 2012, Appendix C) or on the website of Penn State's Center for
Astrostatistics (http://astrostatistics.psu.edu/datasets).  These datasets can
be used to exercise methodology involving: density estimation; heteroscedastic
measurement errors; contingency tables; two-sample hypothesis tests; spatial
point processes; nonlinear regression; mixture models; censoring and truncation;
multivariate analysis; classification and clustering; inhomogeneous Poisson
processes; periodic and stochastic time series analysis.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-astrochron
  (package
    (name "r-astrochron")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "astrochron" version))
       (sha256
        (base32 "1vviz16yfqnqkvrb0sb7348a7xqvqi3cfdyxhlksm08g4rr3w8ar"))))
    (properties `((upstream-name . "astrochron")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridislite
                             r-palinsol
                             r-multitaper
                             r-iterators
                             r-idpmisc
                             r-foreach
                             r-fields
                             r-doparallel))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=astrochron")
    (synopsis "Computational Tool for Astrochronology")
    (description
     "Routines for astrochronologic testing, astronomical time scale construction, and
time series analysis <doi:10.1016/j.earscirev.2018.11.015>.  Also included are a
range of statistical analysis and modeling routines that are relevant to time
scale development and paleoclimate analysis.")
    (license license:gpl3)))

(define-public r-asthmanhanes
  (package
    (name "r-asthmanhanes")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AsthmaNHANES" version))
       (sha256
        (base32 "106c6fh20s98fzixs4jpa4d413himrfg31rzwsxp72yldqxg70fx"))))
    (properties `((upstream-name . "AsthmaNHANES")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=AsthmaNHANES")
    (synopsis "Asthma Data Sets from NHANES")
    (description
     "Data sets and examples from National Health and Nutritional Examination Survey
(NHANES).")
    (license license:gpl3)))

(define-public r-asterisk
  (package
    (name "r-asterisk")
    (version "1.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asteRisk" version))
       (sha256
        (base32 "0rfbm5c2lgs921ncajsjyyxzfiqls40xlxqp2pwp7c0rxhiz2rd6"))))
    (properties `((upstream-name . "asteRisk")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppparallel r-rcpp r-onion r-nanotime
                             r-desolve))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=asteRisk")
    (synopsis "Computation of Satellite Position")
    (description
     "This package provides basic functionalities to calculate the position of
satellites given a known state vector.  The package includes implementations of
the SGP4 and SDP4 simplified perturbation models to propagate orbital state
vectors, as well as utilities to read TLE files and convert coordinates between
different frames of reference.  Several of the functionalities of the package
(including the high-precision numerical orbit propagator) require the
coefficients and data included in the @code{asteRiskData} package, available in
a drat repository.  To install this data package, run
install.packages(\"@code{asteRiskData}\",
repos=\"https://rafael-ayala.github.io/drat/\")'.  Felix R. Hoots, Ronald L.
Roehrich and T.S. Kelso (1988)
<https://celestrak.org/NORAD/documentation/spacetrk.pdf>.  David Vallado, Paul
Crawford, Richard Hujsak and T.S. Kelso (2012) <doi:10.2514/6.2006-6753>.  Felix
R. Hoots, Paul W. Schumacher Jr.  and Robert A. Glover (2014)
<doi:10.2514/1.9161>.")
    (license license:gpl3)))

(define-public r-aster2
  (package
    (name "r-aster2")
    (version "0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aster2" version))
       (sha256
        (base32 "17d200sg0vn1fj6lb480dhszm70q6ipjldilb3x0jp72hiczakk9"))))
    (properties `((upstream-name . "aster2")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix))
    (home-page "http://www.stat.umn.edu/geyer/aster/")
    (synopsis "Aster Models")
    (description
     "Aster models are exponential family regression models for life history analysis.
 They are like generalized linear models except that elements of the response
vector can have different families (e.  g., some Bernoulli, some Poisson, some
zero-truncated Poisson, some normal) and can be dependent, the dependence
indicated by a graphical structure.  Discrete time survival analysis,
zero-inflated Poisson regression, and generalized linear models that are
exponential family (e.  g., logistic regression and Poisson regression with log
link) are special cases.  Main use is for data in which there is survival over
discrete time periods and there is additional data about what happens
conditional on survival (e.  g., number of offspring).  Uses the exponential
family canonical parameterization (aster transform of usual parameterization).
Unlike the aster package, this package does dependence groups (nodes of the
graph need not be conditionally independent given their predecessor node),
including multinomial and two-parameter normal as families.  Thus this package
also generalizes mark-capture-recapture analysis.")
    (license license:gpl2+)))

(define-public r-aster
  (package
    (name "r-aster")
    (version "1.1-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aster" version))
       (sha256
        (base32 "1piimmrsvhbps8ld6vjjg82kf8pm5nwl91437dglid802p51pwlm"))))
    (properties `((upstream-name . "aster")))
    (build-system r-build-system)
    (propagated-inputs (list r-trust))
    (home-page "http://www.stat.umn.edu/geyer/aster/")
    (synopsis "Aster Models")
    (description
     "Aster models (Geyer, Wagenius, and Shaw, 2007, <doi:10.1093/biomet/asm030>;
Shaw, Geyer, Wagenius, Hangelbroek, and Etterson, 2008, <doi:10.1086/588063>;
Geyer, Ridley, Latta, Etterson, and Shaw, 2013, <doi:10.1214/13-AOAS653>) are
exponential family regression models for life history analysis.  They are like
generalized linear models except that elements of the response vector can have
different families (e.  g., some Bernoulli, some Poisson, some zero-truncated
Poisson, some normal) and can be dependent, the dependence indicated by a
graphical structure.  Discrete time survival analysis, life table analysis,
zero-inflated Poisson regression, and generalized linear models that are
exponential family (e.  g., logistic regression and Poisson regression with log
link) are special cases.  Main use is for data in which there is survival over
discrete time periods and there is additional data about what happens
conditional on survival (e.  g., number of offspring).  Uses the exponential
family canonical parameterization (aster transform of usual parameterization).
There are also random effects versions of these models.")
    (license license:expat)))

(define-public r-ast2ast
  (package
    (name "r-ast2ast")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ast2ast" version))
       (sha256
        (base32 "1vsnd7w0z0wr4185wg6k7xjd4xc8qsm08f4wfgcnyd79x56wczky"))))
    (properties `((upstream-name . "ast2ast")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-rcpparmadillo
                             r-rcpp
                             r-r6
                             r-purrr
                             r-dfdr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Konrad1991/ast2ast")
    (synopsis "Translates an R Function to a C++ Function")
    (description
     "Enable translation of a tiny subset of R to C++.  The user has to define a R
function which gets translated.  For a full list of possible functions check the
documentation.  After translation an R function is returned which is a shallow
wrapper around the C++ code.  Alternatively an external pointer to the C++
function is returned to the user.  The intention of the package is to generate
fast functions which can be used as ode-system or during optimization.")
    (license license:gpl2)))

(define-public r-ast
  (package
    (name "r-ast")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AST" version))
       (sha256
        (base32 "0z5dw5qw0i61v4796ms7pp66f9y4ylxrcls31ixzcmkklh3rcnp3"))))
    (properties `((upstream-name . "AST")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=AST")
    (synopsis "Age-Spatial-Temporal Model")
    (description
     "Fits a model to adjust and consider additional variations in three dimensions of
age groups, time, and space on residuals excluded from a prediction model that
have residual such as: linear regression, mixed model and so on.  Details are
given in Foreman et al. (2015) <doi:10.1186/1478-7954-10-1>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-assortnet
  (package
    (name "r-assortnet")
    (version "0.20")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "assortnet" version))
       (sha256
        (base32 "15qah885jjiwxrf1bhmbjpsamgylmy8cwjbd3w0di7n8j4zv6gwr"))))
    (properties `((upstream-name . "assortnet")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=assortnet")
    (synopsis
     "Calculate the Assortativity Coefficient of Weighted and Binary Networks")
    (description
     "This package provides functions to calculate the assortment of vertices in
social networks.  This can be measured on both weighted and binary networks,
with discrete or continuous vertex values.")
    (license license:gpl2)))

(define-public r-assoctests
  (package
    (name "r-assoctests")
    (version "1.0-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AssocTests" version))
       (sha256
        (base32 "1wp5swnpd6m5g4zm14lllclmw058513n1g3kq1iqc0acjavkqy17"))))
    (properties `((upstream-name . "AssocTests")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-fextremes r-combinat r-cluster))
    (home-page "https://cran.r-project.org/package=AssocTests")
    (synopsis "Genetic Association Studies")
    (description
     "Some procedures including EIGENSTRAT (a procedure for detecting and correcting
for population stratification through searching for the eigenvectors in genetic
association studies), P@code{CoC} (a procedure for correcting for population
stratification through calculating the principal coordinates and the clustering
of the subjects), Tracy-Widom test (a procedure for detecting the significant
eigenvalues of a matrix), distance regression (a procedure for detecting the
association between a distance matrix and some independent variants of
interest), single-marker test (a procedure for identifying the association
between the genotype at a biallelic marker and a trait using the Wald test or
the Fisher's exact test), MAX3 (a procedure for testing for the association
between a single nucleotide polymorphism and a binary phenotype using the
maximum value of the three test statistics derived for the recessive, additive,
and dominant models), nonparametric trend test (a procedure for testing for the
association between a genetic variant and a non-normal distributed quantitative
trait based on the nonparametric risk), and nonparametric MAX3 (a procedure for
testing for the association between a biallelic single nucleotide polymorphism
and a quantitative trait using the maximum value of the three nonparametric
trend tests derived for the recessive, additive, and dominant models), which are
commonly used in genetic association studies.  To cite this package in
publications use: Lin Wang, Wei Zhang, and Qizhai Li. @code{AssocTests}: An R
Package for Genetic Association Studies.  Journal of Statistical Software.
2020; 94(5): 1-26.")
    (license license:gpl2)))

(define-public r-assocind
  (package
    (name "r-assocind")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "assocInd" version))
       (sha256
        (base32 "16yzgvlqbapjhvzm5nw8vfrhh8mp9llnhck4bpgmszyrh93z1ha5"))))
    (properties `((upstream-name . "assocInd")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=assocInd")
    (synopsis
     "Implements New and Existing Association Indices for Constructing Animal Social Networks")
    (description
     "This package implements several new association indices that can control for
various types of errors.  Also includes existing association indices and
functions for simulating the effects of different rates of error on estimates of
association strength between individuals using each method.")
    (license license:gpl2)))

(define-public r-assocbin
  (package
    (name "r-assocbin")
    (version "1.0-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AssocBin" version))
       (sha256
        (base32 "16pl18b2jd45ys2cc4h74k2llc5daw8b727nmby4qdrja3qnifbr"))))
    (properties `((upstream-name . "AssocBin")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AssocBin")
    (synopsis "Measuring Association with Recursive Binning")
    (description
     "An iterative implementation of a recursive binary partitioning algorithm to
measure pairwise dependence with a modular design that allows user specification
of the splitting logic and stop criteria.  Helper functions provide suggested
versions of both and support visualization and the computation of summary
statistics on final binnings.  For a complete description of the functionality
and algorithm, see Salahub and Oldford (2023)
<doi:10.48550/@code{arXiv.2311.08561>}.")
    (license license:gpl3+)))

(define-public r-assocafc
  (package
    (name "r-assocafc")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AssocAFC" version))
       (sha256
        (base32 "1rjiiir472dnr15xyvpn81s62nf01gl70khr8mrni65ssp5m30fb"))))
    (properties `((upstream-name . "AssocAFC")))
    (build-system r-build-system)
    (propagated-inputs (list r-compquadform))
    (home-page "https://www.r-project.org")
    (synopsis "Allele Frequency Comparison")
    (description
     "When doing association analysis one does not always have the genotypes for the
control population.  In such cases it may be necessary to fall back on frequency
based tests using well known sources for the frequencies in the control
population, for instance, from the 1000 Genomes Project.  The Allele Frequency
Comparison ('@code{AssocAFC}') package performs multiple rare variant
association analyses in both population and family-based GWAS (Genome-Wide
Association Study) designs.  It includes three score tests that are based on the
difference of the sum of allele frequencies between cases and controls.  Two of
these tests, Wcorrected() and Wqls(), are collapsing-based tests and suffer from
having protective and risk variants.  The third test, @code{afcSKAT}(), is a
score test that overcomes the mix of SNP (Single-Nucleotide Polymorphism) effect
directions.  For more details see Saad M and Wijsman EM (2017)
<doi:10.1093/bib/bbx107>.")
    (license license:gpl3+)))

(define-public r-assistant
  (package
    (name "r-assistant")
    (version "1.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ASSISTant" version))
       (sha256
        (base32 "0apaj4lfkbg08xrw8mknf50s1vyd4j5mbwciwgblq7ydh3pyjxaj"))))
    (properties `((upstream-name . "ASSISTant")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-mvtnorm r-magrittr r-knitr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bnaras/ASSISTant")
    (synopsis "Adaptive Subgroup Selection in Group Sequential Trials")
    (description
     "Clinical trial design for subgroup selection in three-stage group sequential
trial as described in Lai, Lavori and Liao (2014,
<doi:10.1016/j.cct.2014.09.001>).  Includes facilities for design, exploration
and analysis of such trials.  An implementation of the initial DEFUSE-3 trial is
also provided as a vignette.")
    (license license:gpl2+)))

(define-public r-assist
  (package
    (name "r-assist")
    (version "3.1.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "assist" version))
       (sha256
        (base32 "0n2348hld38jg1z8axaqs000qczbwbpq5yq5sshfn9k08p5b1szk"))))
    (properties `((upstream-name . "assist")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme r-lattice))
    (native-inputs (list gfortran))
    (home-page "https://yuedong.faculty.pstat.ucsb.edu/software.html")
    (synopsis "Suite of R Functions Implementing Spline Smoothing Techniques")
    (description
     "Fit various smoothing spline models.  Includes an ssr() function for smoothing
spline regression, an nnr() function for nonparametric nonlinear regression, an
snr() function for semiparametric nonlinear regression, an slm() function for
semiparametric linear mixed-effects models, and an snm() function for
semiparametric nonlinear mixed-effects models.  See Wang (2011)
<doi:10.1201/b10954> for an overview.")
    (license license:gpl2)))

(define-public r-assignr
  (package
    (name "r-assignr")
    (version "2.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "assignR" version))
       (sha256
        (base32 "1ml8yk9a8rm05whcygaxha8lrrp0npr50fvsb3pcdikxing1khdm"))))
    (properties `((upstream-name . "assignR")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra r-rlang r-mvnfast r-geosphere))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=assignR")
    (synopsis "Infer Geographic Origin from Isotopic Data")
    (description
     "Routines for re-scaling isotope maps using known-origin tissue isotope data,
assigning origin of unknown samples, and summarizing and assessing assignment
results.  Methods are adapted from Wunder (2010, in ISBN:9789048133536) and
Vander Zanden, H. B. et al. (2014) <doi:10.1111/2041-210X.12229> as described in
Ma, C. et al. (2020) <doi:10.1111/2041-210X.13426>.")
    (license license:gpl3)))

(define-public r-assignpop
  (package
    (name "r-assignpop")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "assignPOP" version))
       (sha256
        (base32 "0p282yyszjamvzfsrjhy5c4jbfixvf4fafj6k47k2dgpx6wsdrqx"))))
    (properties `((upstream-name . "assignPOP")))
    (build-system r-build-system)
    (propagated-inputs (list r-tree
                             r-stringr
                             r-rlang
                             r-reshape2
                             r-randomforest
                             r-mass
                             r-ggplot2
                             r-foreach
                             r-e1071
                             r-doparallel
                             r-caret))
    (home-page "https://github.com/alexkychen/assignPOP")
    (synopsis
     "Population Assignment using Genetic, Non-Genetic or Integrated Data in a Machine Learning Framework")
    (description
     "Use Monte-Carlo and K-fold cross-validation coupled with machine- learning
classification algorithms to perform population assignment, with functionalities
of evaluating discriminatory power of independent training samples, identifying
informative loci, reducing data dimensionality for genomic data, integrating
genetic and non-genetic data, and visualizing results.")
    (license license:gpl2+)))

(define-public r-assetpricing
  (package
    (name "r-assetpricing")
    (version "1.0-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AssetPricing" version))
       (sha256
        (base32 "199ygwfddpzxnj388gxkn7xyhnvjr24f5jg4lnydh0z7pb96pm5r"))))
    (properties `((upstream-name . "AssetPricing")))
    (build-system r-build-system)
    (propagated-inputs (list r-polynom r-desolve))
    (home-page "http://www.stat.auckland.ac.nz/~rolf/")
    (synopsis "Optimal Pricing of Assets with Fixed Expiry Date")
    (description
     "Calculates the optimal price of assets (such as airline flight seats, hotel room
bookings) whose value becomes zero after a fixed ``expiry date''.  Assumes
potential customers arrive (possibly in groups) according to a known
inhomogeneous Poisson process.  Also assumes a known time-varying elasticity of
demand (price sensitivity) function.  Uses elementary techniques based on
ordinary differential equations.  Uses the package @code{deSolve} to effect the
solution of these differential equations.")
    (license license:gpl2+)))

(define-public r-assetcorr
  (package
    (name "r-assetcorr")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AssetCorr" version))
       (sha256
        (base32 "0r98li2lxhfap1hn6h0l78phpm9m1nlcqhwzpq0ahhw0b1rd4qkf"))))
    (properties `((upstream-name . "AssetCorr")))
    (build-system r-build-system)
    (propagated-inputs (list r-vinecopula
                             r-rdpack
                             r-qpdf
                             r-numderiv
                             r-mvtnorm
                             r-mvquad
                             r-knitr
                             r-ggplot2
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AssetCorr")
    (synopsis "Estimating Asset Correlations from Default Data")
    (description
     "This package provides functions for the estimation of intra- and inter-cohort
correlations in the Vasicek credit portfolio model.  For intra-cohort
correlations, the package covers the two method of moments estimators of Gordy
(2000) <doi:10.1016/S0378-4266(99)00054-0>, the method of moments estimator of
Lucas (1995) <https://jfi.pm-research.com/content/4/4/76> and a Binomial
approximation extension of this approach.  Moreover, the maximum likelihood
estimators of Gordy and Heitfield (2010)
<http://elsa.berkeley.edu/~mcfadden/e242_f03/heitfield.pdf> and Duellmann and
Gehde-Trapp (2004) <http://hdl.handle.net/10419/19729> are implemented.  For
inter-cohort correlations, the method of moments estimator of Bluhm and Overbeck
(2003) <doi:10.1007/978-3-642-59365-9_2>/Bams et al. (2016)
<https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2676595> is provided and
the maximum likelihood estimators comprise the approaches of Gordy and Heitfield
(2010)/Kalkbrener and Onwunta (2010) <ISBN: 978-1906348250> and Pfeuffer et al.
(2020).  Bootstrap and Jackknife procedures for bias correction are included as
well as the method of moments estimator of Frei and Wunsch (2018)
<doi:10.21314/JCR.2017.231> for auto-correlated time series.")
    (license license:gpl3)))

(define-public r-assetallocation
  (package
    (name "r-assetallocation")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AssetAllocation" version))
       (sha256
        (base32 "0qd58478bwg20x7ivfasmhs87swl6wj98vzlp608y208madl8ss6"))))
    (properties `((upstream-name . "AssetAllocation")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-riskportfolios
                             r-riskparityportfolio
                             r-quantmod
                             r-performanceanalytics
                             r-nmof
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rubetron/AssetAllocation")
    (synopsis "Backtesting Simple Asset Allocation Strategies")
    (description
     "Easy and quick testing of customizable asset allocation strategies.  Users can
rely on their own data, or have the package automatically download data from
Yahoo Finance (<https://finance.yahoo.com/>).  Several pre-loaded portfolios
with data are available, including some which are discussed in Faber (2015,
ISBN:9780988679924).")
    (license license:gpl3+)))

(define-public r-assessor
  (package
    (name "r-assessor")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "assessor" version))
       (sha256
        (base32 "1qpa2fd1ajk395x4chmarj6l50m4jaf5951qy1a79ncaa8f8g3x9"))))
    (properties `((upstream-name . "assessor")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam r-tweedie r-np r-mass))
    (home-page "https://jhlee1408.github.io/assessor/")
    (synopsis
     "Assessment Tools for Regression Models with Discrete and Semicontinuous Outcomes")
    (description
     "This package provides assessment tools for regression models with discrete and
semicontinuous outcomes proposed in Yang (2023)
<doi:10.48550/@code{arXiv.2308.15596>}.  It calculates the double probability
integral transform (DPIT) residuals, constructs QQ plots of residuals and the
ordered curve for assessing mean structures.")
    (license license:expat)))

(define-public r-assertions
  (package
    (name "r-assertions")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "assertions" version))
       (sha256
        (base32 "18926pk2g0hc4dyzm1ghp69sgj7mdx8vzi1vykyxbk0046sg53wp"))))
    (properties `((upstream-name . "assertions")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-glue r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/selkamand/assertions")
    (synopsis
     "Simple Assertions for Beautiful and Customisable Error Messages")
    (description
     "This package provides simple assertions with sensible defaults and customisable
error messages.  It offers convenient assertion call wrappers and a general
assert function that can handle any condition.  Default error messages are user
friendly and easily customized with inline code evaluation and styling powered
by the cli package.")
    (license license:expat)))

(define-public r-assert
  (package
    (name "r-assert")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "assert" version))
       (sha256
        (base32 "0n5l48yb0djl6rdj50p1dslpw3c5kbi15yz6z6rdgic575gjwzdc"))))
    (properties `((upstream-name . "assert")))
    (build-system r-build-system)
    (home-page "https://github.com/OlivierBinette/assert")
    (synopsis "Validate Function Arguments")
    (description
     "Lightweight validation tool for checking function arguments and validating data
analysis scripts.  This is an alternative to stopifnot() from the base package
and to assert_that() from the assertthat package.  It provides more informative
error messages and facilitates debugging.")
    (license license:gpl2+)))

(define-public r-assa
  (package
    (name "r-assa")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ASSA" version))
       (sha256
        (base32 "10r5406g6i0959k1zm5h9cbwqmnyf7zy80ahiqsyrapm3g5rphxg"))))
    (properties `((upstream-name . "ASSA")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=ASSA")
    (synopsis "Applied Singular Spectrum Analysis (ASSA)")
    (description
     "This package provides functions to model and decompose time series into
principal components using singular spectrum analysis (de Carvalho and Rua
(2017) <doi:10.1016/j.ijforecast.2015.09.004>; de Carvalho et al (2012)
<doi:10.1016/j.econlet.2011.09.007>).")
    (license license:gpl3+)))

(define-public r-asrgenomics
  (package
    (name "r-asrgenomics")
    (version "1.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ASRgenomics" version))
       (sha256
        (base32 "1k6qyp5ac8q3z7ifbqv2kkryh27ii0zbfmlcjl6i3y7s1mfyigg8"))))
    (properties `((upstream-name . "ASRgenomics")))
    (build-system r-build-system)
    (propagated-inputs (list r-superheat
                             r-scattermore
                             r-matrix
                             r-ggplot2
                             r-factoextra
                             r-ellipse
                             r-data-table
                             r-crayon
                             r-cowplot
                             r-aghmatrix))
    (home-page "https://cran.r-project.org/package=ASRgenomics")
    (synopsis "Complementary Genomic Functions")
    (description
     "Presents a series of molecular and genetic routines in the R environment with
the aim of assisting in analytical pipelines before and after the use of asreml
or another library to perform analyses such as Genomic Selection or Genome-Wide
Association Analyses.  Methods and examples are described in Gezan, Oliveira,
Galli, and Murray (2022)
<https://asreml.kb.vsni.co.uk/wp-content/uploads/sites/3/ASRgenomics_Manual.pdf>.")
    (license license:expat)))

(define-public r-asremlplus
  (package
    (name "r-asremlplus")
    (version "4.4.38")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asremlPlus" version))
       (sha256
        (base32 "16hgzbdx7jaq7jkil97iwx1r4agbw34jcz7iap3ir18v8jp19y2c"))))
    (properties `((upstream-name . "asremlPlus")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-trycatchlog
                             r-stringr
                             r-sticky
                             r-rlang
                             r-reshape2
                             r-rcolorbrewer
                             r-qqplotr
                             r-nloptr
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-devtools
                             r-dae))
    (native-inputs (list r-r-rsp))
    (home-page "http://chris.brien.name")
    (synopsis
     "Augments 'ASReml-R' in Fitting Mixed Models and Packages Generally in Exploring Prediction Differences")
    (description
     "Assists in automating the selection of terms to include in mixed models when
asreml is used to fit the models.  Procedures are available for choosing models
that conform to the hierarchy or marginality principle, for fitting and choosing
between two-dimensional spatial models using correlation, natural cubic
smoothing spline and P-spline models.  A history of the fitting of a sequence of
models is kept in a data frame.  Also used to compute functions and contrasts
of, to investigate differences between and to plot predictions obtained using
any model fitting function.  The content falls into the following natural
groupings: (i) Data, (ii) Model modification functions, (iii) Model selection
and description functions, (iv) Model diagnostics and simulation functions, (v)
Prediction production and presentation functions, (vi) Response transformation
functions, (vii) Object manipulation functions, and (viii) Miscellaneous
functions (for further details see @code{asremlPlus-package} in help).  The
asreml package provides a computationally efficient algorithm for fitting a wide
range of linear mixed models using Residual Maximum Likelihood.  It is a
commercial package and a license for it can be purchased from VSNi
<https://vsni.co.uk/> as asreml-R', who will supply a zip file for local
installation/updating (see <https://asreml.kb.vsni.co.uk/>).  It is not needed
for functions that are methods for alldiffs and data.frame objects.  The package
@code{asremPlus} can also be installed from
<http://chris.brien.name/rpackages/>.")
    (license license:expat)))

(define-public r-aspu
  (package
    (name "r-aspu")
    (version "1.50")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aSPU" version))
       (sha256
        (base32 "0rh21dj5913nxhdndqfhxvm6mvwnacraf7l3bac09awm7cfhk511"))))
    (properties `((upstream-name . "aSPU")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-matrixstats r-mass r-gee r-fields))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ikwak2/aSPU")
    (synopsis "Adaptive Sum of Powered Score Test")
    (description
     "R codes for the (adaptive) Sum of Powered Score ('SPU and @code{aSPU}') tests,
inverse variance weighted Sum of Powered score ('SPUw and @code{aSPUw}') tests
and gene-based and some pathway based association tests (Pathway based Sum of
Powered Score tests ('SPUpath'), adaptive SPUpath ('@code{aSPUpath}') test,
GE@code{EaSPU} test for multiple traits - single SNP (single nucleotide
polymorphism) association in generalized estimation equations, M@code{TaSPUs}
test for multiple traits - single SNP association with Genome Wide Association
Studies ('GWAS') summary statistics, Gene-based Association Test that uses an
extended Simes procedure ('GATES'), Hybrid Set-based Test ('HYST') and extended
version of GATES test for pathway-based association testing ('GATES-Simes'). ).
The tests can be used with genetic and other data sets with covariates.  The
response variable is binary or quantitative.  Summary; (1) Single trait-'SNP set
association with individual-level data ('@code{aSPU}', @code{aSPUw}',
@code{aSPUr}'), (2) Single trait-'SNP set association with summary statistics
('@code{aSPUs}'), (3) Single trait-pathway association with individual-level
data ('@code{aSPUpath}'), (4) Single trait-pathway association with summary
statistics ('@code{aSPUsPath}'), (5) Multiple traits-single SNP association with
individual-level data ('GE@code{EaSPU}'), (6) Multiple traits- single SNP
association with summary statistics ('M@code{TaSPUs}'), (7) Multiple traits-'SNP
set association with summary statistics('M@code{TaSPUsSet}'), (8) Multiple
traits-pathway association with summary statistics('M@code{TaSPUsSetPath}').")
    (license license:gpl3)))

(define-public r-aspline
  (package
    (name "r-aspline")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aspline" version))
       (sha256
        (base32 "1a68x6jvsaxviy2w361f19iqzsdsaf9kcqw5cknf4yz9fvkqhjny"))))
    (properties `((upstream-name . "aspline")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-splines2
                             r-rlang
                             r-rcpp
                             r-mgcv
                             r-magrittr
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/goepp/aspline")
    (synopsis "Spline Regression with Adaptive Knot Selection")
    (description
     "Perform one-dimensional spline regression with automatic knot selection.  This
package uses a penalized approach to select the most relevant knots.  B-splines
of any degree can be fitted.  More details in Goepp et al. (2018)', \"Spline
Regression with Automatic Knot Selection\", <@code{arXiv:1808.01770>}.")
    (license license:gpl3)))

(define-public r-aspect
  (package
    (name "r-aspect")
    (version "1.0-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aspect" version))
       (sha256
        (base32 "13pb1pslyka706v13b7hdrzzn5bxmj2l5irpd9f1pm1n8a1ivrrl"))))
    (properties `((upstream-name . "aspect")))
    (build-system r-build-system)
    (home-page "https://r-forge.r-project.org/projects/psychor/")
    (synopsis
     "General Framework for Multivariate Analysis with Optimal Scaling")
    (description
     "This package contains various functions for optimal scaling.  One function
performs optimal scaling by maximizing an aspect (i.e.  a target function such
as the sum of eigenvalues, sum of squared correlations, squared multiple
correlations, etc.) of the corresponding correlation matrix.  Another function
performs implements the LINEALS approach for optimal scaling by minimization of
an aspect based on pairwise correlations and correlation ratios.  The resulting
correlation matrix and category scores can be used for further multivariate
methods such as structural equation models.")
    (license license:gpl2)))

(define-public r-aspace
  (package
    (name "r-aspace")
    (version "4.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aspace" version))
       (sha256
        (base32 "163fglx1k7z38xqlgmdqgkzf2sp3xqi756iddw7kj06l6f389yx2"))))
    (properties `((upstream-name . "aspace")))
    (build-system r-build-system)
    (propagated-inputs (list r-splancs r-hmisc))
    (home-page "https://cran.r-project.org/package=aspace")
    (synopsis "Functions for Estimating Centrographic Statistics")
    (description
     "This package provides a collection of functions for computing centrographic
statistics (e.g., standard distance, standard deviation ellipse, standard
deviation box) for observations taken at point locations.  Separate plotting
functions have been developed for each measure.  Users interested in writing
results to ESRI shapefiles can do so by using results from aspace functions as
inputs to the convert.to.shapefile() and write.shapefile() functions in the
shapefiles library.  We intend to provide terra integration for geographic data
in a future release.  The aspace package was originally conceived to aid in the
analysis of spatial patterns of travel behaviour (see Buliung and Remmel 2008
<doi:10.1007/s10109-008-0063-7>).")
    (license license:gpl3)))

(define-public r-asnipe
  (package
    (name "r-asnipe")
    (version "1.1.17")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asnipe" version))
       (sha256
        (base32 "01wv5pi44s2qzn33qcm4404ijqrwmqfrgchd88s7bwmdl47h3d77"))))
    (properties `((upstream-name . "asnipe")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-mass))
    (home-page "https://cran.r-project.org/package=asnipe")
    (synopsis
     "Animal Social Network Inference and Permutations for Ecologists")
    (description
     "This package implements several tools that are used in animal social network
analysis, as described in Whitehead (2007) Analyzing Animal Societies
<University of Chicago Press> and Farine & Whitehead (2015) <doi:
10.1111/1365-2656.12418>.  In particular, this package provides the tools to
infer groups and generate networks from observation data, perform permutation
tests on the data, calculate lagged association rates, and performed multiple
regression analysis on social network data.")
    (license license:gpl2)))

(define-public r-asmbpls
  (package
    (name "r-asmbpls")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asmbPLS" version))
       (sha256
        (base32 "08f4128abvy9pdkbdgiqnhm2v7f79lqbzp1132h52zq2n9wzxzmy"))))
    (properties `((upstream-name . "asmbPLS")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-ggpubr r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=asmbPLS")
    (synopsis
     "Predicting and Classifying Patient Phenotypes with Multi-Omics Data")
    (description
     "Adaptive Sparse Multi-block Partial Least Square, a supervised algorithm, is an
extension of the Sparse Multi-block Partial Least Square, which allows different
quantiles to be used in different blocks of different partial least square
components to decide the proportion of features to be retained.  The best
combinations of quantiles can be chosen from a set of user-defined quantiles
combinations by cross-validation.  By doing this, it enables us to do the
feature selection for different blocks, and the selected features can then be
further used to predict the outcome.  For example, in biomedical applications,
clinical covariates plus different types of omics data such as microbiome,
metabolome, @code{mRNA} data, methylation data, copy number variation data might
be predictive for patients outcome such as survival time or response to therapy.
 Different types of data could be put in different blocks and along with
survival time to fit the model.  The fitted model can then be used to predict
the survival for the new samples with the corresponding clinical covariates and
omics data.  In addition, Adaptive Sparse Multi-block Partial Least Square
Discriminant Analysis is also included, which extends Adaptive Sparse
Multi-block Partial Least Square for classifying the categorical outcome.")
    (license license:gpl2+)))

(define-public r-asmbook
  (package
    (name "r-asmbook")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ASMbook" version))
       (sha256
        (base32 "18nprjb54kr5yvpfnmji8p5a9ggc33h5wkgvni567rdsnq7jv0d7"))))
    (properties `((upstream-name . "ASMbook")))
    (build-system r-build-system)
    (propagated-inputs (list r-tmb r-mass r-lattice r-coda))
    (home-page
     "https://shop.elsevier.com/books/applied-statistical-modelling-for-ecologists/kery/978-0-443-13715-0")
    (synopsis
     "Functions for the Book \"Applied Statistical Modeling for Ecologists\"")
    (description
     "This package provides functions to accompany the book \"Applied Statistical
Modeling for Ecologists\" by Marc KÃ©ry and Kenneth F. Kellner (2024, ISBN:
9780443137150).  Included are functions for simulating and customizing the
datasets used for the example models in each chapter, summarizing output from
model fitting engines, and running custom Markov Chain Monte Carlo.")
    (license license:gpl3)))

(define-public r-asmap
  (package
    (name "r-asmap")
    (version "1.0-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ASMap" version))
       (sha256
        (base32 "04byjdz3dzgf06bmmpvslihya23lanl8dmjbq22vvwlhi82f88im"))))
    (properties `((upstream-name . "ASMap")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer r-qtl r-lattice r-gtools r-fields))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ASMap")
    (synopsis "Linkage Map Construction using the MSTmap Algorithm")
    (description
     "This package provides functions for Accurate and Speedy linkage map
construction, manipulation and diagnosis of Doubled Haploid, Backcross and
Recombinant Inbred R/qtl objects.  This includes extremely fast linkage map
clustering and optimal marker ordering using MSTmap (see Wu et al.,2008).")
    (license license:gpl2+)))

(define-public r-asm
  (package
    (name "r-asm")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asm" version))
       (sha256
        (base32 "0irxfkhd344jk31lwp6zgvwpgi6v72y6xbpp5q20zj8220ck4ms8"))))
    (properties `((upstream-name . "asm")))
    (build-system r-build-system)
    (propagated-inputs (list r-quantreg r-pracma r-mass r-iso r-fdrtool))
    (home-page "https://cran.r-project.org/package=asm")
    (synopsis
     "Optimal Convex M-Estimation for Linear Regression via Antitonic Score Matching")
    (description
     "This package performs linear regression with respect to a data-driven convex
loss function that is chosen to minimize the asymptotic covariance of the
resulting M-estimator.  The convex loss function is estimated in 5 steps: (1)
form an initial OLS (ordinary least squares) or LAD (least absolute deviation)
estimate of the regression coefficients; (2) use the resulting residuals to
obtain a kernel estimator of the error density; (3) estimate the score function
of the errors by differentiating the logarithm of the kernel density estimate;
(4) compute the L2 projection of the estimated score function onto the set of
decreasing functions; (5) take a negative antiderivative of the projected score
function estimate.  Newton's method (with Hessian modification) is then used to
minimize the convex empirical risk function.  Further details of the method are
given in Feng et al. (2024) <doi:10.48550/@code{arXiv.2403.16688>}.")
    (license license:gpl3+)))

(define-public r-aslib
  (package
    (name "r-aslib")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aslib" version))
       (sha256
        (base32 "1hy0ncanc3mb20yrby8s9hd8v2fg3x41vkj0jwl2b8znzl5n5b2n"))))
    (properties `((upstream-name . "aslib")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-stringr
                             r-rweka
                             r-reshape2
                             r-plyr
                             r-paramhelpers
                             r-parallelmap
                             r-mlr
                             r-llama
                             r-ggplot2
                             r-data-table
                             r-corrplot
                             r-checkmate
                             r-bbmisc
                             r-batchtools))
    (home-page "https://github.com/coseal/aslib-r/")
    (synopsis "Interface to the Algorithm Selection Benchmark Library")
    (description
     "This package provides an interface to the algorithm selection benchmark library
at <http://www.aslib.net> and the LLAMA package
(<https://cran.r-project.org/package=llama>) for building algorithm selection
models; see Bischl et al. (2016) <doi:10.1016/j.artint.2016.04.003>.")
    (license license:gpl3)))

(define-public r-askgpt
  (package
    (name "r-askgpt")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "askgpt" version))
       (sha256
        (base32 "1mi42jvnxrm9xhnrps540hmgi3nd3g9g7pjrkcgzmyj58ip98r66"))))
    (properties `((upstream-name . "askgpt")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-rappdirs
                             r-jsonlite
                             r-httr2
                             r-glue
                             r-dplyr
                             r-cli
                             r-callr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/JBGruber/askgpt")
    (synopsis "Asking GPT About R Stuff")
    (description
     "This package provides a chat package connecting to API endpoints by
@code{OpenAI} (<https://platform.openai.com/>) to answer questions (about R).")
    (license license:gpl3+)))

(define-public r-asht
  (package
    (name "r-asht")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asht" version))
       (sha256
        (base32 "08wrqhrlna2vg5icgqcaxciv51gq7rfmd458qy7dqmh7ydxcrxk6"))))
    (properties `((upstream-name . "asht")))
    (build-system r-build-system)
    (propagated-inputs (list r-ssanv
                             r-perm
                             r-exactci
                             r-exact2x2
                             r-coin
                             r-bpcp))
    (home-page "https://cran.r-project.org/package=asht")
    (synopsis "Applied Statistical Hypothesis Tests")
    (description
     "Gives some hypothesis test functions (sign test, median and other quantile
tests, Wilcoxon signed rank test, coefficient of variation test, test of normal
variance, test on weighted sums of Poisson [see Fay and Kim
<doi:10.1002/bimj.201600111>], sample size for t-tests with different variances
and non-equal n per arm, Behrens-Fisher test, nonparametric ABC intervals,
Wilcoxon-Mann-Whitney test [with effect estimates and confidence intervals, see
Fay and Malinovsky <doi:10.1002/sim.7890>], two-sample melding tests [see Fay,
Proschan, and Brittain <doi:10.1111/biom.12231>], one-way ANOVA allowing
var.equal=FALSE [see Brown and Forsythe, 1974, Biometrics]), prevalence
confidence intervals that adjust for sensitivity and specificity [see Lang and
Reiczigel, 2014 <doi:10.1016/j.prevetmed.2013.09.015>] or Bayer, Fay, and
Graubard, 2023 <doi:10.48550/@code{arXiv.2205.13494>}).  The focus is on
hypothesis tests that have compatible confidence intervals, but some functions
only have confidence intervals (e.g., @code{prevSeSp}).")
    (license license:gpl3)))

(define-public r-ashapesampler
  (package
    (name "r-ashapesampler")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ashapesampler" version))
       (sha256
        (base32 "03x0vffik7k0cccr4m70ap4nl1zw2zp5iy3nr260dgivxlj49kxk"))))
    (properties `((upstream-name . "ashapesampler")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncnorm
                             r-tda
                             r-rvcg
                             r-pracma
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-alphashape3d
                             r-alphahull))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ashapesampler")
    (synopsis "Generating Alpha Shapes")
    (description
     "Understanding morphological variation is an important task in many applications.
 Recent studies in computational biology have focused on developing
computational tools for the task of sub-image selection which aims at
identifying structural features that best describe the variation between classes
of shapes.  A major part in assessing the utility of these approaches is to
demonstrate their performance on both simulated and real datasets.  However,
when creating a model for shape statistics, real data can be difficult to access
and the sample sizes for these data are often small due to them being expensive
to collect.  Meanwhile, the landscape of current shape simulation methods has
been mostly limited to approaches that use black-box inference---making it
difficult to systematically assess the power and calibration of sub-image
models.  In this R package, we introduce the alpha-shape sampler: a
probabilistic framework for simulating realistic 2D and 3D shapes based on
probability distributions which can be learned from real data or explicitly
stated by the user.  The ashapesampler package supports two mechanisms for
sampling shapes in two and three dimensions.  The first, empirically sampling
based on an existing data set, was highlighted in the original main text of the
paper.  The second, probabilistic sampling from a known distribution, is the
computational implementation of the theory derived in that paper.  Work based on
Winn-Nunez et al. (2024) <doi:10.1101/2024.01.09.574919>.")
    (license license:gpl3+)))

(define-public r-asgs-foyer
  (package
    (name "r-asgs-foyer")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ASGS.foyer" version))
       (sha256
        (base32 "1zvps8d20ig863dv3jm1pjj9icy88dk378a9j8f0gcgafz5cxi6g"))))
    (properties `((upstream-name . "ASGS.foyer")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp))
    (home-page "https://cran.r-project.org/package=ASGS.foyer")
    (synopsis "Interface to the Australian Statistical Geography Standard")
    (description
     "The Australian Statistical Geography Standard ('ASGS') is a set of shapefiles by
the Australian Bureau of Statistics.  This package provides an interface to
those shapefiles, as well as methods for converting coordinates to shapefiles.")
    (license (license:fsdg-compatible "MPL"))))

(define-public r-asdreader
  (package
    (name "r-asdreader")
    (version "0.1-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asdreader" version))
       (sha256
        (base32 "15a922aw0v5w4hrha03xifx8cpifcc773gambgwqq6i5nz08ya26"))))
    (properties `((upstream-name . "asdreader")))
    (build-system r-build-system)
    (home-page "http://github.com/pierreroudier/asdreader")
    (synopsis "Reading ASD Binary Files in R")
    (description
     "This package provides a simple driver that reads binary data created by the ASD
Inc.  portable spectrometer instruments, such as the @code{FieldSpec} (for more
information, see <http://www.asdi.com/products/fieldspec-spectroradiometers>).
Spectral data can be extracted from the ASD files as raw (DN), white reference,
radiance, or reflectance.  Additionally, the metadata information contained in
the ASD file header can also be accessed.")
    (license license:gpl3)))

(define-public r-ascotracer
  (package
    (name "r-ascotracer")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ascotraceR" version))
       (sha256
        (base32 "0h7q49pdchw0apyrm813qrl4sp6hym31awh1bjlk06fd76ynj72y"))))
    (properties `((upstream-name . "ascotraceR")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra
                             r-sf
                             r-purrr
                             r-lutz
                             r-lubridate
                             r-data-table
                             r-circular))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/IhsanKhaliq/ascotraceR")
    (synopsis "Simulate the Spread of Ascochyta Blight in Chickpea")
    (description
     "This package provides a spatiotemporal model that simulates the spread of
Ascochyta blight in chickpea fields based on location-specific weather
conditions.  This model is adapted from a model developed by Diggle et al.
(2002) <doi:10.1094/PHYTO.2002.92.10.1110> for simulating the spread of
anthracnose in a lupin field.")
    (license license:expat)))

(define-public r-asciisetupreader
  (package
    (name "r-asciisetupreader")
    (version "2.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asciiSetupReader" version))
       (sha256
        (base32 "116xj2d4hbvf0hgac0nqja758chgyf3ycivj0h3pmb0y75dlcbl9"))))
    (properties `((upstream-name . "asciiSetupReader")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-vroom
                             r-stringr
                             r-shiny
                             r-rstudioapi
                             r-readr
                             r-miniui
                             r-haven
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jacobkap/asciiSetupReader")
    (synopsis
     "Reads Fixed-Width ASCII Data Files (.txt or .dat) that Have Accompanying Setup Files (.sps or .sas)")
    (description
     "Lets you open a fixed-width ASCII file (.txt or .dat) that has an accompanying
setup file (.sps or .sas).  These file combinations are sometimes referred to as
.txt+.sps, .txt+.sas, .dat+.sps, or .dat+.sas.  This will only run in a txt-sps
or txt-sas pair in which the setup file contains instructions to open that text
file.  It will NOT open other text files, .sav, .sas, or .por data files.
Fixed-width ASCII files with setup files are common in older (pre-2000)
government data.")
    (license license:expat)))

(define-public r-asciiruler
  (package
    (name "r-asciiruler")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asciiruler" version))
       (sha256
        (base32 "0xhkbsy9dypk09avazgxczyfkh3rhdxhwci688dw1lxnhxv1hj24"))))
    (properties `((upstream-name . "asciiruler")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr))
    (home-page "https://cran.r-project.org/package=asciiruler")
    (synopsis "Render an ASCII Ruler")
    (description
     "An ASCII ruler is for measuring text and is especially useful for sequence
analysis.  Included in this package are methods to create ASCII rulers and
associated @code{GenBank} sequence blocks, multi-column text displays that make
it easy for viewers to locate nucleotides by position.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-asciichartr
  (package
    (name "r-asciichartr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asciichartr" version))
       (sha256
        (base32 "1b73bbysnxy3x3gwhm80xry45m18yh716wrc93v1awk3c1p2cv3m"))))
    (properties `((upstream-name . "asciichartr")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=asciichartr")
    (synopsis "Lightweight ASCII Line Graphs")
    (description
     "Create ASCII line graphs of a time series directly on your terminal in an easy
way.  There are some configurations you can add to make the plot the way you
like.  This project was inspired by the original asciichart package by Igor
Kroitor.")
    (license license:expat)))

(define-public r-asciicast
  (package
    (name "r-asciicast")
    (version "2.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asciicast" version))
       (sha256
        (base32 "0gvdl2yc2fdfl2r5304c6f13qzzcgjaac7gic0pas8j7abrji1ss"))))
    (properties `((upstream-name . "asciicast")))
    (build-system r-build-system)
    (arguments
     (list
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
    (propagated-inputs (list r-withr
                             r-v8
                             r-tibble
                             r-processx
                             r-magick
                             r-jsonlite
                             r-curl
                             r-cli))
    (native-inputs (list esbuild))
    (home-page "https://asciicast.r-lib.org/")
    (synopsis "Create 'Ascii' Screen Casts from R Scripts")
    (description
     "Record asciicast screen casts from R scripts.  Convert them to animated SVG
images, to be used in README files, or blog posts.  Includes asciinema-player as
an HTML widget, and an asciicast knitr engine, to embed ascii screen casts in
Rmarkdown documents.")
    (license license:expat)))

(define-public r-ascii
  (package
    (name "r-ascii")
    (version "2.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ascii" version))
       (sha256
        (base32 "1wp330cspv5f63jcwldg59i8anv8p30kbr635p3i8l5jd9x9wi8k"))))
    (properties `((upstream-name . "ascii")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-digest r-codetools))
    (home-page "https://github.com/mclements/ascii")
    (synopsis "Export R Objects to Several Markup Languages")
    (description
     "Coerce R object to asciidoc', txt2tags', @code{restructuredText}', org', textile
or pandoc syntax.  Package comes with a set of drivers for Sweave'.")
    (license license:gpl2+)))

(define-public r-ascenttraining
  (package
    (name "r-ascenttraining")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ascentTraining" version))
       (sha256
        (base32 "1dwmr33jc2fp9x51kzlqa4vib7xmzvz9a7qlfgvhxhld2bxlrrgi"))))
    (properties `((upstream-name . "ascentTraining")))
    (build-system r-build-system)
    (home-page "https://www.ascent.io/")
    (synopsis "Ascent Training Datasets")
    (description
     "Datasets to be used primarily in conjunction with Ascent training materials but
also for the book SAMS Teach Yourself R in 24 Hours (ISBN: 978-0-672-33848-9).
Version 1.0-7 is largely for use with the book; however, version 1.1 has a much
greater focus on use with training materials, whilst retaining compatibility
with the book.")
    (license license:gpl2)))

(define-public r-asbio
  (package
    (name "r-asbio")
    (version "1.9-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asbio" version))
       (sha256
        (base32 "05as9c0x20wyzzysbpr4mabyfbvhy0c0irdndv33j73psish15y2"))))
    (properties `((upstream-name . "asbio")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-scatterplot3d
                             r-plotrix
                             r-pixmap
                             r-mvtnorm
                             r-multcompview
                             r-lattice
                             r-gwidgets2tcltk
                             r-gwidgets2
                             r-desolve))
    (home-page "https://cran.r-project.org/package=asbio")
    (synopsis "Collection of Statistical Tools for Biologists")
    (description
     "This package contains functions from: Aho, K. (2014) Foundational and Applied
Statistics for Biologists using R. CRC/Taylor and Francis, Boca Raton, FL, ISBN:
978-1-4398-7338-0.")
    (license license:gpl2+)))

(define-public r-asaur
  (package
    (name "r-asaur")
    (version "0.50")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "asaur" version))
       (sha256
        (base32 "0c1rgic76w3i2xhna7i52lyc0p01s5b1mxyn55gqw6i19v9mq0b3"))))
    (properties `((upstream-name . "asaur")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=asaur")
    (synopsis "Data Sets for \"Applied Survival Analysis Using R\"\"")
    (description
     "Data sets are referred to in the text \"Applied Survival Analysis Using R\" by
Dirk F. Moore, Springer, 2016, ISBN: 978-3-319-31243-9,
<DOI:10.1007/978-3-319-31245-3>.")
    (license license:cc0)))

(define-public r-arxiv
  (package
    (name "r-arxiv")
    (version "0.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aRxiv" version))
       (sha256
        (base32 "0fm22lcifq2lmbv2il0jkkp7b426924vwph7yrcqprvlvb3g33id"))))
    (properties `((upstream-name . "aRxiv")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/aRxiv/")
    (synopsis "Interface to the arXiv API")
    (description
     "An interface to the API for @code{arXiv}', a repository of electronic preprints
for computer science, mathematics, physics, quantitative biology, quantitative
finance, and statistics.")
    (license license:expat)))

(define-public r-arutools
  (package
    (name "r-arutools")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ARUtools" version))
       (sha256
        (base32 "136nbn8p19agckjnaa5ggs039c5ya6a9qpnkgq0w4m2pkz6ljs6j"))))
    (properties `((upstream-name . "ARUtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-units
                             r-tidyr
                             r-suncalc
                             r-stringr
                             r-spsurvey
                             r-sf
                             r-seewave
                             r-rlang
                             r-readr
                             r-purrr
                             r-parzer
                             r-lutz
                             r-lubridate
                             r-lifecycle
                             r-hms
                             r-here
                             r-glue
                             r-fs
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://arutools.github.io/ARUtools/")
    (synopsis
     "Management and Processing of Autonomous Recording Unit (ARU) Data")
    (description
     "Parse Autonomous Recording Unit (ARU) data and for sub-sampling recordings.
Extract Metadata from your recordings, select a subset of recordings for
interpretation, and prepare files for processing on the @code{WildTrax}
<https://wildtrax.ca/> platform.  Read and process metadata from recordings
collected using the @code{SongMeter} and BAR-LT types of ARUs.")
    (license license:expat)))

(define-public r-arulesviz
  (package
    (name "r-arulesviz")
    (version "1.5.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arulesViz" version))
       (sha256
        (base32 "1alma9fk92y55zrxr1a5ri2gpkn8kp2wbc3i2vqkmwj48za1a29j"))))
    (properties `((upstream-name . "arulesViz")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-vcd
                             r-tidyr
                             r-tibble
                             r-seriation
                             r-scatterplot3d
                             r-plotly
                             r-igraph
                             r-ggraph
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-arules))
    (home-page "https://github.com/mhahsler/arulesViz")
    (synopsis "Visualizing Association Rules and Frequent Itemsets")
    (description
     "Extends package arules with various visualization techniques for association
rules and itemsets.  The package also includes several interactive
visualizations for rule exploration.  Michael Hahsler (2017)
<doi:10.32614/RJ-2017-047>.")
    (license license:gpl3)))

(define-public r-arulessequences
  (package
    (name "r-arulessequences")
    (version "0.2-31")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arulesSequences" version))
       (sha256
        (base32 "03bs2l9zmjlcjmd18gm0ci2xq0b57wapp5hdiv7icdxqagb4j57n"))))
    (properties `((upstream-name . "arulesSequences")))
    (build-system r-build-system)
    (propagated-inputs (list r-arules))
    (home-page "https://cran.r-project.org/package=arulesSequences")
    (synopsis "Mining Frequent Sequences")
    (description
     "Add-on for arules to handle and mine frequent sequences.  Provides interfaces to
the C++ implementation of @code{cSPADE} by Mohammed J. Zaki.")
    (license license:gpl2)))

(define-public r-arulesnbminer
  (package
    (name "r-arulesnbminer")
    (version "0.1-8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arulesNBMiner" version))
       (sha256
        (base32 "0kqvi7dzq3mrn6cq22gwxh4p54mgfn9s1sd2cfnbw1f9zp078lsn"))))
    (properties `((upstream-name . "arulesNBMiner")))
    (build-system r-build-system)
    (inputs (list openjdk))
    (propagated-inputs (list r-rjava r-arules))
    (home-page "https://github.com/mhahsler/arulesNBMiner")
    (synopsis "Mining NB-Frequent Itemsets and NB-Precise Rules")
    (description
     "NBMiner is an implementation of the model-based mining algorithm for mining
NB-frequent itemsets and NB-precise rules.  Michael Hahsler (2006)
<doi:10.1007/s10618-005-0026-2>.")
    (license license:gpl2)))

(define-public r-arulescba
  (package
    (name "r-arulescba")
    (version "1.2.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arulesCBA" version))
       (sha256
        (base32 "0d8nfqbk3y4vw5n3xnns2gy9jwj07a1zbaag9n0hmxrcs8m5ml83"))))
    (properties `((upstream-name . "arulesCBA")))
    (build-system r-build-system)
    (inputs (list openjdk))
    (propagated-inputs (list r-matrix r-glmnet r-discretization r-arules))
    (home-page "https://github.com/mhahsler/arulesCBA")
    (synopsis "Classification Based on Association Rules")
    (description
     "This package provides the infrastructure for association rule-based
classification including the algorithms CBA, CMAR, CPAR, C4.5, FOIL, PART, PRM,
RCAR, and RIPPER to build associative classifiers.  Hahsler et al (2019)
<doi:10.32614/RJ-2019-048>.")
    (license license:gpl3)))

(define-public r-artsy
  (package
    (name "r-artsy")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aRtsy" version))
       (sha256
        (base32 "08982646gd7m0f7zcj31jq7wmjh0lrl2gys5ma6v6ikqq06piy0c"))))
    (properties `((upstream-name . "aRtsy")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-rcpparmadillo
                             r-rcpp
                             r-randomforest
                             r-kknn
                             r-ggplot2
                             r-e1071
                             r-ambient))
    (home-page "https://koenderks.github.io/aRtsy/")
    (synopsis "Generative Art with 'ggplot2'")
    (description
     "This package provides algorithms for creating artworks in the ggplot2 language
that incorporate some form of randomness.")
    (license license:gpl3+)))

(define-public r-artpack
  (package
    (name "r-artpack")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "artpack" version))
       (sha256
        (base32 "124lybfsxy62qdwr14w8w88kn4fylfff6qd2xy07x2g3lncf6497"))))
    (properties `((upstream-name . "artpack")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-knitr
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://meghansaha.github.io/artpack/")
    (synopsis "Creates Generative Art Data")
    (description
     "Create data that displays generative art when mapped into a ggplot2 plot.
Functionality includes specialized data frame creation for geometric shapes,
tools that define artistic color palettes, tools for geometrically transforming
data, and other miscellaneous tools that are helpful when using ggplot2 for
generative art.")
    (license license:expat)))

(define-public r-artool
  (package
    (name "r-artool")
    (version "0.11.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ARTool" version))
       (sha256
        (base32 "16awxcncyhry0ygk8gdvlff787837rr8qsyg1pxd11w4v1llrqrf"))))
    (properties `((upstream-name . "ARTool")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr
                             r-magrittr
                             r-lme4
                             r-emmeans
                             r-dplyr
                             r-car))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mjskay/ARTool/")
    (synopsis "Aligned Rank Transform")
    (description
     "The aligned rank transform for nonparametric factorial ANOVAs as described by
Wobbrock, Findlater, Gergle, and Higgins (2011) <doi:10.1145/1978942.1978963>.
Also supports aligned rank transform contrasts as described by Elkin, Kay,
Higgins, and Wobbrock (2021) <doi:10.1145/3472749.3474784>.")
    (license license:gpl2+)))

(define-public r-artofr
  (package
    (name "r-artofr")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ARTofR" version))
       (sha256
        (base32 "1dw9aascnqr5cbk8a862rlma94b39ndgkrhf826qf4k58y92nf5q"))))
    (properties `((upstream-name . "ARTofR")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-rstudioapi r-clipr r-bannercommenter))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ARTofR")
    (synopsis "To Insert Title, Divider, and Block of Comments")
    (description
     "For instructions, check <https://github.com/Hzhang-ouce/AR@code{TofR>}.  This is
a wrapper of @code{bannerCommenter}', for inserting neat comments, headers and
dividers.")
    (license license:expat)))

(define-public r-arthistory
  (package
    (name "r-arthistory")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arthistory" version))
       (sha256
        (base32 "01jw0r3pmwwrs5cb31pjyf5cygnfqzyim2dw45lqd0yywkmc5y3h"))))
    (properties `((upstream-name . "arthistory")))
    (build-system r-build-system)
    (home-page "https://github.com/saralemus7/arthistory")
    (synopsis "Art History Textbook Data")
    (description
     "Data from Gardner and Janson art history textbooks about both the artists
featured in these books as well as their works.  See Helen Gardner (\"Art through
the ages; an introduction to its history and significance,\" 1926,
<https://find.library.duke.edu/catalog/DUKE000104481>.  Helen Gardner, revised
by Horst de la Croix and Richard G. Tansey (\"Gardnerâs Art through the ages,\"
1980, ISBN: 0155037587).  Fred S. Kleiner (\"Gardnerâs art through the ages: a
global history,\" 2020, ISBN: 9781337630702).  Horst de la Croix and Richard G.
Tansey (\"Gardner's art through the ages,\" 1986, ISBN: 0155037633).  Helen
Gardner (\"Art through the ages; an introduction to its history and
significance,\" 1936, <https://find.library.duke.edu/catalog/DUKE001199463>).
Helen Gardner (\"Art through the ages,\" 1948,
<https://find.library.duke.edu/catalog/DUKE001199466>).  Helen Gardner, revised
under the editorship of Sumner M. Crosby (\"Art through the ages,\" 1959,
<https://find.library.duke.edu/catalog/DUKE001199469>).  Helen Gardner, revised
by Horst de la Croix and Richard G. Tansey (\"Gardnerâs Art through the ages,\"
1975, ISBN: 0155037560).  Fred S. Kleiner (\"Gardnerâs Art through the ages: a
global history,\" 2013, ISBN: 9780495915423.  Fred S. Kleiner, Christin J.
Mamiya, Richard G. Tansey (\"Gardnerâs art through the ages,\" 2001, ISBN:
0155083155).  Fred S. Kleiner (\"Gardnerâs Art through the ages: a global
history,\" 2016, ISBN: 9781285837840).  Fred S. Kleiner, Christin J. Mamiya
(\"Gardnerâs art through the ages,\" 2005, ISBN: 0534640958).  Helen Gardner,
revised by Horst de la Croix and Richard G. Tansey (\"Gardnerâs Art through the
ages,\" 1970, ISBN: 0155037528).  Helen Gardner, Richard G. Tansey, Fred S.
Kleiner (\"Gardnerâs Art through the ages,\" 1996, ISBN: 0155011413).  Helen
Gardner, Horst de la Croix, Richard G. Tansey, Diane Kirkpatrick (\"Gardnerâs
Art through the ages,\" 1991, ISBN: 0155037692).  Helen Gardner, Fred S. Kleiner
(\"Gardnerâs Art through the ages: a global history,\" 2009, ISBN:
9780495093077).  Davies, Penelope J.E., Walter B. Denny, Frima Fox Hofrichter,
Joseph F. Jacobs, Ann S. Roberts, David L. Simon (\"Jansonâs history of art:
the western tradition,\" 2007, ISBN: 0131934554).  Davies, Penelope J.E., Walter
B. Denny, Frima Fox Hofrichter, Joseph F. Jacobs, Ann S. Roberts, David L. Simon
(\"Jansonâs history of art: the western tradition,\" 2011, ISBN: 9780205685172).
 H. W. Janson, Anthony F. Janson (\"History of Art,\" 2001, ISBN: 0810934469).  H.
W. Janson, revised and expanded by Anthony F. Janson (\"History of art,\" 1986,
ISBN: 013389388).  H. W. Janson, Dora Jane Janson (\"History of art: a survey of
the major visual arts from the dawn of history to present day,\" 1977, ISBN:
0810910527).  H. W. Janson, Dora Jane Janson (\"History of art: a survey of the
major visual arts from the dawn of history to present day,\" 1969,
<https://find.library.duke.edu/catalog/DUKE000005734>).  H. W. Janson, Dora Jane
Janson (\"History of art: a survey of the major visual arts from the dawn of
history to present day,\" 1963,
<https://find.library.duke.edu/catalog/DUKE001521852>).  H. W. Janson, revised
and expanded by Anthony F. Janson (\"History of art,\" 1991, ISBN: 0810934019).
H. W. Janson, revised and expanded by Anthony F. Janson (\"History of art,\" 1995,
ISBN: 0810934213).")
    (license license:expat)))

(define-public r-artfima
  (package
    (name "r-artfima")
    (version "1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "artfima" version))
       (sha256
        (base32 "1nqsq9fsqk9kag9n7i2r9yvf578nkdfrkkv7qy8650prka0jca2p"))))
    (properties `((upstream-name . "artfima")))
    (build-system r-build-system)
    (propagated-inputs (list r-ltsa r-gsl))
    (home-page "http://www.stats.uwo.ca/faculty/aim")
    (synopsis "ARTFIMA Model Estimation")
    (description
     "Fit and simulate ARTFIMA. Theoretical autocovariance function and spectral
density function for stationary ARTFIMA.")
    (license license:gpl2+)))

(define-public r-art
  (package
    (name "r-art")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ART" version))
       (sha256
        (base32 "186w1ivj5v3h906crl953qxgai5wiznaih83dgvwgnmabs9p1wvk"))))
    (properties `((upstream-name . "ART")))
    (build-system r-build-system)
    (propagated-inputs (list r-car))
    (home-page "http://decsai.ugr.es/~pjvi/r-packages.html")
    (synopsis "Aligned Rank Transform for Nonparametric Factorial Analysis")
    (description
     "An implementation of the Aligned Rank Transform technique for factorial analysis
(see references below for details) including models with missing terms
(unsaturated factorial models).  The function first computes a separate aligned
ranked response variable for each effect of the user-specified model, and then
runs a classic ANOVA on each of the aligned ranked responses.  For further
details, see Higgins, J. J. and Tashtoush, S. (1994).  An aligned rank transform
test for interaction.  Nonlinear World 1 (2), pp.  201-211.  Wobbrock, J.O.,
Findlater, L., Gergle, D. and Higgins,J.J. (2011).  The Aligned Rank Transform
for nonparametric factorial analyses using only ANOVA procedures.  Proceedings
of the ACM Conference on Human Factors in Computing Systems (CHI 11).  New York:
ACM Press, pp.  143-146. <doi:10.1145/1978942.1978963>.")
    (license license:lgpl3+)))

(define-public r-arse
  (package
    (name "r-arse")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arse" version))
       (sha256
        (base32 "0ssaalc058m09gfcr1n0s729rx2plia3zkhlynj67drclyvhyb0i"))))
    (properties `((upstream-name . "arse")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma r-dplyr))
    (home-page "https://github.com/nr3xe/arse")
    (synopsis "Area of Resilience to Stress Event")
    (description
     "This package provides a method for quantifying resilience after a stress event.
A set of functions calculate the area of resilience that is created by the
departure of baseline y (i.e., robustness) and the time taken x to return to
baseline (i.e., rapidity) after a stress event using the Cartesian coordinates
of the data.  This package has the capability to calculate areas of resilience,
growth, and cases in which resilience is not achieved (e.g., diminished
performance without return to baseline).")
    (license license:expat)))

(define-public r-ars
  (package
    (name "r-ars")
    (version "0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ars" version))
       (sha256
        (base32 "0d9p6ps074d9h20c096kmy1ny6pydfq3qw3srd6mhsw6si5rcq78"))))
    (properties `((upstream-name . "ars")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ars")
    (synopsis "Adaptive Rejection Sampling")
    (description "Adaptive Rejection Sampling, Original version.")
    (license license:gpl2+)))

(define-public r-arrowheadr
  (package
    (name "r-arrowheadr")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arrowheadr" version))
       (sha256
        (base32 "19xya0p6nnw62s43cvv6bcjdm1nffil37192g586jxnkqwlw23bj"))))
    (properties `((upstream-name . "arrowheadr")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr r-bezier))
    (home-page "https://github.com/wjschne/arrowheadr")
    (synopsis "Make Custom Arrowheads")
    (description
     "The ggarrow package is a ggplot2 extension that plots a variety of different
arrow segments with many options to customize.  The arrowheadr package makes it
easy to create custom arrowheads and fins within the parameters that ggarrow
functions expect.  It has preset arrowheads and a collection of functions to
create and transform data for customizing arrows.")
    (license license:cc0)))

(define-public r-arrayhelpers
  (package
    (name "r-arrayhelpers")
    (version "1.1-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arrayhelpers" version))
       (sha256
        (base32 "02rl530qxi1idiqpmzg5wr9vl5c7phizhpj64k5pn8xq9zfxbpaz"))))
    (properties `((upstream-name . "arrayhelpers")))
    (build-system r-build-system)
    (propagated-inputs (list r-svunit))
    (home-page "http://arrayhelpers.r-forge.r-project.org/")
    (synopsis "Convenience Functions for Arrays")
    (description "Some convenient functions to work with arrays.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-arrapply
  (package
    (name "r-arrapply")
    (version "2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arrApply" version))
       (sha256
        (base32 "0bp30622md9zzdgv9g1kqp5k450cd5yzpqji51wwcjp8l347fb6y"))))
    (properties `((upstream-name . "arrApply")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=arrApply")
    (synopsis "Apply a Function to a Margin of an Array")
    (description
     "High performance variant of apply() for a fixed set of functions.  Considerable
speedup of this implementation is a trade-off for universality: user defined
functions cannot be used with this package.  However, about 20 most currently
employed functions are available for usage.  They can be divided in three types:
reducing functions (like mean(), sum() etc., giving a scalar when applied to a
vector), mapping function (like normalise(), cumsum() etc., giving a vector of
the same length as the input vector) and finally, vector reducing function (like
diff() which produces result vector of a length different from the length of
input vector).  Optional or mandatory additional arguments required by some
functions (e.g. norm type for norm()) can be passed as named arguments in ...'.")
    (license license:gpl2+)))

(define-public r-arrangements
  (package
    (name "r-arrangements")
    (version "1.1.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arrangements" version))
       (sha256
        (base32 "0nrlyxgn6667l2rb1q5rvps1anld9aq88qqr3ch2i6zchnqxrdg9"))))
    (properties `((upstream-name . "arrangements")))
    (build-system r-build-system)
    (inputs (list gmp))
    (propagated-inputs (list r-r6 r-gmp))
    (home-page "https://github.com/randy3k/arrangements")
    (synopsis
     "Fast Generators and Iterators for Permutations, Combinations, Integer Partitions and Compositions")
    (description
     "Fast generators and iterators for permutations, combinations, integer partitions
and compositions.  The arrangements are in lexicographical order and generated
iteratively in a memory efficient manner.  It has been demonstrated that
arrangements outperforms most existing packages of similar kind.  Benchmarks
could be found at
<https://randy3k.github.io/arrangements/articles/benchmark.html>.")
    (license license:expat)))

(define-public r-arpsdca
  (package
    (name "r-arpsdca")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aRpsDCA" version))
       (sha256
        (base32 "0ghg43rd6bnv4jp8pkpd1ixp5l6kq5pr0mxq61q24s24g0m3s64p"))))
    (properties `((upstream-name . "aRpsDCA")))
    (build-system r-build-system)
    (home-page "https://github.com/derrickturk/aRpsDCA")
    (synopsis "Arps Decline Curve Analysis in R")
    (description
     "This package provides functions for Arps decline-curve analysis on oil and gas
data.  Includes exponential, hyperbolic, harmonic, and hyperbolic-to-exponential
models as well as the preceding with initial curtailment or a period of linear
rate buildup.  Functions included for computing rate, cumulative production,
instantaneous decline, EUR, time to economic limit, and performing least-squares
best fits.")
    (license license:lgpl2.1)))

(define-public r-arpr
  (package
    (name "r-arpr")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arpr" version))
       (sha256
        (base32 "02qsvmgnyr7aqgpij8m5yg9cww8wbrg6a33vxxvy3sl9v5f7vzh5"))))
    (properties `((upstream-name . "arpr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-magrittr))
    (home-page "https://github.com/statnmap/arpr")
    (synopsis "Advanced R Pipes")
    (description
     "This package provides convenience functions for programming with magrittr pipes.
 Conditional pipes, a string prefixer and a function to pipe the given object
into a specific argument given by character name are currently supported.  It is
named after the dadaist Hans Arp, a friend of Rene Magritte.")
    (license license:gpl3+)))

(define-public r-arpobservation
  (package
    (name "r-arpobservation")
    (version "1.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ARPobservation" version))
       (sha256
        (base32 "13qxw12i7nkbqxbya1ky1bdcq7f59hpgw0kfqkg4rqs6ll4fxp7a"))))
    (properties `((upstream-name . "ARPobservation")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ARPobservation")
    (synopsis
     "Tools for Simulating Direct Behavioral Observation Recording Procedures Based on Alternating Renewal Processes")
    (description
     "This package provides tools for simulating data generated by direct observation
recording.  Behavior streams are simulated based on an alternating renewal
process, given specified distributions of event durations and interim times.
Different procedures for recording data can then be applied to the simulated
behavior streams.  Functions are provided for the following recording methods:
continuous duration recording, event counting, momentary time sampling, partial
interval recording, whole interval recording, and augmented interval recording.")
    (license license:gpl3)))

(define-public r-arplmec
  (package
    (name "r-arplmec")
    (version "2.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ARpLMEC" version))
       (sha256
        (base32 "1d6gvgbnj19dislzjlxn7i0iq7h56zz7hm9x5l865ji790b9smqw"))))
    (properties `((upstream-name . "ARpLMEC")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncatednormal
                             r-relliptical
                             r-numderiv
                             r-mnormt
                             r-mass
                             r-laplacesdemon
                             r-expm))
    (home-page "https://cran.r-project.org/package=ARpLMEC")
    (synopsis
     "Censored Mixed-Effects Models with Different Correlation Structures")
    (description
     "Left, right or interval censored mixed-effects linear model with autoregressive
errors of order p or DEC correlation structure using the type-EM algorithm.  The
error distribution can be Normal or t-Student.  It provides the parameter
estimates, the standard errors and prediction of future observations (available
only for the normal case).  Olivari et all (2021)
<doi:10.1080/10543406.2020.1852246>.")
    (license license:gpl2+)))

(define-public r-arpaldata
  (package
    (name "r-arpaldata")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ARPALData" version))
       (sha256
        (base32 "1mkaryyrzj7mkd7lam122nkq5r02wylhaiyl5r4q7hk8jw3cxpxk"))))
    (properties `((upstream-name . "ARPALData")))
    (build-system r-build-system)
    (propagated-inputs (list r-tm
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-sf
                             r-rlang
                             r-readr
                             r-purrr
                             r-lubridate
                             r-ggplot2
                             r-future-apply
                             r-future
                             r-eurostat
                             r-dplyr
                             r-curl
                             r-aweek
                             r-archive))
    (home-page "https://cran.r-project.org/package=ARPALData")
    (synopsis
     "Retrieving and Analyzing Air Quality and Weather Data from ARPA Lombardia")
    (description
     "This package contains functions for retrieving, managing and analysing air
quality and weather data from Regione Lombardia open database
(<https://www.dati.lombardia.it/>).  Data are collected by ARPA Lombardia
(Lombardia Environmental Protection Agency), Italy, through its ground
monitoring network (<https://www.dati.lombardia.it/stories/s/auv9-c2sj>).  See
the webpage <https://www.arpalombardia.it/> for further information on ARPA
Lombardia's activities and history.  Data quality (e.g. missing values, exported
values, graphical mapping) has been checked involving members of the ARPA
Lombardia's office for air quality control.  The package makes available
observations since 1989 (for weather) and 1968 (for air quality) and are updated
with daily frequency by the regional agency.  Full description of the package
can be retrieved in the companion paper Maranzano \\& Algieri (2024), \"ARPALData:
an R package for retrieving and analyzing air quality and weather data from ARPA
Lombardia (Italy)\", Environmental and Ecological Statistics,
<doi:10.1007/s10651-024-00599-6>.")
    (license license:gpl2+)))

(define-public r-arothron
  (package
    (name "r-arothron")
    (version "2.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Arothron" version))
       (sha256
        (base32 "0clz01096fdkhnh89np3knhdnk78p2faj9zkm5qhg56jzaji8wxi"))))
    (properties `((upstream-name . "Arothron")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-stringr
                             r-rvcg
                             r-rgl
                             r-morpho
                             r-geometry
                             r-foreach
                             r-doparallel
                             r-compositions
                             r-alphashape3d
                             r-abind))
    (home-page "https://cran.r-project.org/package=Arothron")
    (synopsis "Geometric Morphometric Methods and Virtual Anthropology Tools")
    (description
     "This package provides tools for geometric morphometric analysis.  The package
includes tools of virtual anthropology to align two not articulated parts
belonging to the same specimen, to build virtual cavities as endocast (Profico
et al, 2021 <doi:10.1002/ajpa.24340>).")
    (license license:gpl2)))

(define-public r-aroma-core
  (package
    (name "r-aroma-core")
    (version "3.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aroma.core" version))
       (sha256
        (base32 "0i2yh0w7hjljgsbn00vy9wyh03470f5xgqnahm7b83km16jvq9ps"))))
    (properties `((upstream-name . "aroma.core")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer
                             r-r-utils
                             r-r-rsp
                             r-r-oo
                             r-r-methodss3
                             r-r-filesets
                             r-r-devices
                             r-r-cache
                             r-pscbs
                             r-matrixstats
                             r-listenv
                             r-future
                             r-biocmanager))
    (home-page "https://github.com/HenrikBengtsson/aroma.core")
    (synopsis
     "Core Methods and Classes Used by 'aroma.*' Packages Part of the Aroma Framework")
    (description
     "Core methods and classes used by higher-level aroma.* packages part of the Aroma
Project, e.g. aroma.affymetrix and aroma.cn'.")
    (license license:lgpl2.1+)))

(define-public r-aroma-cn
  (package
    (name "r-aroma-cn")
    (version "1.7.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aroma.cn" version))
       (sha256
        (base32 "0mfdwq4qsca80vcak56vnwgkhmjvdgj8dvpmv2a83z7ishk52kk4"))))
    (properties `((upstream-name . "aroma.cn")))
    (build-system r-build-system)
    (propagated-inputs (list r-r-utils
                             r-r-oo
                             r-r-methodss3
                             r-r-filesets
                             r-r-cache
                             r-pscbs
                             r-matrixstats
                             r-future-apply
                             r-aroma-core))
    (home-page "https://www.aroma-project.org/")
    (synopsis "Copy-Number Analysis of Large Microarray Data Sets")
    (description
     "This package provides methods for analyzing DNA copy-number data.  Specifically,
this package implements the multi-source copy-number normalization (MSCN) method
for normalizing copy-number data obtained on various platforms and technologies.
 It also implements the @code{TumorBoost} method for normalizing paired
tumor-normal SNP data.")
    (license license:lgpl2.1+)))

(define-public r-aroma-apd
  (package
    (name "r-aroma-apd")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aroma.apd" version))
       (sha256
        (base32 "1xni6zyrrhh0vaq9gyckls9hinmd4898h51g2y6vzdzd8z9flq4x"))))
    (properties `((upstream-name . "aroma.apd")))
    (build-system r-build-system)
    (propagated-inputs (list r-r-utils r-r-oo r-r-methodss3 r-r-huge))
    (home-page "https://github.com/HenrikBengtsson/aroma.apd")
    (synopsis
     "Probe-Level Data File Format Used by 'aroma.affymetrix' [deprecated]")
    (description
     "DEPRECATED. Do not start building new projects based on this package. (The
(in-house) APD file format was initially developed to store Affymetrix
probe-level data, e.g. normalized CEL intensities.  Chip types can be added to
APD file and similar to methods in the affxparser package, this package provides
methods to read APDs organized by units (probesets).  In addition, the probe
elements can be arranged optimally such that the elements are guaranteed to be
read in order when, for instance, data is read unit by unit.  This speeds up the
read substantially.  This package is supporting the Aroma framework and should
not be used elsewhere.).")
    (license license:lgpl2.1+)))

(define-public r-aroma-affymetrix
  (package
    (name "r-aroma-affymetrix")
    (version "3.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aroma.affymetrix" version))
       (sha256
        (base32 "0h4w7i7hrkfvlkphxz9c0hbaxz455pzx0sb7y3zvsh9ykr3wkq8q"))))
    (properties `((upstream-name . "aroma.affymetrix")))
    (build-system r-build-system)
    (propagated-inputs (list r-r-utils
                             r-r-oo
                             r-r-methodss3
                             r-r-filesets
                             r-r-devices
                             r-r-cache
                             r-matrixstats
                             r-mass
                             r-listenv
                             r-future
                             r-aroma-core
                             r-aroma-apd))
    (home-page "https://www.aroma-project.org/")
    (synopsis "Analysis of Large Affymetrix Microarray Data Sets")
    (description
     "This package provides a cross-platform R framework that facilitates processing
of any number of Affymetrix microarray samples regardless of computer system.
The only parameter that limits the number of chips that can be processed is the
amount of available disk space.  The Aroma Framework has successfully been used
in studies to process tens of thousands of arrays.  This package has actively
been used since 2006.")
    (license license:lgpl2.1+)))

(define-public r-arnie
  (package
    (name "r-arnie")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arnie" version))
       (sha256
        (base32 "14xkgyfn9zvkbgram15w7qzqc5pl1a8ig66cif7a79najrgd914r"))))
    (properties `((upstream-name . "arnie")))
    (build-system r-build-system)
    (home-page "https://github.com/imanuelcostigan/arnie")
    (synopsis "\"Arnie\" box office records 1982-2014")
    (description
     "Arnold Schwarzenegger movie weekend box office records from 1982-2014.")
    (license license:cc-by-sa4.0)))

(define-public r-armspp
  (package
    (name "r-armspp")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "armspp" version))
       (sha256
        (base32 "098c59hdzr4ly8sx72xkcbjmiz5y65id1slsscwjji1yssb23lqq"))))
    (properties `((upstream-name . "armspp")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=armspp")
    (synopsis "Adaptive Rejection Metropolis Sampling (ARMS) via 'Rcpp'")
    (description
     "An efficient Rcpp implementation of the Adaptive Rejection Metropolis Sampling
(ARMS) algorithm proposed by Gilks, W. R., Best, N. G. and Tan, K. K. C. (1995)
<doi:10.2307/2986138>.  This allows for sampling from a univariate target
probability distribution specified by its (potentially unnormalised) log
density.")
    (license license:expat)))

(define-public r-armalstm
  (package
    (name "r-armalstm")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ARMALSTM" version))
       (sha256
        (base32 "0qb0ll79n7j2zcgb0ng5mqzlcil6rg5mfpyygk8rkvqf05l8fxkl"))))
    (properties `((upstream-name . "ARMALSTM")))
    (build-system r-build-system)
    (propagated-inputs (list r-tseries r-tensorflow r-rugarch r-reticulate
                             r-keras))
    (home-page "https://cran.r-project.org/package=ARMALSTM")
    (synopsis "Fitting of Hybrid ARMA-LSTM Models")
    (description
     "The real-life time series data are hardly pure linear or nonlinear.  Merging a
linear time series model like the autoregressive moving average (ARMA) model
with a nonlinear neural network model such as the Long Short-Term Memory (LSTM)
model can be used as a hybrid model for more accurate modeling purposes.  Both
the autoregressive integrated moving average (ARIMA) and autoregressive
fractionally integrated moving average (ARFIMA) models can be implemented.
Details can be found in Box et al. (2015, ISBN: 978-1-118-67502-1) and
Hochreiter and Schmidhuber (1997) <doi:10.1162/neco.1997.9.8.1735>.")
    (license license:gpl3)))

(define-public r-arkhe
  (package
    (name "r-arkhe")
    (version "1.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arkhe" version))
       (sha256
        (base32 "1ray8scf2w9bgxkrkwi11iashphg4xbbgb7crbxcw7zf1pk03zi8"))))
    (properties `((upstream-name . "arkhe")))
    (build-system r-build-system)
    (home-page "https://packages.tesselle.org/arkhe/")
    (synopsis "Tools for Cleaning Rectangular Data")
    (description
     "This package provides a dependency-free collection of simple functions for
cleaning rectangular data.  This package allows to detect, count and replace
values or discard rows/columns using a predicate function.  In addition, it
provides tools to check conditions and return informative error messages.")
    (license license:gpl3+)))

(define-public r-arkdb
  (package
    (name "r-arkdb")
    (version "0.0.18")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arkdb" version))
       (sha256
        (base32 "1zq4nrxi7h265zs10ay95s95s56nkwxfzljvbglj03adsb1fxz6s"))))
    (properties `((upstream-name . "arkdb")))
    (build-system r-build-system)
    (propagated-inputs (list r-dbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ropensci/arkdb")
    (synopsis "Archive and Unarchive Databases Using Flat Files")
    (description
     "Flat text files provide a robust, compressible, and portable way to store tables
from databases.  This package provides convenient functions for exporting tables
from relational database connections into compressed text files and streaming
those text files back into a database without requiring the whole table to fit
in working memory.")
    (license license:expat)))

(define-public r-arimaann
  (package
    (name "r-arimaann")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ARIMAANN" version))
       (sha256
        (base32 "0n4n9srl56s6pxjib43ksb9rahmsb509sfvpjk4py8m4r01ab2m2"))))
    (properties `((upstream-name . "ARIMAANN")))
    (build-system r-build-system)
    (propagated-inputs (list r-tseries r-forecast))
    (home-page "https://cran.r-project.org/package=ARIMAANN")
    (synopsis "Time Series Forecasting using ARIMA-ANN Hybrid Model")
    (description
     "Testing, Implementation, and Forecasting of the ARIMA-ANN hybrid model.  The
ARIMA-ANN hybrid model combines the distinct strengths of the Auto-Regressive
Integrated Moving Average (ARIMA) model and the Artificial Neural Network (ANN)
model for time series forecasting.For method details see Zhang, GP (2003)
<doi:10.1016/S0925-2312(01)00702-0>.")
    (license license:gpl3)))

(define-public r-arima2
  (package
    (name "r-arima2")
    (version "3.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arima2" version))
       (sha256
        (base32 "115igm3g8hd0ccs5si7siwr56hynjj84abrivg9ri4zld7vc8lws"))))
    (properties `((upstream-name . "arima2")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (home-page "https://cran.r-project.org/package=arima2")
    (synopsis "Likelihood Based Inference for ARIMA Modeling")
    (description
     "Estimating and analyzing auto regressive integrated moving average (ARIMA)
models.  The primary function in this package is arima(), which fits an ARIMA
model to univariate time series data using a random restart algorithm.  This
approach frequently leads to models that have model likelihood greater than or
equal to that of the likelihood obtained by fitting the same model using the
arima() function from the stats package.  This package enables proper
optimization of model likelihoods, which is a necessary condition for performing
likelihood ratio tests.  This package relies heavily on the source code of the
arima() function of the stats package.  For more information, please see Jesse
Wheeler and Edward L. Ionides (2023) <doi:10.48550/@code{arXiv.2310.01198>}.")
    (license license:gpl3+)))

(define-public r-arigamyannsvr
  (package
    (name "r-arigamyannsvr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AriGaMyANNSVR" version))
       (sha256
        (base32 "1faqripvb6alfajz37zqm70p0c2f6yf9f2ca2bzrsizp0yh81719"))))
    (properties `((upstream-name . "AriGaMyANNSVR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tseries
                             r-psych
                             r-neuralnet
                             r-forecast
                             r-fints
                             r-fgarch
                             r-e1071
                             r-dplyr
                             r-describedf
                             r-atsa
                             r-allmetrics))
    (home-page "https://cran.r-project.org/package=AriGaMyANNSVR")
    (synopsis "Hybrid ARIMA-GARCH and Two Specially Designed ML-Based Models")
    (description
     "Describes a series first.  After that does time series analysis using one hybrid
model and two specially structured Machine Learning (ML) (Artificial Neural
Network or ANN and Support Vector Regression or SVR) models.  More information
can be obtained from Paul and Garai (2022) <doi:10.1007/s41096-022-00128-3>.")
    (license license:gpl3)))

(define-public r-aribrain
  (package
    (name "r-aribrain")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ARIbrain" version))
       (sha256
        (base32 "18c7yxkrnqh18gcfzvdc5wqig6ywdmjcy8rlz0fdj3b8fb84dfpr"))))
    (properties `((upstream-name . "ARIbrain")))
    (build-system r-build-system)
    (propagated-inputs (list r-rnifti r-plyr r-hommel))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ARIbrain")
    (synopsis "All-Resolution Inference")
    (description
     "It performs All-Resolutions Inference (ARI) on functional Magnetic Resonance
Image (@code{fMRI}) data.  As a main feature, it estimates lower bounds for the
proportion of active voxels in a set of clusters as, for example, given by a
cluster-wise analysis.  The method is described in Rosenblatt, Finos, Weeda,
Solari, Goeman (2018) <doi:10.1016/j.neuroimage.2018.07.060>.")
    (license license:gpl2+)))

(define-public r-ari
  (package
    (name "r-ari")
    (version "0.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ari" version))
       (sha256
        (base32 "03w99c918jp23d0kl26vx4m7xjicpgwl5rhn9d0fsm4kvv7j87li"))))
    (properties `((upstream-name . "ari")))
    (build-system r-build-system)
    (inputs (list ffmpeg))
    (propagated-inputs (list r-xml2
                             r-webshot
                             r-tuner
                             r-text2speech
                             r-rvest
                             r-rmarkdown
                             r-purrr
                             r-progress
                             r-hms))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/seankross/ari")
    (synopsis "Automated R Instructor")
    (description
     "Create videos from R Markdown documents, or images and audio files.  These
images can come from image files or HTML slides, and the audio files can be
provided by the user or computer voice narration can be created using Amazon
Polly'.  The purpose of this package is to allow users to create accessible,
translatable, and reproducible lecture videos.  See
<https://aws.amazon.com/polly/> for more information.")
    (license license:expat)))

(define-public r-arht
  (package
    (name "r-arht")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ARHT" version))
       (sha256
        (base32 "1fz81a202r8vk655dg6a03zfq3gfkimqjvmc95k3j02xz0iv58kn"))))
    (properties `((upstream-name . "ARHT")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ARHT")
    (synopsis
     "Adaptable Regularized Hotelling's T^2 Test for High-Dimensional Data")
    (description
     "Perform the Adaptable Regularized Hotelling's T^2 test (ARHT) proposed by Li et
al., (2016) <@code{arXiv:1609.08725>}.  Both one-sample and two-sample mean test
are available with various probabilistic alternative prior models.  It contains
a function to consistently estimate higher order moments of the population
covariance spectral distribution using the spectral of the sample covariance
matrix (Bai et al. (2010) <doi:10.1111/j.1467-842X.2010.00590.x>).  In addition,
it contains a function to sample from 3-variate chi-squared random vectors
approximately with a given correlation matrix when the degrees of freedom are
large.")
    (license license:gpl2+)))

(define-public r-argus
  (package
    (name "r-argus")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "argus" version))
       (sha256
        (base32 "1qg1nphy7jn92zqx1lqg68l5dhpwa4b5407mkwwrsdy5x2r0x7s2"))))
    (properties `((upstream-name . "argus")))
    (build-system r-build-system)
    (propagated-inputs (list r-runuran))
    (home-page "https://cran.r-project.org/package=argus")
    (synopsis "Random Variate Generator for the Argus Distribution")
    (description
     "Random variate generation, density, CDF and quantile function for the Argus
distribution.  Especially, it includes for random variate generation a flexible
inversion method that is also fast in the varying parameter case.  A
Ratio-of-Uniforms method is provided as second alternative.")
    (license license:gpl2+)))

(define-public r-argosfilter
  (package
    (name "r-argosfilter")
    (version "0.70")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "argosfilter" version))
       (sha256
        (base32 "1cqhpq5z807azpc45d00031bhw5q69111jsblyqdp5bg6qinrj9c"))))
    (properties `((upstream-name . "argosfilter")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=argosfilter")
    (synopsis "Argos Locations Filter")
    (description
     "Filters animal satellite tracking data obtained from the Argos
system(<https://www.argos-system.org/>), following the algorithm described in
Freitas et al (2008) <doi:10.1111/j.1748-7692.2007.00180.x>.  It is especially
indicated for telemetry studies of marine animals, where Argos locations are
predominantly of low-quality.")
    (license license:gpl2+)))

(define-public r-argos
  (package
    (name "r-argos")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ARGOS" version))
       (sha256
        (base32 "0qjngax72mz4zhqlb7s8zzl0n3524crp67vmz3mpy2s5hdl3kz83"))))
    (properties `((upstream-name . "ARGOS")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse
                             r-tidyr
                             r-signal
                             r-metrics
                             r-matrix
                             r-magrittr
                             r-glmnet
                             r-desolve
                             r-boot))
    (home-page "<https://github.com/kevinegan31/ARGOS-Package>")
    (synopsis "Automatic Regression for Governing Equations (ARGOS)")
    (description
     "Comprehensive set of tools for performing system identification of both linear
and nonlinear dynamical systems directly from data.  The Automatic Regression
for Governing Equations (ARGOS) simplifies the complex task of constructing
mathematical models of dynamical systems from observed input and output data,
supporting various types of systems, including those described by ordinary
differential equations.  It employs optimal numerical derivatives for enhanced
accuracy and employs formal variable selection techniques to help identify the
most relevant variables, thereby enabling the development of predictive models
for system behavior analysis.")
    (license license:gpl3)))

(define-public r-argonr
  (package
    (name "r-argonr")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "argonR" version))
       (sha256
        (base32 "15hlvansqnky9bnq4r7xza3hb1hzylmhz8117wxz9lxa1wiky2is"))))
    (properties `((upstream-name . "argonR")))
    (build-system r-build-system)
    (arguments
     (list
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
    (propagated-inputs (list r-rstudioapi r-htmltools))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/RinteRface/argonR")
    (synopsis "R Interface to Argon HTML Design")
    (description "R wrapper around the argon HTML library.  More at
<https://demos.creative-tim.com/argon-design-system/>.")
    (license license:gpl2)))

(define-public r-argondash
  (package
    (name "r-argondash")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "argonDash" version))
       (sha256
        (base32 "1wykr7y5375g1nb18ynybccxmd948xrr0gdwxxqsfjf782vlgd2d"))))
    (properties `((upstream-name . "argonDash")))
    (build-system r-build-system)
    (arguments
     (list
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
    (propagated-inputs (list r-shiny r-htmltools r-argonr))
    (native-inputs (list esbuild))
    (home-page "https://github.com/RinteRface/argonDash")
    (synopsis "Argon Shiny Dashboard Template")
    (description
     "Create awesome Bootstrap 4 dashboards powered by Argon'.  See more here
<https://rinterface.github.io/@code{argonDash/>}.")
    (license license:gpl2)))

(define-public r-argofloats
  (package
    (name "r-argofloats")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "argoFloats" version))
       (sha256
        (base32 "10pqxd8yflfhsf03235xgvy9w64ybsmfm61cl428zkh43z7lyjf8"))))
    (properties `((upstream-name . "argoFloats")))
    (build-system r-build-system)
    (propagated-inputs (list r-oce))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ArgoCanada/argoFloats")
    (synopsis "Analysis of Oceanographic Argo Floats")
    (description
     "Supports the analysis of oceanographic data recorded by Argo autonomous drifting
profiling floats.  Functions are provided to (a) download and cache data files,
(b) subset data in various ways, (c) handle quality-control flags and (d) plot
the results according to oceanographic conventions.  A shiny app is provided for
easy exploration of datasets.  The package is designed to work well with the oce
package, providing a wide range of processing capabilities that are particular
to oceanographic analysis.  See Kelley, Harbin, and Richards (2021)
<doi:10.3389/fmars.2021.635922> for more on the scientific context and
applications.")
    (license license:gpl2+)))

(define-public r-argo
  (package
    (name "r-argo")
    (version "3.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "argo" version))
       (sha256
        (base32 "17ys6v2n84fp38zkc43whfgbc8qq1qx41q14899qgglz7xv4axzn"))))
    (properties `((upstream-name . "argo")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-xtable
                             r-xml
                             r-matrix
                             r-glmnet
                             r-boot))
    (home-page "https://cran.r-project.org/package=argo")
    (synopsis
     "Accurate Estimation of Influenza Epidemics using Google Search Data")
    (description
     "Augmented Regression with General Online data (ARGO) for accurate estimation of
influenza epidemics in United States on national level, regional level and state
level.  It replicates the method introduced in paper Yang, S., Santillana, M.
and Kou, S.C. (2015) <doi:10.1073/pnas.1515373112>; Ning, S., Yang, S. and Kou,
S.C. (2019) <doi:10.1038/s41598-019-41559-6>; Yang, S., Ning, S. and Kou, S.C.
(2021) <doi:10.1038/s41598-021-83084-5>.")
    (license license:gpl2)))

(define-public r-arfima
  (package
    (name "r-arfima")
    (version "1.8-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arfima" version))
       (sha256
        (base32 "1msbd52989yqxqxgapgjvzfzzpkr2w9dp7ig8racqpzwqnjhpswb"))))
    (properties `((upstream-name . "arfima")))
    (build-system r-build-system)
    (propagated-inputs (list r-ltsa))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=arfima")
    (synopsis "Fractional ARIMA (and Other Long Memory) Time Series Modeling")
    (description
     "Simulates, fits, and predicts long-memory and anti-persistent time series,
possibly mixed with ARMA, regression, transfer-function components.  Exact
methods (MLE, forecasting, simulation) are used.  Bug reports should be done via
@code{GitHub} (at <https://github.com/JQVeenstra/arfima>), where the development
version of this package lives; it can be installed using devtools.")
    (license license:expat)))

(define-public r-arf
  (package
    (name "r-arf")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arf" version))
       (sha256
        (base32 "1jcvlg1f4y32lg5dfpm0xrp63fbm9xhr82izgmxp0f2mccy6rn4g"))))
    (properties `((upstream-name . "arf")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncnorm r-ranger r-foreach r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bips-hb/arf")
    (synopsis "Adversarial Random Forests")
    (description
     "Adversarial random forests (ARFs) recursively partition data into fully
factorized leaves, where features are jointly independent.  The procedure is
iterative, with alternating rounds of generation and discrimination.  Data
becomes increasingly realistic at each round, until original and synthetic
samples can no longer be reliably distinguished.  This is useful for several
unsupervised learning tasks, such as density estimation and data synthesis.
Methods for both are implemented in this package.  ARFs naturally handle
unstructured data with mixed continuous and categorical covariates.  They
inherit many of the benefits of random forests, including speed, flexibility,
and solid performance with default parameters.  For details, see Watson et al.
(2022) <@code{arXiv:2205.09435>}.")
    (license license:gpl3+)))

(define-public r-arenar
  (package
    (name "r-arenar")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arenar" version))
       (sha256
        (base32 "08b865v7ringqzm5m4ib4nrmlyqywir6bjj7alzmg06dy7mrl9s7"))))
    (properties `((upstream-name . "arenar")))
    (build-system r-build-system)
    (propagated-inputs (list r-plumber
                             r-jsonlite
                             r-ingredients
                             r-ibreakdown
                             r-gistr
                             r-fairmodels
                             r-dalex
                             r-auditor))
    (native-inputs (list r-knitr))
    (home-page "https://arenar.drwhy.ai")
    (synopsis "Arena for the Exploration and Comparison of any ML Models")
    (description
     "Generates data for challenging machine learning models in Arena
<https://arena.drwhy.ai> - an interactive web application.  You can start the
server with XAI (Explainable Artificial Intelligence) plots to be generated
on-demand or precalculate and auto-upload data file beside shareable Arena URL.")
    (license license:gpl3)))

(define-public r-arena2r
  (package
    (name "r-arena2r")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arena2r" version))
       (sha256
        (base32 "14zjpglp389pldi436935fz6mgi4jdgfii1m035nsvihrms9gqkh"))))
    (properties `((upstream-name . "arena2r")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-shinyjs
                             r-shinydashboard
                             r-shinybs
                             r-shiny
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pedroliman/arena2r")
    (synopsis "Plots, Summary Statistics and Tools for Arena Simulation Users")
    (description
     "Reads Arena <https://www.arenasimulation.com/> CSV output files and generates
nice tables and plots.  The package contains a Shiny App that can be used to
interactively visualize Arena's results.")
    (license license:expat)))

(define-public r-areaplot
  (package
    (name "r-areaplot")
    (version "2.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "areaplot" version))
       (sha256
        (base32 "0xqrjihg3w6ri16yc1l8kb25pdmnspfhkgc48vxmm4h8l1b0plzs"))))
    (properties `((upstream-name . "areaplot")))
    (build-system r-build-system)
    (home-page "https://github.com/arni-magnusson/areaplot")
    (synopsis "Plot Stacked Areas and Confidence Bands as Filled Polygons")
    (description
     "Plot stacked areas and confidence bands as filled polygons, or add polygons to
existing plots.  A variety of input formats are supported, including vectors,
matrices, data frames, formulas, etc.")
    (license license:gpl3)))

(define-public r-arealdb
  (package
    (name "r-arealdb")
    (version "0.6.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arealDB" version))
       (sha256
        (base32 "08mmalw9ii4i6ills6i77bfgy3ybzd4161wmag36b0q9fvkkcyhr"))))
    (properties `((upstream-name . "arealDB")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-tabshiftr
                             r-stringr
                             r-sf
                             r-rmapshaper
                             r-rlang
                             r-readr
                             r-purrr
                             r-progress
                             r-ontologics
                             r-magrittr
                             r-dplyr
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/luckinet/arealDB")
    (synopsis "Harmonise and Integrate Heterogeneous Areal Data")
    (description
     "Many relevant applications in the environmental and socioeconomic sciences use
areal data, such as biodiversity checklists, agricultural statistics, or
socioeconomic surveys.  For applications that surpass the spatial, temporal or
thematic scope of any single data source, data must be integrated from several
heterogeneous sources.  Inconsistent concepts, definitions, or messy data tables
make this a tedious and error-prone process. @code{arealDB} tackles those
problems and helps the user to integrate a harmonised databases of areal data.
Read the paper at Ehrmann, Seppelt & Meyer (2020)
<doi:10.1016/j.envsoft.2020.104799>.")
    (license license:gpl3)))

(define-public r-areal
  (package
    (name "r-areal")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "areal" version))
       (sha256
        (base32 "14hwif59lxjdf0crq5mp2w2rhz9b7l1b33r0ssd1j60ml2fv6488"))))
    (properties `((upstream-name . "areal")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf r-rlang r-purrr r-glue r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://chris-prener.github.io/areal/")
    (synopsis "Areal Weighted Interpolation")
    (description
     "This package provides a pipeable, transparent implementation of areal weighted
interpolation with support for interpolating multiple variables in a single
function call.  These tools provide a full-featured workflow for validation and
estimation that fits into both modern data management (e.g. tidyverse) and
spatial data (e.g. sf) frameworks.")
    (license license:gpl3)))

(define-public r-areabiplot
  (package
    (name "r-areabiplot")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "areabiplot" version))
       (sha256
        (base32 "0izgvlg174jbr3fm3qc8zh23kfs7hn9bwd40x6vm90iivrrgdcp7"))))
    (properties `((upstream-name . "areabiplot")))
    (build-system r-build-system)
    (propagated-inputs (list r-nipals))
    (home-page "https://cran.r-project.org/package=areabiplot")
    (synopsis "Area Biplot")
    (description
     "Considering an (n x m) data matrix X, this package is based on the method
proposed by Gower, Groener, and Velden (2010) <doi:10.1198/jcgs.2010.07134>, and
utilize the resulting matrices from the extended version of the NIPALS
decomposition to determine n triangles whose areas are used to visually estimate
the elements of a specific column of X. After a 90-degree rotation of the sample
points, the triangles are drawn regarding the following points: 1.the origin of
the axes; 2.the sample points; 3.  the vector endpoint representing some
variable.")
    (license license:expat)))

(define-public r-area
  (package
    (name "r-area")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "area" version))
       (sha256
        (base32 "0bzl5jagnpd7s8n6dp8v83z282qgfqg3fz52d909dg0fxxrpq30y"))))
    (properties `((upstream-name . "area")))
    (build-system r-build-system)
    (propagated-inputs (list r-cpp11))
    (home-page "https://github.com/hypertidy/area")
    (synopsis "Calculate Area of Triangles and Polygons")
    (description
     "Calculate the area of triangles and polygons using the shoelace formula.  Area
may be signed, taking into account path orientation, or unsigned, ignoring path
orientation.  The shoelace formula is described at
<https://en.wikipedia.org/wiki/Shoelace_formula>.")
    (license license:gpl3)))

(define-public r-ards
  (package
    (name "r-ards")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ards" version))
       (sha256
        (base32 "1dnq63klzbwvkcaxn9bng4wvh8mhggkwa69ypwf5kdn1rjways88"))))
    (properties `((upstream-name . "ards")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://ards.r-sassy.org")
    (synopsis "Creates Analysis Results Datasets")
    (description
     "This package contains functions to help create an Analysis Results Dataset.  The
dataset follows industry recommended structure.  The dataset can be created in
multiple passes, using different data frames as input.  Analysis Results
Datasets are used in the pharmaceutical and biotech industries to capture
analysis in a common tabular data structure.")
    (license license:cc0)))

(define-public r-ardl-nardl
  (package
    (name "r-ardl-nardl")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ardl.nardl" version))
       (sha256
        (base32 "0pcqh69fvvsjmrfjq5x7b9yn5s30cqv0fkf1b3j3m9l2xp8f3k8g"))))
    (properties `((upstream-name . "ardl.nardl")))
    (build-system r-build-system)
    (propagated-inputs (list r-tseries
                             r-tidyselect
                             r-texreg
                             r-stringr
                             r-sandwich
                             r-rlist
                             r-purrr
                             r-plyr
                             r-nardl
                             r-lmtest
                             r-gets
                             r-dplyr
                             r-car))
    (home-page "https://cran.r-project.org/package=ardl.nardl")
    (synopsis
     "Linear and Nonlinear Autoregressive Distributed Lag Models: General-to-Specific Approach")
    (description
     "Estimate the linear and nonlinear autoregressive distributed lag (ARDL & NARDL)
models and the corresponding error correction models, and test for longrun and
short-run asymmetric.  The general-to-specific approach is also available in
estimating the ARDL and NARDL models.  The Pesaran, Shin & Smith (2001)
(<doi:10.1002/jae.616>) bounds test for level relationships is also provided.
The ardl.nardl package also performs short-run and longrun symmetric
restrictions available at Shin et al. (2014) <doi:10.1007/978-1-4899-8008-3_9>
and their corresponding tests.")
    (license license:gpl2+)))

(define-public r-ardl
  (package
    (name "r-ardl")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ARDL" version))
       (sha256
        (base32 "02yimcsbw8fgv0qslxp3f38k6wzaxwmp0f8f0k0nxx5bnlkc9c4c"))))
    (properties `((upstream-name . "ARDL")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-stringr
                             r-msm
                             r-lmtest
                             r-gridextra
                             r-ggplot2
                             r-dynlm
                             r-dplyr
                             r-aod))
    (home-page "https://github.com/Natsiopoulos/ARDL")
    (synopsis "ARDL, ECM and Bounds-Test for Cointegration")
    (description
     "This package creates complex autoregressive distributed lag (ARDL) models and
constructs the underlying unrestricted and restricted error correction model
(ECM) automatically, just by providing the order.  It also performs the
bounds-test for cointegration as described in Pesaran et al. (2001)
<doi:10.1002/jae.616> and provides the multipliers and the cointegrating
equation.  The validity and the accuracy of this package have been verified by
successfully replicating the results of Pesaran et al. (2001) in Natsiopoulos
and Tzeremes (2022) <doi:10.1002/jae.2919>.")
    (license license:gpl3)))

(define-public r-ardeco
  (package
    (name "r-ardeco")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ARDECO" version))
       (sha256
        (base32 "0jdkrv53h71r068rp8kbakz86ahif1jqhmcjp5lwyaj97gw7ssgf"))))
    (properties `((upstream-name . "ARDECO")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rjstat
                             r-jsonlite
                             r-httr
                             r-ghql
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=ARDECO")
    (synopsis "Annual Regional Database of the European Commission (ARDECO)")
    (description
     "This package provides a set of functions to access the ARDECO (Annual Regional
Database of the European Commission) data directly from the official ARDECO
public repository through the exploitation of the ARDECO APIs.  The APIs are
completely transparent to the user and the provided functions provide a direct
access to the ARDECO data.  The ARDECO database is a collection of variables
related to demography, employment, labour market, domestic product, capital
formation.  Each variable can be exposed in one or more units of measure as well
as refers to total values plus economic sectors.  The description of the ARDECO
database can be found at the following URL
<https://urban.jrc.ec.europa.eu/ardeco>.")
    (license license:gpl3)))

(define-public r-ardec
  (package
    (name "r-ardec")
    (version "2.1-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ArDec" version))
       (sha256
        (base32 "17k2lnvh6vf9gy2xmyncriyjxy37ih7plvslld37kbrwh8dhybx0"))))
    (properties `((upstream-name . "ArDec")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ArDec")
    (synopsis "Time Series Autoregressive-Based Decomposition")
    (description
     "Autoregressive-based decomposition of a time series based on the approach in
West (1997).  Particular cases include the extraction of trend and seasonal
components.")
    (license license:gpl2+)))

(define-public r-arctools
  (package
    (name "r-arctools")
    (version "1.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arctools" version))
       (sha256
        (base32 "01a1kmkmnwm8ryv1hr0w79ghbk844w7fnv1yiq9mmwrs4jbgfrcf"))))
    (properties `((upstream-name . "arctools")))
    (build-system r-build-system)
    (propagated-inputs (list r-runstats r-lubridate))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=arctools")
    (synopsis
     "Processing and Physical Activity Summaries of Minute Level Activity Data")
    (description
     "This package provides functions to process minute level actigraphy-measured
activity counts data and extract commonly used physical activity volume and
fragmentation metrics.")
    (license license:gpl3)))

(define-public r-arcpy
  (package
    (name "r-arcpy")
    (version "0.4-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arcpy" version))
       (sha256
        (base32 "02axfyblrsljsi2mkll9qz9f8i1q65am9m5pm3ph37r1nksmwsid"))))
    (properties `((upstream-name . "arcpy")))
    (build-system r-build-system)
    (inputs (list conda))
    (propagated-inputs (list r-reticulate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mkoohafkan/arcpy")
    (synopsis "Interface to 'ArcGIS' 'Python' Modules")
    (description
     "An interface to the @code{ArcGIS} arcpy and arcgis python API
<https://pro.arcgis.com/en/pro-app/latest/arcpy/get-started/arcgis-api-for-python.htm>.
 Provides various tools for installing and configuring a Conda environment for
accessing @code{ArcGIS} geoprocessing functions.  Helper functions for
manipulating and converting @code{ArcGIS} objects from R are also provided.")
    (license license:gpl3+)))

(define-public r-arcpullr
  (package
    (name "r-arcpullr")
    (version "0.2.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arcpullr" version))
       (sha256
        (base32 "1kkfksv7d9firyiwsyaxg1radzvcrxi26krx63hd9p52697ajxm8"))))
    (properties `((upstream-name . "arcpullr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-sf
                             r-rlang
                             r-raster
                             r-jsonlite
                             r-httr
                             r-ggplot2
                             r-dt
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=arcpullr")
    (synopsis "Pull Data from an 'ArcGIS REST' API")
    (description
     "This package provides functions to efficiently query @code{ArcGIS} REST APIs
<https://developers.arcgis.com/rest/>.  Both spatial and SQL queries can be used
to retrieve data.  Simple Feature (sf) objects are utilized to perform spatial
queries.  This package was neither produced nor is maintained by Esri.")
    (license license:gpl3)))

(define-public r-arcokrig
  (package
    (name "r-arcokrig")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ARCokrig" version))
       (sha256
        (base32 "0pk0y0gsw681py0vwizxvh1jqjnapzqfr0mbdpli1sray55xbjr2"))))
    (properties `((upstream-name . "ARCokrig")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpparmadillo r-rcpp r-mvtnorm
                             r-ggplot2))
    (home-page "https://CRAN.R-project.org/package=ARCokrig")
    (synopsis "Autoregressive Cokriging Models for Multifidelity Codes")
    (description
     "For emulating multifidelity computer models.  The major methods include
univariate autoregressive cokriging and multivariate autoregressive cokriging.
The autoregressive cokriging methods are implemented for both hierarchically
nested design and non-nested design.  For hierarchically nested design, the
model parameters are estimated via standard optimization algorithms; For
non-nested design, the model parameters are estimated via Monte Carlo
expectation-maximization (MCEM) algorithms.  In both cases, the priors are
chosen such that the posterior distributions are proper.  Notice that the
uniform priors on range parameters in the correlation function lead to improper
posteriors.  This should be avoided when Bayesian analysis is adopted.  The
development of objective priors for autoregressive cokriging models can be found
in Pulong Ma (2020) <DOI:10.1137/19M1289893>.  The development of the
multivariate autoregressive cokriging models with possibly non-nested design can
be found in Pulong Ma, Georgios Karagiannis, Bledar A Konomi, Taylor G Asher,
Gabriel R Toro, and Andrew T Cox (2019) <@code{arXiv:1909.01836>}.")
    (license license:gpl2+)))

(define-public r-arco
  (package
    (name "r-arco")
    (version "0.3-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ArCo" version))
       (sha256
        (base32 "1afjdmcalx3m19jlvqs83fg5qlds59l5zzg3pzk13qk31r0hz7mk"))))
    (properties `((upstream-name . "ArCo")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-glmnet r-boot))
    (home-page "https://cran.r-project.org/package=ArCo")
    (synopsis "Artificial Counterfactual Package")
    (description
     "Set of functions to analyse and estimate Artificial Counterfactual models from
Carvalho, Masini and Medeiros (2016) <DOI:10.2139/ssrn.2823687>.")
    (license license:expat)))

(define-public r-archivist-github
  (package
    (name "r-archivist-github")
    (version "0.2.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "archivist.github" version))
       (sha256
        (base32 "092fzi505vx9xbk41m86d0isxna42iflp7q2kjiqa6z1ccvim2yx"))))
    (properties `((upstream-name . "archivist.github")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr r-git2r r-digest r-archivist))
    (native-inputs (list r-knitr))
    (home-page "http://marcinkosinski.github.io/archivist.github/")
    (synopsis "Tools for Archiving, Managing and Sharing R Objects via GitHub")
    (description
     "The extension of the archivist package integrating the archivist with
@code{GitHub} via @code{GitHub} API, git2r packages and httr package.")
    (license license:gpl2)))

(define-public r-archiveretriever
  (package
    (name "r-archiveretriever")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "archiveRetriever" version))
       (sha256
        (base32 "0zjb4i39s3xkb05h9smk9lwkap7w8gizs5i3ii1qgz2ahi07pywy"))))
    (properties `((upstream-name . "archiveRetriever")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rvest
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-gridextra
                             r-ggplot2
                             r-dplyr
                             r-anytime))
    (home-page "https://github.com/liserman/archiveRetriever/")
    (synopsis "Retrieve Archived Web Pages from the 'Internet Archive'")
    (description
     "Scraping content from archived web pages stored in the Internet Archive
(<https://archive.org>) using a systematic workflow.  Get an overview of the
mementos available from the respective homepage, retrieve the Urls and links of
the page and finally scrape the content.  The final output is stored in tibbles,
which can be then easily used for further analysis.")
    (license license:asl2.0)))

(define-public r-archive
  (package
    (name "r-archive")
    (version "1.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "archive" version))
       (sha256
        (base32 "1ia4i59iadfvbndynk6pysnrs575s1b58gf1gpbxqra2sf0niskm"))))
    (properties `((upstream-name . "archive")))
    (build-system r-build-system)
    (inputs (list zlib openssl libarchive libarchive libarchive))
    (propagated-inputs (list r-tibble r-rlang r-glue r-cli))
    (native-inputs (list pkg-config))
    (home-page "https://archive.r-lib.org/")
    (synopsis "Multi-Format Archive and Compression Support")
    (description
     "Bindings to libarchive <http://www.libarchive.org> the Multi-format archive and
compression library.  Offers R connections and direct extraction for many
archive formats including tar', ZIP', 7-zip', RAR', CAB and compression formats
including gzip', bzip2', compress', lzma and xz'.")
    (license license:expat)))

(define-public r-archidart
  (package
    (name "r-archidart")
    (version "3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "archiDART" version))
       (sha256
        (base32 "1wvjlg2rwy39czf3qqh9igk9rmk9i7pxa9yl5x9yqmsagwd1av3n"))))
    (properties `((upstream-name . "archiDART")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-sp r-gtools r-geometry))
    (home-page "https://archidart.github.io/")
    (synopsis
     "Plant Root System Architecture Analysis Using DART and RSML Files")
    (description
     "Analysis of complex plant root system architectures (RSA) using the output files
created by Data Analysis of Root Tracings (DART), an open-access software
dedicated to the study of plant root architecture and development across time
series (Le Bot et al (2010) \"DART: a software to analyse root system
architecture and development from captured images\", Plant and Soil,
<DOI:10.1007/s11104-009-0005-2>), and RSA data encoded with the Root System
Markup Language (RSML) (Lobet et al (2015) \"Root System Markup Language: toward
a unified root architecture description language\", Plant Physiology,
<DOI:10.1104/pp.114.253625>).  More information can be found in Delory et al
(2016) \"@code{archiDART}: an R package for the automated computation of plant
root architectural traits\", Plant and Soil, <DOI:10.1007/s11104-015-2673-4>.")
    (license license:gpl2)))

(define-public r-archetyper
  (package
    (name "r-archetyper")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "archetyper" version))
       (sha256
        (base32 "1d4vz7kj7n5j81fwfxvr47if8c7fdycci6n33wf8paac0v2paqli"))))
    (properties `((upstream-name . "archetyper")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse
                             r-testthat
                             r-stringr
                             r-snakecase
                             r-skimr
                             r-rmarkdown
                             r-readr
                             r-ps
                             r-log4r
                             r-knitr
                             r-here
                             r-feather
                             r-config
                             r-bannercommenter))
    (native-inputs (list r-knitr))
    (home-page "https://mkorvink.github.io/archetyper/index.html")
    (synopsis "An Archetype for Data Mining and Data Science Projects")
    (description
     "This package provides a project template to support the data science workflow.")
    (license license:gpl3+)))

(define-public r-archetypal
  (package
    (name "r-archetypal")
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "archetypal" version))
       (sha256
        (base32 "1acz5fz5azhz3kq8zsxpp8k04jh2jmvlx0phcwlvvzhr0xs8lln3"))))
    (properties `((upstream-name . "archetypal")))
    (build-system r-build-system)
    (propagated-inputs (list r-plot3d
                             r-matrix
                             r-lpsolve
                             r-inflection
                             r-geometry
                             r-entropy
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=archetypal")
    (synopsis "Finds the Archetypal Analysis of a Data Frame")
    (description
     "This package performs archetypal analysis by using Principal Convex Hull
Analysis under a full control of all algorithmic parameters.  It contains a set
of functions for determining the initial solution, the optimal algorithmic
parameters and the optimal number of archetypes.  Post run tools are also
available for the assessment of the derived solution.  Morup, M., Hansen, LK
(2012) <doi:10.1016/j.neucom.2011.06.033>.  Hochbaum, DS, Shmoys, DB (1985)
<doi:10.1287/moor.10.2.180>.  Eddy, WF (1977) <doi:10.1145/355759.355768>.
Barber, CB, Dobkin, DP, Huhdanpaa, HT (1996) <doi:10.1145/235815.235821>.
Christopoulos, DT (2016) <doi:10.2139/ssrn.3043076>.  Falk, A., Becker, A.,
Dohmen, T., Enke, B., Huffman, D., Sunde, U. (2018), <doi:10.1093/qje/qjy013>.
Christopoulos, DT (2015) <doi:10.1016/j.jastp.2015.03.009> .  Murari, A.,
Peluso, E., Cianfrani, Gaudio, F., Lungaroni, M., (2019),
<doi:10.3390/e21040394>.")
    (license license:gpl2+)))

(define-public r-archeoviz
  (package
    (name "r-archeoviz")
    (version "1.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "archeoViz" version))
       (sha256
        (base32 "1xx6ai74ps70ljx9pcaa5qjvqayvdjw79pk200jgjcxd3ykqiwhz"))))
    (properties `((upstream-name . "archeoViz")))
    (build-system r-build-system)
    (propagated-inputs (list r-svglite
                             r-shinythemes
                             r-shiny
                             r-reshape2
                             r-plotly
                             r-mgcv
                             r-knitr
                             r-htmlwidgets
                             r-ggplot2
                             r-cxhull))
    (native-inputs (list r-knitr))
    (home-page "https://archeoviz.hypotheses.org")
    (synopsis
     "Visualisation, Exploration, and Web Communication of Archaeological Spatial Data")
    (description
     "An R Shiny application for visual and statistical exploration and web
communication of archaeological spatial data, either remains or sites.  It
offers interactive 3D and 2D visualisations (cross sections and maps of remains,
timeline of the work made in a site) which can be exported in SVG and HTML
formats.  It performs simple spatial statistics (convex hull, regression
surfaces, 2D kernel density estimation) and allows exporting data to other
online applications for more complex methods. @code{archeoViz} can be used
offline locally or deployed on a server, either with interactive input of data
or with a static data set.  Example is provided at
<https://analytics.huma-num.fr/archeoviz/en>.")
    (license license:gpl3)))

(define-public r-archeofrag
  (package
    (name "r-archeofrag")
    (version "0.8.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "archeofrag" version))
       (sha256
        (base32 "1xnfb4midmjlhq2x8mv6r0mrjbm529xnfm8y0q9wll73igg696yl"))))
    (properties `((upstream-name . "archeofrag")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sebastien-plutniak/archeofrag")
    (synopsis "Refitting and Spatial Analysis in Archaeology")
    (description
     "This package provides methods to analyse fragmented objects in archaeology using
refitting relationships between fragments scattered in archaeological spatial
units (e.g. stratigraphic layers).  Graphs and graph theory are used to model
archaeological observations.  The package is mainly based on the igraph package
for graph analysis.  Functions can: 1) create, manipulate, and simulate
fragmentation graphs, 2) measure the cohesion and admixture of archaeological
spatial units, and 3) characterise the topology of a specific set of refitting
relationships.  An empirical dataset is also provided as an example.
Documentation about archeofrag is provided by the vignette included in this
package and by the accompanying scientific papers: Plutniak (2021, Journal of
Archaeological Science, <doi:10.1016/j.jas.2021.105501>) and Plutniak (2022,
Journal of Open Source Software, <doi:10.21105/joss.04335>).")
    (license license:gpl3)))

(define-public r-archdata
  (package
    (name "r-archdata")
    (version "1.2-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "archdata" version))
       (sha256
        (base32 "1dahfl9xdnqiwzdrff98x23k1dl19sfdqnv7jlg1xzgvhj1fhk0d"))))
    (properties `((upstream-name . "archdata")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=archdata")
    (synopsis "Example Datasets from Archaeological Research")
    (description
     "The archdata package provides several types of data that are typically used in
archaeological research.  It provides all of the data sets used in \"Quantitative
Methods in Archaeology Using R\" by David L Carlson, one of the Cambridge Manuals
in Archaeology.")
    (license license:gpl2+)))

(define-public r-archaeophases-dataset
  (package
    (name "r-archaeophases-dataset")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ArchaeoPhases.dataset" version))
       (sha256
        (base32 "0yffzc9jmyiil3p0bvf0fpq64mn55swcnizi3bgsl44d4j93y68q"))))
    (properties `((upstream-name . "ArchaeoPhases.dataset")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ArchaeoPhases.dataset")
    (synopsis "Data Sets for 'ArchaeoPhases' Vignettes")
    (description
     "This package provides the data sets used to build the @code{ArchaeoPhases}
vignettes.  The data sets were formerly distributed with @code{ArchaeoPhases}',
however they exceed current CRAN policy for package size.")
    (license license:gpl3)))

(define-public r-archaeophases
  (package
    (name "r-archaeophases")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ArchaeoPhases" version))
       (sha256
        (base32 "0sgsni4swnqazghdzvivacq7a67p8zbsmdpl20ayyff0pxppk966"))))
    (properties `((upstream-name . "ArchaeoPhases")))
    (build-system r-build-system)
    (propagated-inputs (list r-arkhe r-aion))
    (native-inputs (list r-knitr))
    (home-page "https://ArchaeoStat.github.io/ArchaeoPhases/")
    (synopsis
     "Post-Processing of Markov Chain Monte Carlo Simulations for Chronological Modelling")
    (description
     "Statistical analysis of archaeological dates and groups of dates.  This package
allows to post-process Markov Chain Monte Carlo (MCMC) simulations from
@code{ChronoModel} <https://chronomodel.com/>, Oxcal
<https://c14.arch.ox.ac.uk/oxcal.html> or BCal <https://bcal.shef.ac.uk/>.  It
provides functions for the study of rhythms of the long term from the posterior
distribution of a series of dates (tempo and activity plot).  It also allows the
estimation and visualization of time ranges from the posterior distribution of
groups of dates (e.g. duration, transition and hiatus between successive phases)
as described in Philippe and Vibet (2020) <doi:10.18637/jss.v093.c01>.")
    (license license:gpl3+)))

(define-public r-arcgisutils
  (package
    (name "r-arcgisutils")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arcgisutils" version))
       (sha256
        (base32 "0553xmamgcaswnjyq0ayyfgvwl1kijrq0jan80m23kgydgi46hkv"))))
    (properties `((upstream-name . "arcgisutils")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-sf
                             r-rlang
                             r-rcppsimdjson
                             r-httr2
                             r-dbplyr
                             r-cli))
    (home-page "https://github.com/R-ArcGIS/arcgisutils")
    (synopsis "ArcGIS Utility Functions")
    (description
     "Developer oriented utility functions designed to be used as the building blocks
of R packages that work with @code{ArcGIS} Location Services.  It provides
functionality for authorization, Esri JSON construction and parsing, as well as
other utilities pertaining to geometry and Esri type conversions.  To support
@code{ArcGIS} Pro users, authorization can be done via arcgisbinding'.
Installation instructions for arcgisbinding can be found at
<https://r.esri.com/r-bridge-site/arcgisbinding/installing-arcgisbinding.html>.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-arcgisplaces
  (package
    (name "r-arcgisplaces")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arcgisplaces" version))
       (sha256
        (base32 "09xfwahdqf8v772g7gxalgzyd77diwzy6snlfjsrnli4f0svlzwi"))))
    (properties `((upstream-name . "arcgisplaces")))
    (build-system r-build-system)
    (inputs (list openssl openssl))
    (propagated-inputs (list r-wk r-rlang r-httr2 r-cli r-arcgisutils))
    (home-page "https://cran.r-project.org/package=arcgisplaces")
    (synopsis "Search for POIs using ArcGIS 'Places Service'")
    (description
     "The @code{ArcGIS} Places service is a ready-to-use location service that can
search for businesses and geographic locations around the world.  It allows you
to find, locate, and discover detailed information about each place.  Query for
places near a point, within a bounding box, filter based on categories, or
provide search text.  arcgisplaces integrates with sf for out of the box
compatibility with other spatial libraries.  Learn more in the Places service
API reference <https://developers.arcgis.com/rest/places/>.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-arcgisgeocode
  (package
    (name "r-arcgisgeocode")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arcgisgeocode" version))
       (sha256
        (base32 "0mnkp50k02p10nk4wbwyilldzwdhcfkiqv2w85spir5kip670j8m"))))
    (properties `((upstream-name . "arcgisgeocode")))
    (build-system r-build-system)
    (inputs (list openssl))
    (propagated-inputs (list r-sf
                             r-rlang
                             r-rcppsimdjson
                             r-jsonify
                             r-httr2
                             r-curl
                             r-cli
                             r-arcgisutils))
    (home-page "https://github.com/r-arcgis/arcgisgeocode")
    (synopsis "Robust Interface to ArcGIS 'Geocoding Services'")
    (description
     "This package provides a very fast and robust interface to @code{ArcGIS}
Geocoding Services'.  Provides capabilities for reverse geocoding, finding
address candidates, character-by-character search autosuggestion, and batch
geocoding.  The public @code{ArcGIS} World Geocoder is accessible for free use
via arcgisgeocode for all services except batch geocoding.  arcgisgeocode also
integrates with arcgisutils to provide access to custom locators or private
@code{ArcGIS} World Geocoder hosted on @code{ArcGIS} Enterprise'.  Learn more in
the Geocode service API reference
<https://developers.arcgis.com/rest/geocode/api-reference/overview-world-geocoding-service.htm>.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-arcgeocoder
  (package
    (name "r-arcgeocoder")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arcgeocoder" version))
       (sha256
        (base32 "02bzhdz8k5c65rzx9dkwxw5v69wq8nbsxk6c6lf2v9wqhq705krp"))))
    (properties `((upstream-name . "arcgeocoder")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://dieghernan.github.io/arcgeocoder/")
    (synopsis "Geocoding with the 'ArcGIS' REST API Service")
    (description
     "Lite interface for finding locations of addresses or businesses around the world
using the @code{ArcGIS} REST API service
<https://developers.arcgis.com/rest/geocode/api-reference/overview-world-geocoding-service.htm>.
 Address text can be converted to location candidates and a location can be
converted into an address.  No API key required.")
    (license license:expat)))

(define-public r-arcensreg
  (package
    (name "r-arcensreg")
    (version "3.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ARCensReg" version))
       (sha256
        (base32 "0qrzxa93cj1ql4iw93ksk58ycfgmncry7q29axhydwh9hsh3lyms"))))
    (properties `((upstream-name . "ARCensReg")))
    (build-system r-build-system)
    (propagated-inputs (list r-tmvtnorm
                             r-rdpack
                             r-rcpparmadillo
                             r-rcpp
                             r-qqplotr
                             r-numderiv
                             r-mvtnorm
                             r-msm
                             r-matrixcalc
                             r-gridextra
                             r-ggplot2))
    (home-page "https://cran.r-project.org/package=ARCensReg")
    (synopsis
     "Fitting Univariate Censored Linear Regression Model with Autoregressive Errors")
    (description
     "It fits a univariate left, right, or interval censored linear regression model
with autoregressive errors, considering the normal or the Student-t distribution
for the innovations.  It provides estimates and standard errors of the
parameters, predicts future observations, and supports missing values on the
dependent variable.  References used for this package: Schumacher, F. L.,
Lachos, V. H., & Dey, D. K. (2017).  Censored regression models with
autoregressive errors: A likelihood-based perspective.  Canadian Journal of
Statistics, 45(4), 375-392 <doi:10.1002/cjs.11338>.  Schumacher, F. L., Lachos,
V. H., Vilca-Labra, F. E., & Castro, L. M. (2018).  Influence diagnostics for
censored regression models with autoregressive errors.  Australian & New Zealand
Journal of Statistics, 60(2), 209-229 <doi:10.1111/anzs.12229>.  Valeriano, K.
A., Schumacher, F. L., Galarza, C. E., & Matos, L. A. (2021).  Censored
autoregressive regression models with Student-t innovations. @code{arXiv}
preprint <@code{arXiv:2110.00224>}.")
    (license license:gpl2+)))

(define-public r-arc
  (package
    (name "r-arc")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arc" version))
       (sha256
        (base32 "0wlp6c2mbsa5fygc4iy0ixgqz49zzcz2mr66sapy1nm0wri1dvdr"))))
    (properties `((upstream-name . "arc")))
    (build-system r-build-system)
    (propagated-inputs (list r-r-utils r-matrix r-discretization r-arules))
    (home-page "https://github.com/kliegr/arc")
    (synopsis "Association Rule Classification")
    (description
     "This package implements the Classification-based on Association Rules (CBA)
algorithm for association rule classification.  The package, also described in
Hahsler et al. (2019) <doi:10.32614/RJ-2019-048>, contains several convenience
methods that allow to automatically set CBA parameters (minimum confidence,
minimum support) and it also natively handles numeric attributes by integrating
a pre-discretization step.  The rule generation phase is handled by the arules
package.  To further decrease the size of the CBA models produced by the arc
package, postprocessing by the @code{qCBA} package is suggested.")
    (license license:gpl3)))

(define-public r-ararredux
  (package
    (name "r-ararredux")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ArArRedux" version))
       (sha256
        (base32 "11h88gnj54cn5fbxf163s8kjqc1q452nzb218fjlwsxxwzaz5gbr"))))
    (properties `((upstream-name . "ArArRedux")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ArArRedux")
    (synopsis
     "Rigorous Data Reduction and Error Propagation of Ar40 / Ar39 Data")
    (description
     "Processes noble gas mass spectrometer data to determine the isotopic composition
of argon (comprised of Ar36, Ar37, Ar38, Ar39 and Ar40) released from
neutron-irradiated potassium-bearing minerals.  Then uses these compositions to
calculate precise and accurate geochronological ages for multiple samples as
well as the covariances between them.  Error propagation is done in matrix form,
which jointly treats all samples and all isotopes simultaneously at every step
of the data reduction process.  Includes methods for regression of the
time-resolved mass spectrometer signals to t=0 ('time zero') for both single-
and multi-collector instruments, blank correction, mass fractionation
correction, detector intercalibration, decay corrections, interference
corrections, interpolation of the irradiation parameter between neutron fluence
monitors, and (weighted mean) age calculation.  All operations are performed on
the logs of the ratios between the different argon isotopes so as to properly
treat them as compositional data', sensu Aitchison [1986, The Statistics of
Compositional Data, Chapman and Hall].")
    (license license:gpl2)))

(define-public r-arakno
  (package
    (name "r-arakno")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arakno" version))
       (sha256
        (base32 "1mbbb4bzcck78wma9nrmpava81cii92rzjq0yl3p38zvnym2i2m9"))))
    (properties `((upstream-name . "arakno")))
    (build-system r-build-system)
    (propagated-inputs (list r-rworldxtra
                             r-rworldmap
                             r-rgbif
                             r-phytools
                             r-jsonlite
                             r-httr
                             r-ape))
    (home-page "https://cran.r-project.org/package=arakno")
    (synopsis "ARAchnid KNowledge Online")
    (description
     "Allows the user to connect with the World Spider Catalogue (WSC;
<https://wsc.nmbe.ch/>) and the World Spider Trait (WST;
<https://spidertraits.sci.muni.cz/>) databases.  Also performs several basic
functions such as checking names validity, retrieving coordinate data from the
Global Biodiversity Information Facility (GBIF; <https://www.gbif.org/>), and
mapping.")
    (license license:gpl3)))

(define-public r-arabicstemr
  (package
    (name "r-arabicstemr")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arabicStemR" version))
       (sha256
        (base32 "1ak57zci3ckfmpdmgw8hadnfg81hxp69h21s6a3ad3yldvcqg010"))))
    (properties `((upstream-name . "arabicStemR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=arabicStemR")
    (synopsis "Arabic Stemmer for Text Analysis")
    (description "Allows users to stem Arabic texts for text analysis.")
    (license license:gpl2+)))

(define-public r-arabic2kansuji
  (package
    (name "r-arabic2kansuji")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "arabic2kansuji" version))
       (sha256
        (base32 "1f8ca7hwbn3vl44xrvpfb5n11rv4sbhv2ksg88kx7rk7hik5rbdi"))))
    (properties `((upstream-name . "arabic2kansuji")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-purrr))
    (home-page "https://github.com/indenkun/arabic2kansuji")
    (synopsis "Convert Arabic Numerals to Kansuji")
    (description
     "Simple functions to convert given Arabic numerals to Kansuji numerical figures
that represent numbers written in Chinese characters.")
    (license license:expat)))

(define-public r-ar-matrix
  (package
    (name "r-ar-matrix")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ar.matrix" version))
       (sha256
        (base32 "1d531hkl50szfa1q0zbp8dp1a9jli63kwvxjgc9n0ar279y47qdz"))))
    (properties `((upstream-name . "ar.matrix")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparsemvn r-sp r-matrix r-mass))
    (home-page "https://cran.r-project.org/package=ar.matrix")
    (synopsis "Simulate Auto Regressive Data from Precision Matricies")
    (description
     "Using sparse precision matricies and Choleski factorization simulates data that
is auto-regressive.")
    (license license:gpl2+)))

(define-public r-ar
  (package
    (name "r-ar")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AR" version))
       (sha256
        (base32 "1wn4g2997c4vc3mzq2pv8ld0ryp0i78v4zlqqryvhshxgnz4f2pr"))))
    (properties `((upstream-name . "AR")))
    (build-system r-build-system)
    (propagated-inputs (list r-distrib))
    (home-page "https://cran.r-project.org/package=AR")
    (synopsis "Another Look at the Acceptance-Rejection Method")
    (description
     "In mathematics, rejection sampling is a basic technique used to generate
observations from a distribution.  It is also commonly called the
Acceptance-Rejection method or Accept-Reject algorithm and is a type of Monte
Carlo method.  Acceptance-Rejection method is based on the observation that to
sample a random variable one can perform a uniformly random sampling of the 2D
cartesian graph, and keep the samples in the region under the graph of its
density function.  Package AR is able to generate/simulate random data from a
probability density function by Acceptance-Rejection method.  Moreover, this
package is a useful teaching resource for graphical presentation of
Acceptance-Rejection method.  From the practical point of view, the user needs
to calculate a constant in Acceptance-Rejection method, which package AR is able
to compute this constant by optimization tools.  Several numerical examples are
provided to illustrate the graphical presentation for the Acceptance-Rejection
Method.")
    (license license:lgpl3+)))

(define-public r-aquodom
  (package
    (name "r-aquodom")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aquodom" version))
       (sha256
        (base32 "11w3qf1fwa5gqbiwfq23hrw8k009xbn8rwdb5fgckykyc49lhqbk"))))
    (properties `((upstream-name . "aquodom")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-rlang
                             r-readr
                             r-openxlsx
                             r-memoise
                             r-magrittr
                             r-lubridate
                             r-httr
                             r-glue
                             r-dplyr
                             r-cachem))
    (home-page "https://redtent.github.io/aquodom/")
    (synopsis "Access to Aquo domaintables from R (Dutch)")
    (description
     "The Aquo Standard is the Dutch Standard for the exchange of data in water
management.  With *aquodom* (short for aquo domaintables) it is easy to exploit
the API (<https://www.aquo.nl/index.php/Hoofdpagina>) to download domaintables
of the Aquo Standard and use them in R.")
    (license license:expat)))

(define-public r-aquaticlifehistory
  (package
    (name "r-aquaticlifehistory")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AquaticLifeHistory" version))
       (sha256
        (base32 "0h6q0ajw2k2f1p0k8j6772p7i78a13amwxzj4ffrykqgwi3pr22v"))))
    (properties `((upstream-name . "AquaticLifeHistory")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlist
                             r-readr
                             r-plyr
                             r-mumin
                             r-minpack-lm
                             r-mass
                             r-magrittr
                             r-ggplot2
                             r-dplyr
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jonathansmart/AquaticLifeHistory")
    (synopsis "Life History Analysis Tools")
    (description
     "Estimate aquatic species life history using robust techniques.  This package
supports users undertaking two types of analysis: 1) Growth from length-at-age
data, and 2) maturity analyses for length and/or age data.  Maturity analyses
are performed using generalised linear model approaches incorporating either a
binomial or quasibinomial distribution.  Growth modelling is performed using the
multimodel approach presented by Smart et al. (2016) \"Multimodel approaches in
shark and ray growth studies: strengths, weaknesses and the future\"
<doi:10.1111/faf.12154>.")
    (license license:gpl3)))

(define-public r-aquality
  (package
    (name "r-aquality")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AQuality" version))
       (sha256
        (base32 "17sd90va6wp6vyg1bjriyv0zkn1hqnrwkm2w92yc0n2kbdffq74l"))))
    (properties `((upstream-name . "AQuality")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=AQuality")
    (synopsis "Water and Measurements Quality")
    (description
     "The functions proposed in this package allows to graphically evaluate the
process of measurement of the chemical components of water.  TSSS() and ICHS
functions are useful to control the quality of measurements of chemical
components of a sample of water.  If one or more measurements include an error,
the generated graph will indicate it with a position of the point that
represents the sample outside the confidence interval.")
    (license license:gpl2)))

(define-public r-aquaenv
  (package
    (name "r-aquaenv")
    (version "1.0-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AquaEnv" version))
       (sha256
        (base32 "07yx7mbslqgqg7ky67n3xfhskaj7s3w5mvl7xkih48xbsdlmxi4l"))))
    (properties `((upstream-name . "AquaEnv")))
    (build-system r-build-system)
    (propagated-inputs (list r-minpack-lm))
    (home-page "https://cran.r-project.org/package=AquaEnv")
    (synopsis
     "Integrated Development Toolbox for Aquatic Chemical Model Generation")
    (description
     "Toolbox for the experimental aquatic chemist, focused on acidification and CO2
air-water exchange.  It contains all elements to model the @code{pH}, the
related CO2 air-water exchange, and aquatic acid-base chemistry for an arbitrary
marine, estuarine or freshwater system.  It contains a suite of tools for
sensitivity analysis, visualisation, modelling of chemical batches, and can be
used to build dynamic models of aquatic systems.  As from version 1.0-4, it also
contains functions to calculate the buffer factors.")
    (license license:gpl2+)))

(define-public r-aquadtree
  (package
    (name "r-aquadtree")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AQuadtree" version))
       (sha256
        (base32 "0i1qp1xr51l3gfvgnyyka06g4khj62hzxxkbsnlkv235i2bwnpzd"))))
    (properties `((upstream-name . "AQuadtree")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AQuadtree")
    (synopsis "Confidentiality of Spatial Point Data")
    (description
     "This package provides an automatic aggregation tool to manage point data
privacy, intended to be helpful for the production of official spatial data and
for researchers.  The package pursues the data accuracy at the smallest possible
areas preventing individual information disclosure.  The methodology, based on
hierarchical geographic data structures performs aggregation and local
suppression of point data to ensure privacy as described in Lagonigro, R.,
Oller, R., Martori J.C. (2017) <doi:10.2436/20.8080.02.55>.  The data structures
are created following the guidelines for grid datasets from the European Forum
for Geography and Statistics.")
    (license license:expat)))

(define-public r-aqp
  (package
    (name "r-aqp")
    (version "2.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aqp" version))
       (sha256
        (base32 "0p43q6xvvks0f424h1rgzwx3ykpb4wrh5xd24khpkxwwigmm5jc4"))))
    (properties `((upstream-name . "aqp")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-sp
                             r-lattice
                             r-farver
                             r-data-table
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ncss-tech/aqp")
    (synopsis "Algorithms for Quantitative Pedology")
    (description
     "The Algorithms for Quantitative Pedology (AQP) project was started in 2009 to
organize a loosely-related set of concepts and source code on the topic of soil
profile visualization, aggregation, and classification into this package (aqp).
Over the past 8 years, the project has grown into a suite of related R packages
that enhance and simplify the quantitative analysis of soil profile data.
Central to the AQP project is a new vocabulary of specialized functions and data
structures that can accommodate the inherent complexity of soil profile
information; freeing the scientist to focus on ideas rather than boilerplate
data processing tasks <doi:10.1016/j.cageo.2012.10.020>.  These functions and
data structures have been extensively tested and documented, applied to projects
involving hundreds of thousands of soil profiles, and deeply integrated into
widely used tools such as @code{SoilWeb}
<https://casoilresource.lawr.ucdavis.edu/soilweb-apps>.  Components of the AQP
project (aqp, @code{soilDB}, @code{sharpshootR}, @code{soilReports} packages)
serve an important role in routine data analysis within the USDA-NRCS Soil
Science Division.  The AQP suite of R packages offer a convenient platform for
bridging the gap between pedometric theory and practice.")
    (license license:gpl3+)))

(define-public r-aqlschemes
  (package
    (name "r-aqlschemes")
    (version "1.7-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AQLSchemes" version))
       (sha256
        (base32 "1lnx2d1lwjzg6wc0kxdkh1lj00057iyvynl6m8nmmg7p8vz4r5jh"))))
    (properties `((upstream-name . "AQLSchemes")))
    (build-system r-build-system)
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=AQLSchemes")
    (synopsis "Retrieving Acceptance Sampling Schemes")
    (description
     "This package provides functions are included for recalling AQL (Acceptable
Quality Level or Acceptance Quality Level) Based single, double, and multiple
attribute sampling plans from the Military Standard (MIL-STD-105E) - American
National Standards Institute/American Society for Quality (ANSI/ASQ Z1.4) tables
and for retrieving variable sampling plans from Military Standard (MIL-STD-414)
- American National Standards Institute/American Society for Quality (ANSI/ASQ
Z1.9) tables.  The sources for these tables are listed in the URL: field.  Also
included are functions for computing the OC (Operating Characteristic) and ASN
(Average Sample Number) coordinates for the attribute plans it recalls, and
functions for computing the estimated proportion nonconforming and the maximum
allowable proportion nonconforming for variable sampling plans.  The MIL-STD AQL
Sampling schemes were the most used and copied set of standards in the world.
They are intended to be used for sampling a stream of lots, and were used in
contract agreements between supplier and customer companies.  When the US
military dropped support of MIL-STD 105E and 414, The American National
Standards Institute (ANSI) and the International Standards Organization (ISO)
adopted the standard with few changes or no changes to the central tables.  This
package is useful because its computer implementation of these tables duplicates
that available in other commercial software and subscription online calculators.")
    (license license:gpl2)))

(define-public r-aqfig
  (package
    (name "r-aqfig")
    (version "0.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aqfig" version))
       (sha256
        (base32 "0pqg54bch6xjd1ybqciil1w52b7bi6d3q41dqafi830zvmq0hb11"))))
    (properties `((upstream-name . "aqfig")))
    (build-system r-build-system)
    (propagated-inputs (list r-geor))
    (home-page "https://cran.r-project.org/package=aqfig")
    (synopsis "Display Air Quality Model Output and Monitoring Data")
    (description
     "Display air quality model output and monitoring data using scatterplots, grids,
and legends.")
    (license (license:fsdg-compatible "Unlimited"))))

(define-public r-aqeval
  (package
    (name "r-aqeval")
    (version "0.5.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AQEval" version))
       (sha256
        (base32 "07f0jgk9hb6gnnsj0vic202smyr5n7xrfrwcaldc6v2lm7sxk5dx"))))
    (properties `((upstream-name . "AQEval")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-strucchange
                             r-segmented
                             r-purrr
                             r-openair
                             r-mgcv
                             r-lubridate
                             r-loa
                             r-ggtext
                             r-ggplot2
                             r-dplyr))
    (home-page "https://github.com/karlropkins/AQEval")
    (synopsis "Air Quality Evaluation")
    (description
     "Developed for use by those tasked with the routine detection, characterisation
and quantification of discrete changes in air quality time-series, such as
identifying the impacts of air quality policy interventions.  The main functions
use signal isolation then break-point/segment (BP/S) methods based on
strucchange and segmented methods to detect and quantify change events (Ropkins
& Tate, 2021, <doi:10.1016/j.scitotenv.2020.142374>).")
    (license license:gpl3+)))

(define-public r-apyramid
  (package
    (name "r-apyramid")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "apyramid" version))
       (sha256
        (base32 "0i1wkqnf1n5x7y7i116gr7y215aibklcnhb7rm76g8wm7241y3vk"))))
    (properties `((upstream-name . "apyramid")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-scales
                             r-rlang
                             r-glue
                             r-ggplot2
                             r-forcats
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/R4EPI/apyramid")
    (synopsis "Visualize Population Pyramids Aggregated by Age")
    (description
     "This package provides a quick method for visualizing non-aggregated line-list or
aggregated census data stratified by age and one or two categorical variables
(e.g. gender and health status) with any number of values.  It returns a ggplot
object, allowing the user to further customize the output.  This package is part
of the R4Epis project <https://r4epis.netlify.app/>.")
    (license license:gpl3)))

(define-public r-aptools
  (package
    (name "r-aptools")
    (version "6.8.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "APtools" version))
       (sha256
        (base32 "171aydyd7s8qll7djl4ysy596wxdf5wfwpqwfi14jjglc9r9qrrr"))))
    (properties `((upstream-name . "APtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-cmprsk))
    (home-page "https://cran.r-project.org/package=APtools")
    (synopsis
     "Average Positive Predictive Values (AP) for Binary Outcomes and Censored Event Times")
    (description
     "We provide tools to estimate two prediction accuracy metrics, the average
positive predictive values (AP) as well as the well-known AUC (the area under
the receiver operator characteristic curve) for risk scores.  The outcome of
interest is either binary or censored event time.  Note that for censored event
time, our functions estimates, the AP and the AUC, are time-dependent for
pre-specified time interval(s).  A function that compares the APs of two risk
scores/markers is also included.  Optional outputs include positive predictive
values and true positive fractions at the specified marker cut-off values, and a
plot of the time-dependent AP versus time (available for event time data).")
    (license license:lgpl3)))

(define-public r-apsimx
  (package
    (name "r-apsimx")
    (version "2.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "apsimx" version))
       (sha256
        (base32 "0k14qmwq2kdwd5z6ciw18wsg1jh1xcspszha5694xbfmip71cqh1"))))
    (properties `((upstream-name . "apsimx")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-rsqlite r-knitr r-jsonlite r-dbi))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=apsimx")
    (synopsis
     "Inspect, Read, Edit and Run 'APSIM' \"Next Generation\" and 'APSIM' Classic")
    (description
     "The functions in this package inspect, read, edit and run files for APSIM \"Next
Generation\" ('JSON') and APSIM \"Classic\" ('XML').  The files with an apsim
extension correspond to APSIM Classic (7.x) - Windows only - and the ones with
an apsimx extension correspond to APSIM \"Next Generation\".  For more information
about APSIM see (<https://www.apsim.info/>) and for APSIM next generation
(<https://apsimnextgeneration.netlify.app/>).")
    (license license:gpl3)))

(define-public r-aprof
  (package
    (name "r-aprof")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aprof" version))
       (sha256
        (base32 "14qclp88j4ygd4vrxxpgy2s9939wcajjsqycdzpvn64ws29sdpvh"))))
    (properties `((upstream-name . "aprof")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat))
    (home-page "http://github.com/MarcoDVisser/aprof")
    (synopsis "Amdahl's Profiler, Directed Optimization Made Easy")
    (description
     "Assists the evaluation of whether and where to focus code optimization, using
Amdahl's law and visual aids based on line profiling.  Amdahl's profiler
organizes profiling output files (including memory profiling) in a visually
appealing way.  It is meant to help to balance development vs. execution time by
helping to identify the most promising sections of code to optimize and
projecting potential gains.  The package is an addition to R's standard
profiling tools and is not a wrapper for them.")
    (license license:gpl2+)))

(define-public r-aprean3
  (package
    (name "r-aprean3")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aprean3" version))
       (sha256
        (base32 "17rnq02sncl6rzwyln10200s43b8z1s2j0kdi9kgcb6qr51v12rv"))))
    (properties `((upstream-name . "aprean3")))
    (build-system r-build-system)
    (home-page "https://github.com/lbraglia/aprean3")
    (synopsis
     "Datasets from Draper and Smith \"Applied Regression Analysis\" (3rd Ed., 1998)")
    (description
     "An unofficial companion to the textbook \"Applied Regression Analysis\" by N.R.
Draper and H. Smith (3rd Ed., 1998) including all the accompanying datasets.")
    (license license:gpl3)))

(define-public r-appsheet
  (package
    (name "r-appsheet")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "appsheet" version))
       (sha256
        (base32 "1csf5p9vmm0bn2kycs6ad7jzcw6c2ck6yimr7lb9nb58820s4g2f"))))
    (properties `((upstream-name . "appsheet")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-httr2
                             r-cli))
    (home-page "https://github.com/calderonsamuel/appsheet")
    (synopsis "An Interface to the 'AppSheet' API")
    (description
     "Functionality to add, delete, read and update table records from your
@code{AppSheet} apps, using the official API <https://api.appsheet.com/>.")
    (license license:expat)))

(define-public r-appsflyer
  (package
    (name "r-appsflyer")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "appsflyeR" version))
       (sha256
        (base32 "1ch0cjxl7jzrdch3mz1cayc88mbf2dgp0l775c3li44204pxp8wl"))))
    (properties `((upstream-name . "appsflyeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://windsor.ai/")
    (synopsis "Get Data from 'Appsflyer' via the 'Windsor.ai' API")
    (description
     "Collect your data on digital marketing campaigns from Appsflyer using the
Windsor.ai API <https://windsor.ai/api-fields/>.")
    (license license:gpl3)))

(define-public r-approxot
  (package
    (name "r-approxot")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "approxOT" version))
       (sha256
        (base32 "1l0grr9158d0lscnxd191h3vbal93sl25r982c5w32iyajcjn71h"))))
    (properties `((upstream-name . "approxOT")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcppcgal r-rcpp r-bh))
    (home-page "https://github.com/ericdunipace/approxOT")
    (synopsis "Approximate and Exact Optimal Transport Methods")
    (description
     "R and C++ functions to perform exact and approximate optimal transport.  All C++
methods can be linked to other R packages via their header files.")
    (license (license:fsdg-compatible "GPL (== 3.0)"))))

(define-public r-approxmatch
  (package
    (name "r-approxmatch")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "approxmatch" version))
       (sha256
        (base32 "1n6v1h4zf1nf8j1a5d0h95v6q8dff39v9061i7zzi9ci3lw04748"))))
    (properties `((upstream-name . "approxmatch")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=approxmatch")
    (synopsis
     "Approximately Optimal Fine Balance Matching with Multiple Groups")
    (description
     "This package provides tools for constructing a matched design with multiple
comparison groups.  Further specifications of refined covariate balance
restriction and exact match on covariate can be imposed.  Matches are
approximately optimal in the sense that the cost of the solution is at most
twice the optimal cost, Crama and Spieksma (1992)
<doi:10.1016/0377-2217(92)90078-N>, Karmakar, Small and Rosenbaum (2019)
<doi:10.1080/10618600.2019.1584900>.")
    (license license:expat)))

(define-public r-approximator
  (package
    (name "r-approximator")
    (version "1.2-8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "approximator" version))
       (sha256
        (base32 "1ya1alx6dzcj8srzrdlcx3fxkb1bzja9l68y66km2mbc4qc03xwb"))))
    (properties `((upstream-name . "approximator")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-emulator))
    (home-page "https://cran.r-project.org/package=approximator")
    (synopsis "Bayesian Prediction of Complex Computer Codes")
    (description
     "This package performs Bayesian prediction of complex computer codes when fast
approximations are available.  It uses a hierarchical version of the Gaussian
process, originally proposed by Kennedy and O'Hagan (2000), Biometrika 87(1):1.")
    (license license:gpl2)))

(define-public r-appriori
  (package
    (name "r-appriori")
    (version "0.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "appRiori" version))
       (sha256
        (base32 "1phy2v2dxk4gdzx1m2a3gghcwyb7iaj0csybpvpk3vl99difkfxd"))))
    (properties `((upstream-name . "appRiori")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-sortable
                             r-shinythemes
                             r-shiny
                             r-rhandsontable
                             r-pracma
                             r-mass
                             r-markdown
                             r-hypr
                             r-dt
                             r-dplyr))
    (home-page "https://github.com/Ugranziol/appRiori")
    (synopsis "Code and Obtain Customized Planned Comparisons with 'appRiori'")
    (description
     "With @code{appRiori}', users upload the research variables and the app guides
them to the best set of comparisons fitting the hypotheses, for both main and
interaction effects.  Through a graphical explanation and empirical examples on
reproducible data, it is shown that it is possible to understand both the logic
behind the planned comparisons and the way to interpret them when a model is
tested.")
    (license license:gpl3+)))

(define-public r-apportion
  (package
    (name "r-apportion")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "apportion" version))
       (sha256
        (base32 "0z8b9qsxsnwy6kmkns6cgri55mvnhsfkwwmljhlp26l93m3llabc"))))
    (properties `((upstream-name . "apportion")))
    (build-system r-build-system)
    (home-page "https://github.com/christopherkenny/apportion")
    (synopsis "Apportion Seats")
    (description
     "Convert populations into integer number of seats for legislative bodies.
Implements apportionment methods used historically and currently in the United
States for reapportionment after the Census, as described in
<https://www.census.gov/history/www/reference/apportionment/methods_of_apportionment.html>.")
    (license license:expat)))

(define-public r-appnn
  (package
    (name "r-appnn")
    (version "1.0-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "appnn" version))
       (sha256
        (base32 "0wkpr6lcd68wlzk6n622ab7sd99l837073czn4k56hw8bw9v68j3"))))
    (properties `((upstream-name . "appnn")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=appnn")
    (synopsis "Amyloid Propensity Prediction Neural Network")
    (description
     "Amyloid propensity prediction neural network (APPNN) is an amyloidogenicity
propensity predictor based on a machine learning approach through recursive
feature selection and feed-forward neural networks, taking advantage of newly
published sequences with experimental, in vitro, evidence of amyloid formation.")
    (license license:gpl3)))

(define-public r-appliedpredictivemodeling
  (package
    (name "r-appliedpredictivemodeling")
    (version "1.1-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AppliedPredictiveModeling" version))
       (sha256
        (base32 "1wi0sw5w1c51rmh9z98wdpk5rgzsylkkb6g019djiwxvj92l99hh"))))
    (properties `((upstream-name . "AppliedPredictiveModeling")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2
                             r-plyr
                             r-mass
                             r-lattice
                             r-ellipse
                             r-corelearn))
    (home-page "http://appliedpredictivemodeling.com/")
    (synopsis "Functions and Data Sets for 'Applied Predictive Modeling'")
    (description
     "This package provides a few functions and several data set for the Springer book
Applied Predictive Modeling'.")
    (license license:gpl2)))

(define-public r-applicable
  (package
    (name "r-applicable")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "applicable" version))
       (sha256
        (base32 "0n459qg3lv088f9yjym33nqi6ahq8whdbc2f0p5m1srvzbqka3mq"))))
    (properties `((upstream-name . "applicable")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-proxyc
                             r-matrix
                             r-hardhat
                             r-glue
                             r-ggplot2
                             r-dplyr))
    (home-page "https://github.com/tidymodels/applicable")
    (synopsis "Compilation of Applicability Domain Methods")
    (description
     "This package provides a modeling package compiling applicability domain methods
in R. It combines different methods to measure the amount of extrapolation new
samples can have from the training set.  See Gadaleta et al (2016)
<doi:10.4018/IJQSPR.2016010102> for an overview of applicability domains.")
    (license license:expat)))

(define-public r-appleadsr
  (package
    (name "r-appleadsr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "appleadsR" version))
       (sha256
        (base32 "19xkzykk6zdbswdkfix9nqnfgab4r9c21rqwpma1r6fjapsp81jf"))))
    (properties `((upstream-name . "appleadsR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://windsor.ai/")
    (synopsis "Get Apple Search Ads Data via the 'Windsor.ai' API")
    (description
     "Collect your data on digital marketing campaigns from Apple Search Ads using the
Windsor.ai API <https://windsor.ai/api-fields/>.")
    (license license:gpl3)))

(define-public r-appestimation
  (package
    (name "r-appestimation")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "APPEstimation" version))
       (sha256
        (base32 "1bg9ma4i3k3xdgyk2h4f368gqnczvlhvjw4114iznmrv1wl4g25c"))))
    (properties `((upstream-name . "APPEstimation")))
    (build-system r-build-system)
    (propagated-inputs (list r-densratio))
    (home-page "https://cran.r-project.org/package=APPEstimation")
    (synopsis "Adjusted Prediction Model Performance Estimation")
    (description
     "Calculating predictive model performance measures adjusted for predictor
distributions using density ratio method (Sugiyama et al., (2012,
ISBN:9781139035613)).  L1 and L2 error for continuous outcome and C-statistics
for binomial outcome are computed.")
    (license license:gpl2)))

(define-public r-appeears
  (package
    (name "r-appeears")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "appeears" version))
       (sha256
        (base32 "1igrbp6mgflgxn9f63d738zzhgsdsvlgwbgidlbqy82v4i4q326p"))))
    (properties `((upstream-name . "appeears")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf
                             r-rstudioapi
                             r-r6
                             r-memoise
                             r-keyring
                             r-jsonlite
                             r-httr
                             r-getpass
                             r-geojsonio))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bluegreen-labs/appeears")
    (synopsis "Interface to 'AppEEARS' NASA Web Services")
    (description
     "Programmatic interface to the NASA Application for Extracting and Exploring
Analysis Ready Samples services (@code{AppEEARS};
<https://appeears.earthdatacloud.nasa.gov/>).  The package provides easy access
to analysis ready earth observation data in R.")
    (license license:agpl3)))

(define-public r-apollonius
  (package
    (name "r-apollonius")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Apollonius" version))
       (sha256
        (base32 "13iz0j2kc3jzzn77jawrm0fg23mqkxh7h7dasfjibmykamvw45nb"))))
    (properties `((upstream-name . "Apollonius")))
    (build-system r-build-system)
    (inputs (list mpfr gmp))
    (propagated-inputs (list r-rcppeigen
                             r-rcppcgal
                             r-rcpp
                             r-polychrome
                             r-plotrix
                             r-gyro
                             r-colorsgen
                             r-bh
                             r-abind))
    (native-inputs (list pkg-config))
    (home-page "https://github.com/stla/Apollonius")
    (synopsis "2D Apollonius Graphs")
    (description
     "Computation of the Apollonius diagram of given 2D points and its dual the
Apollonius graph, also known as the additively weighted VoronoÃ¯ diagram, and
which is a generalization of the classical VoronoÃ¯ diagram.  For references,
see the bibliography in the CGAL documentation at
<https://doc.cgal.org/latest/Apollonius_graph_2/citelist.html>.")
    (license license:gpl3)))

(define-public r-apollo
  (package
    (name "r-apollo")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "apollo" version))
       (sha256
        (base32 "0mlvizr7kf308y431vkdf04p64srkgd7hwbypkw68yz37r1k13za"))))
    (properties `((upstream-name . "apollo")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-rsolnp
                             r-rsghb
                             r-rcppeigen
                             r-rcpparmadillo
                             r-rcpp
                             r-randtoolbox
                             r-numderiv
                             r-mvtnorm
                             r-mnormt
                             r-maxlik
                             r-matrixstats
                             r-deriv
                             r-coda
                             r-cli
                             r-bgw))
    (native-inputs (list r-knitr))
    (home-page "http://www.apolloChoiceModelling.com")
    (synopsis "Tools for Choice Model Estimation and Application")
    (description
     "Choice models are a widely used technique across numerous scientific
disciplines.  The Apollo package is a very flexible tool for the estimation and
application of choice models in R. Users are able to write their own model
functions or use a mix of already available ones.  Random heterogeneity, both
continuous and discrete and at the level of individuals and choices, can be
incorporated for all models.  There is support for both standalone models and
hybrid model structures.  Both classical and Bayesian estimation is available,
and multiple discrete continuous models are covered in addition to discrete
choice.  Multi-threading processing is supported for estimation and a large
number of pre and post-estimation routines, including for computing posterior
(individual-level) distributions are available.  For examples, a manual, and a
support forum, visit <http://www.@code{ApolloChoiceModelling.com>}.  For more
information on choice models see Train, K. (2009) <isbn:978-0-521-74738-7> and
Hess, S. & Daly, A.J. (2014) <isbn:978-1-781-00314-5> for an overview of the
field.")
    (license license:gpl2)))

(define-public r-apoderoides
  (package
    (name "r-apoderoides")
    (version "3.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Apoderoides" version))
       (sha256
        (base32 "1hlcps0zf9ymcrfac7jhrnqzd0qihxfw363qj8zmjj3q6aa3v2k9"))))
    (properties `((upstream-name . "Apoderoides")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppprogress r-rcpp r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Sa-to-shi-A-o-ki/Apoderoides")
    (synopsis
     "Prioritize and Delete Erroneous Taxa in a Large Phylogenetic Tree")
    (description
     "Finds, prioritizes and deletes erroneous taxa in a phylogenetic tree.  This
package calculates scores for taxa in a tree.  Higher score means the taxon is
more erroneous.  If the score is zero for a taxon, the taxon is not erroneous.
This package also can remove all erroneous taxa automatically by iterating score
calculation and pruning taxa with the highest score.")
    (license license:expat)))

(define-public r-apng
  (package
    (name "r-apng")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "apng" version))
       (sha256
        (base32 "0g1rs8wdcbqhyjis2r1a4d96jf0486ncnap97yjv08nk574d42wp"))))
    (properties `((upstream-name . "apng")))
    (build-system r-build-system)
    (propagated-inputs (list r-bitops))
    (home-page "https://cran.r-project.org/package=apng")
    (synopsis "Convert Png Files into Animated Png")
    (description
     "Convert several png files into an animated png file.  This package exports only
a single function `apng'.  Call the apng function with a vector of file names
(which should be png files) to convert them to a single animated png file.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-apmx
  (package
    (name "r-apmx")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "apmx" version))
       (sha256
        (base32 "0i9296dvlzmaxhkp3rj2irxyjmlaazl6abcbgkc2izfn29l2d8nm"))))
    (properties `((upstream-name . "apmx")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-this-path
                             r-purrr
                             r-officer
                             r-flextable
                             r-dplyr
                             r-arsenal))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/stephen-amori/apmx")
    (synopsis "Automated Population Pharmacokinetic Dataset Assembly")
    (description
     "Automated methods to assemble population PK (pharmacokinetic) and PKPD
(pharmacodynamic) datasets for analysis in NONMEM (non-linear mixed effects
modeling) by Bauer (2019) <doi:10.1002/psp4.12404>.  The package includes
functions to build datasets from SDTM (study data tabulation module)
<https://www.cdisc.org/standards/foundational/sdtm>, A@code{DaM} (analysis
dataset module) <https://www.cdisc.org/standards/foundational/adam>, or other
dataset formats.  The package will combine population datasets, add covariates,
and create documentation to support regulatory submission and internal
communication.")
    (license license:gpl3+)))

(define-public r-aplpack
  (package
    (name "r-aplpack")
    (version "1.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aplpack" version))
       (sha256
        (base32 "0kv6sbw8832hlfc6164bfvg1ga4hkfw4c7i11dlz7mbhrw2vqm24"))))
    (properties `((upstream-name . "aplpack")))
    (build-system r-build-system)
    (home-page
     "https://www.uni-bielefeld.de/fakultaeten/wirtschaftswissenschaften/fakultaet/lehrende-ehemalige/pwolf/wolf_aplpack/index.xml")
    (synopsis
     "Another Plot Package: 'Bagplots', 'Iconplots', 'Summaryplots', Slider Functions and Others")
    (description
     "Some functions for drawing some special plots: The function bagplot plots a
bagplot, faces plots chernoff faces, iconplot plots a representation of a
frequency table or a data matrix, plothulls plots hulls of a bivariate data set,
plotsummary plots a graphical summary of a data set, puticon adds icons to a
plot, skyline.hist combines several histograms of a one dimensional data set in
one plot, slider functions supports some interactive graphics, spin3R helps an
inspection of a 3-dim point cloud, stem.leaf plots a stem and leaf plot,
stem.leaf.backback plots back-to-back versions of stem and leaf plot.")
    (license license:gpl2+)))

(define-public r-aplotextra
  (package
    (name "r-aplotextra")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aplotExtra" version))
       (sha256
        (base32 "0sh3c78p37kn00hkps5ai3aqz391wwpbck2rar4rdvwclg4818my"))))
    (properties `((upstream-name . "aplotExtra")))
    (build-system r-build-system)
    (propagated-inputs (list r-yulab-utils
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-maftools
                             r-ggstar
                             r-ggplot2
                             r-ggfun
                             r-forcats
                             r-dplyr
                             r-aplot))
    (home-page "https://github.com/YuLab-SMU/aplotExtra")
    (synopsis "Creating Composite Plots using 'aplot'")
    (description
     "Many complex plots are actually composite plots, such as oncoplot',
funkyheatmap', upsetplot', etc.  We can produce subplots using ggplot2 and
combine them to create composite plots using aplot'.  In this way, it is easy to
customize these complex plots, by adding, deleting or modifying subplots in the
final plot.  This package provides a set of utilities to help users to create
subplots and complex plots.")
    (license license:artistic2.0)))

(define-public r-aplore3
  (package
    (name "r-aplore3")
    (version "0.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aplore3" version))
       (sha256
        (base32 "0af6klscsxvh4amp519b6r41bzysf61p040fj4l5706bbya1arhw"))))
    (properties `((upstream-name . "aplore3")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lbraglia/aplore3")
    (synopsis
     "Datasets from Hosmer, Lemeshow and Sturdivant, \"Applied Logistic Regression\" (3rd Ed., 2013)")
    (description
     "An unofficial companion to \"Applied Logistic Regression\" by D.W. Hosmer, S.
Lemeshow and R.X. Sturdivant (3rd ed., 2013) containing the dataset used in the
book.")
    (license license:gpl3)))

(define-public r-apisensr
  (package
    (name "r-apisensr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "apisensr" version))
       (sha256
        (base32 "00mfmqck521wgx26az57ynmbj8j3c1vxykpqpwg17591s1jw5796"))))
    (properties `((upstream-name . "apisensr")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinymaterial
                             r-shinyjs
                             r-shiny
                             r-rmarkdown
                             r-rhandsontable
                             r-igraph
                             r-htmltools
                             r-golem
                             r-glue
                             r-ggraph
                             r-ggplot2
                             r-episensr
                             r-config
                             r-attempt))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dhaine/apisensr")
    (synopsis
     "Interface to 'episensr' for Sensitivity Analysis of Epidemiological Results")
    (description
     "API for using episensr', Basic sensitivity analysis of the observed relative
risks adjusting for unmeasured confounding and misclassification of the
exposure/outcome, or both.  See <https://cran.r-project.org/package=episensr>.")
    (license license:gpl2)))

(define-public r-apis
  (package
    (name "r-apis")
    (version "2.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "APIS" version))
       (sha256
        (base32 "02s7cpzsp53wk3k4cm6l3hpkc3f191zhg22vwbf8va7dni3d24rq"))))
    (properties `((upstream-name . "APIS")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinythemes
                             r-shinybs
                             r-shiny
                             r-rlang
                             r-plotly
                             r-htmltools
                             r-gridextra
                             r-ggplot2
                             r-foreach
                             r-dt
                             r-dplyr
                             r-doparallel
                             r-data-table
                             r-cowplot))
    (home-page "https://cran.r-project.org/package=APIS")
    (synopsis
     "Auto-Adaptive Parentage Inference Software Tolerant to Missing Parents")
    (description
     "Parentage assignment package.  Parentage assignment is performed based on
observed average Mendelian transmission probability distributions or Exclusion.
The main functions of this package are the function APIS_2n(), APIS_3n and
launch_APIShiny(), which perform parentage assignment.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-api2lm
  (package
    (name "r-api2lm")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "api2lm" version))
       (sha256
        (base32 "05g0lc2cz596hh0876600lfj9d69jqcc3r3f163knn7gqlbbxs6h"))))
    (properties `((upstream-name . "api2lm")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=api2lm")
    (synopsis
     "Functions and Data Sets for the Book \"A Progressive Introduction to Linear Models\"")
    (description
     "Simplifies aspects of linear regression analysis, particularly simultaneous
inference.  Additionally, supports \"A Progressive Introduction to Linear Models\"
by Joshua French (<https://jfrench.github.io/@code{LinearRegression/>}).")
    (license license:gpl3)))

(define-public r-aphylo
  (package
    (name "r-aphylo")
    (version "0.3-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aphylo" version))
       (sha256
        (base32 "1blvj2mz1pdsypxak78pmck097ryzaz24y4flzs5k5djqxgpjwnm"))))
    (properties `((upstream-name . "aphylo")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-rcpp
                             r-matrix
                             r-mass
                             r-fmcmc
                             r-coda
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/USCbiostats/aphylo")
    (synopsis
     "Statistical Inference and Prediction of Annotations in Phylogenetic Trees")
    (description
     "This package implements a parsimonious evolutionary model to analyze and predict
gene-functional annotations in phylogenetic trees as described in Vega Yon et
al. (2021) <doi:10.1371/journal.pcbi.1007948>.  Focusing on computational
efficiency, aphylo makes it possible to estimate pooled phylogenetic models,
including thousands (hundreds) of annotations (trees) in the same run.  The
package also provides the tools for visualization of annotated phylogenies,
calculation of posterior probabilities (prediction) and goodness-of-fit
assessment featured in Vega Yon et al. (2021).")
    (license license:expat)))

(define-public r-aphid
  (package
    (name "r-aphid")
    (version "1.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aphid" version))
       (sha256
        (base32 "1pwr1i3wxh0l24cqp59q6n59p21v81fmgxkb4jmf50a3ggb1lcdj"))))
    (properties `((upstream-name . "aphid")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-openssl r-kmer))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/shaunpwilkinson/aphid")
    (synopsis "Analysis with Profile Hidden Markov Models")
    (description
     "Designed for the development and application of hidden Markov models and profile
HMMs for biological sequence analysis.  Contains functions for multiple and
pairwise sequence alignment, model construction and parameter optimization, file
import/export, implementation of the forward, backward and Viterbi algorithms
for conditional sequence probabilities, tree-based sequence weighting, and
sequence simulation.  Features a wide variety of potential applications
including database searching, gene-finding and annotation, phylogenetic analysis
and sequence classification.  Based on the models and algorithms described in
Durbin et al (1998, ISBN: 9780521629713).")
    (license license:gpl3)))

(define-public r-apfr
  (package
    (name "r-apfr")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "APFr" version))
       (sha256
        (base32 "1vax7rfccds6qz3bi6n1h3nzl9jnxpwk331wmpsbqlk23md3m4g4"))))
    (properties `((upstream-name . "APFr")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=APFr")
    (synopsis
     "Multiple Testing Approach using Average Power Function (APF) and Bayes FDR Robust Estimation")
    (description
     "This package implements a multiple testing approach to the choice of a threshold
gamma on the p-values using the Average Power Function (APF) and Bayes False
Discovery Rate (FDR) robust estimation.  Function apf_fdr() estimates both
quantities from either raw data or p-values.  Function apf_plot() produces
smooth graphs and tables of the relevant results.  Details of the methods can be
found in Quatto P, Margaritella N, et al. (2019) <doi:10.1177/0962280219844288>.")
    (license license:gpl3)))

(define-public r-apexcharter
  (package
    (name "r-apexcharter")
    (version "0.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "apexcharter" version))
       (sha256
        (base32 "1pw36j2b9ypi8gwkc5vgknsbz88ich5d71cpq7rj9xrrkdwh04jn"))))
    (properties `((upstream-name . "apexcharter")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-rlang
                             r-magrittr
                             r-jsonlite
                             r-htmlwidgets
                             r-htmltools
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dreamRs/apexcharter")
    (synopsis
     "Create Interactive Chart with the JavaScript 'ApexCharts' Library")
    (description
     "This package provides an htmlwidgets interface to apexcharts.js'.  Apexcharts is
a modern @code{JavaScript} charting library to build interactive charts and
visualizations with simple API. Apexcharts examples and documentation are
available here: <https://apexcharts.com/>.")
    (license license:expat)))

(define-public r-apex
  (package
    (name "r-apex")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "apex" version))
       (sha256
        (base32 "1cz51g7s4xfr7fvjq0cc9iwy9sb3wwdfrblcjr9pacj09bk2myh7"))))
    (properties `((upstream-name . "apex")))
    (build-system r-build-system)
    (propagated-inputs (list r-phangorn r-ape r-adegenet))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/thibautjombart/apex")
    (synopsis "Phylogenetic Methods for Multiple Gene Data")
    (description
     "Toolkit for the analysis of multiple gene data (Jombart et al.  2017)
<doi:10.1111/1755-0998.12567>.  apex implements the new S4 classes multidna',
@code{multiphyDat} and associated methods to handle aligned DNA sequences from
multiple genes.")
    (license license:gpl2+)))

(define-public r-apercu
  (package
    (name "r-apercu")
    (version "0.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "apercu" version))
       (sha256
        (base32 "1i6ca2dhbn9cykcvhdv5dbvg84b8dr6am7xhlihmy7dfjybbzi3b"))))
    (properties `((upstream-name . "apercu")))
    (build-system r-build-system)
    (propagated-inputs (list r-pls))
    (home-page "https://cran.r-project.org/package=apercu")
    (synopsis "Quick Look at your Data")
    (description
     "The goal is to print an \"aperÃ§u\", a short view of a vector, a matrix, a
data.frame, a list or an array.  By default, it prints the first 5 elements of
each dimension.  By default, the number of columns is equal to the number of
lines.  If you want to control the selection of the elements, you can pass a
list, with each element being a vector giving the selection for each dimension.")
    (license license:cc-by-sa4.0)))

(define-public r-apear
  (package
    (name "r-apear")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aPEAR" version))
       (sha256
        (base32 "08rlfcwwrdy8zz102p67zk4zazjjs7wb08y3kyljn2ps82hmwi19"))))
    (properties `((upstream-name . "aPEAR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-reshape2
                             r-mcl
                             r-lsa
                             r-igraph
                             r-ggrepel
                             r-ggplot2
                             r-ggforce
                             r-dplyr
                             r-data-table
                             r-bayesbio
                             r-arules))
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.com/vugene/aPEAR")
    (synopsis "Advanced Pathway Enrichment Analysis Representation")
    (description
     "Simplify pathway enrichment analysis results by detecting clusters of similar
pathways and visualizing it as an enrichment network, where nodes and edges
describe the pathways and similarity between them, respectively.  This reduces
the redundancy of the overlapping pathways and helps to notice the most
important biological themes in the data (Kerseviciute and Gordevicius (2023)
<doi:10.1101/2023.03.28.534514>).")
    (license license:expat)))

(define-public r-apdesign
  (package
    (name "r-apdesign")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "apdesign" version))
       (sha256
        (base32 "041zyd7ih9nnj92jj9vb9ya1ij9lmj1dzx64q74vyiadw1ix5l66"))))
    (properties `((upstream-name . "apdesign")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix))
    (home-page "https://cran.r-project.org/package=apdesign")
    (synopsis "An Implementation of the Additive Polynomial Design Matrix")
    (description
     "An implementation of the additive polynomial (AP) design matrix.  It constructs
and appends an AP design matrix to a data frame for use with longitudinal data
subject to seasonality.")
    (license license:gpl3)))

(define-public r-apctools
  (package
    (name "r-apctools")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "APCtools" version))
       (sha256
        (base32 "0xp90p7q3a33cqsyh6n2gcsfnq9gchm5vcl13s72gqyfx4jjcnv7"))))
    (properties `((upstream-name . "APCtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-scales
                             r-mgcv
                             r-knitr
                             r-ggpubr
                             r-ggplot2
                             r-dplyr
                             r-colorspace
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://bauer-alex.github.io/APCtools/")
    (synopsis "Routines for Descriptive and Model-Based APC Analysis")
    (description
     "Age-Period-Cohort (APC) analyses are used to differentiate relevant drivers for
long-term developments.  The APCtools package offers visualization techniques
and general routines to simplify the workflow of an APC analysis.  Sophisticated
functions are available both for descriptive and regression model-based
analyses.  For the former, we use density (or ridgeline) matrices and
(hexagonally binned) heatmaps as innovative visualization techniques building on
the concept of Lexis diagrams.  Model-based analyses build on the separation of
the temporal dimensions based on generalized additive models, where a tensor
product interaction surface (usually between age and period) is utilized to
represent the third dimension (usually cohort) on its diagonal.  Such tensor
product surfaces can also be estimated while accounting for further covariates
in the regression model.  See Weigert et al. (2021)
<doi:10.1177/1354816620987198> for methodological details.")
    (license license:expat)))

(define-public r-apcoa
  (package
    (name "r-apcoa")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aPCoA" version))
       (sha256
        (base32 "0ybp7jd1q0md4wbal5cmcl6hg3c1wkdz5mi1w5qddgi472vv1z83"))))
    (properties `((upstream-name . "aPCoA")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan r-randomcolor r-cluster r-car r-ape))
    (home-page "https://cran.r-project.org/package=aPCoA")
    (synopsis "Covariate Adjusted PCoA Plot")
    (description
     "In fields such as ecology, microbiology, and genomics, non-Euclidean distances
are widely applied to describe pairwise dissimilarity between samples.  Given
these pairwise distances, principal coordinates analysis (P@code{CoA}) is
commonly used to construct a visualization of the data.  However, confounding
covariates can make patterns related to the scientific question of interest
difficult to observe.  We provide @code{aPCoA} as an easy-to-use tool to improve
data visualization in this context, enabling enhanced presentation of the
effects of interest.  Details are described in Yushu Shi, Liangliang Zhang,
Kim-Anh Do, Christine Peterson and Robert Jenq (2020) Bioinformatics, Volume 36,
Issue 13, 4099-4101.")
    (license license:gpl2+)))

(define-public r-apci
  (package
    (name "r-apci")
    (version "1.0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "APCI" version))
       (sha256
        (base32 "0d1blmybqp1srgnjn2n3v9i4rz0k7r4p0mcg35kjqsny2firignl"))))
    (properties `((upstream-name . "APCI")))
    (build-system r-build-system)
    (propagated-inputs (list r-survey
                             r-stringr
                             r-magrittr
                             r-ggpubr
                             r-ggplot2
                             r-gee
                             r-dplyr
                             r-data-table))
    (home-page "https://cran.r-project.org/package=APCI")
    (synopsis
     "New Age-Period-Cohort Model for Describing and Investigating Inter-Cohort Differences and Life Course Dynamics")
    (description
     "It implemented Age-Period-Interaction Model (APC-I Model) proposed in the paper
of Liying Luo and James S. Hodges in 2019.  A new age-period-cohort model for
describing and investigating inter-cohort differences and life course dynamics.")
    (license license:gpl2)))

(define-public r-apcf
  (package
    (name "r-apcf")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "apcf" version))
       (sha256
        (base32 "0vf41nmw4i9idygxji27ij2qrmkfw5c5pxax0wrnwqhkib9wvqrp"))))
    (properties `((upstream-name . "apcf")))
    (build-system r-build-system)
    (inputs (list geos))
    (propagated-inputs (list r-wk r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://rnuske.github.io/apcf/")
    (synopsis "Adapted Pair Correlation Function")
    (description
     "The adapted pair correlation function transfers the concept of the pair
correlation function from point patterns to patterns of objects of finite size
and irregular shape (e.g. lakes within a country).  The pair correlation
function describes the spatial distribution of objects, e.g. random, aggregated
or regularly spaced.  This is a reimplementation of the method suggested by
Nuske et al. (2009) <doi:10.1016/j.foreco.2009.09.050> using the library GEOS'.")
    (license license:gpl3+)))

(define-public r-apcanalysis
  (package
    (name "r-apcanalysis")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "APCanalysis" version))
       (sha256
        (base32 "11snn5i8zyjpzf58ica762fpp14v7x5h8a8iwx4s4v81pgvlx862"))))
    (properties `((upstream-name . "APCanalysis")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=APCanalysis")
    (synopsis
     "Analysis of Unreplicated Orthogonal Experiments using All Possible Comparisons")
    (description
     "Analysis of data from unreplicated orthogonal experiments such as 2-level
factorial and fractional factorial designs and Plackett-Burman designs using the
all possible comparisons (APC) methodology developed by Miller (2005)
<doi:10.1198/004017004000000608>.")
    (license license:gpl3)))

(define-public r-apcalign
  (package
    (name "r-apcalign")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "APCalign" version))
       (sha256
        (base32 "0g59k5hr9rj25xqawrnhdxjh1qfwbc1gzgzp56hbpp04n7dy4xwl"))))
    (properties `((upstream-name . "APCalign")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-stringi
                             r-stringdist
                             r-rlang
                             r-readr
                             r-purrr
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-curl
                             r-crayon
                             r-arrow))
    (native-inputs (list r-knitr))
    (home-page "https://traitecoevo.github.io/APCalign/")
    (synopsis "Resolving Plant Taxon Names Using the Australian Plant Census")
    (description
     "The process of resolving taxon names is necessary when working with biodiversity
data.  APCalign uses the Australian Plant Census (APC) and the Australian Plant
Name Index (APNI) to align and update plant taxon names to current, accepted
standards.  APCalign also supplies information about the established status of
plant taxa across different states/territories.")
    (license license:expat)))

(define-public r-apc
  (package
    (name "r-apc")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "apc" version))
       (sha256
        (base32 "0vh6iyxm46k8sfa1xgz0y6m619snnm8s072kml5qgiiw5s7bqnpq"))))
    (properties `((upstream-name . "apc")))
    (build-system r-build-system)
    (propagated-inputs (list r-survey
                             r-reshape
                             r-plyr
                             r-plm
                             r-lmtest
                             r-lattice
                             r-islr
                             r-ggplot2
                             r-chainladder
                             r-car
                             r-aer))
    (home-page "https://cran.r-project.org/package=apc")
    (synopsis "Age-Period-Cohort Analysis")
    (description
     "This package provides functions for age-period-cohort analysis.  Aggregate data
can be organised in matrices indexed by age-cohort, age-period or cohort-period.
 The data can include dose and response or just doses.  The statistical model is
a generalized linear model (GLM) allowing for 3,2,1 or 0 of the
age-period-cohort factors.  Individual-level data should have a row for each
individual and columns for each of age, period, and cohort.  The statistical
model for repeated cross-section is a generalized linear model.  The statistical
model for panel data is ordinary least squares.  The canonical parametrisation
of Kuang, Nielsen and Nielsen (2008) <DOI:10.1093/biomet/asn026> is used.  Thus,
the analysis does not rely on ad hoc identification.")
    (license license:gpl3)))

(define-public r-apatext
  (package
    (name "r-apatext")
    (version "0.1.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "apaText" version))
       (sha256
        (base32 "1y3kwm6kldryqw9jb2dikvijmqxwxpkp4pw64c9pqshxjjnwfqiq"))))
    (properties `((upstream-name . "apaText")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr r-cocor))
    (home-page "https://cran.r-project.org/package=apaText")
    (synopsis
     "Create R Markdown Text for Results in the Style of the American Psychological Association (APA)")
    (description
     "Create APA style text from analyses for use within R Markdown documents.
Descriptive statistics, confidence intervals, and cell sizes are reported.")
    (license (license:fsdg-compatible "MIT License + file LICENSE"))))

(define-public r-apatables
  (package
    (name "r-apatables")
    (version "2.0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "apaTables" version))
       (sha256
        (base32 "0jy6x0z9ivqqkjihqhyg3fxyghqa9gs6q2bpxzjdnbcb3kq151vd"))))
    (properties `((upstream-name . "apaTables")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-mbess
                             r-dplyr
                             r-car
                             r-broom
                             r-boot))
    (home-page "https://github.com/dstanley4/apaTables")
    (synopsis "Create American Psychological Association (APA) Style Tables")
    (description
     "This package provides a common task faced by researchers is the creation of APA
style (i.e., American Psychological Association style) tables from statistical
output.  In R a large number of function calls are often needed to obtain all of
the desired information for a single APA style table.  As well, the process of
manually creating APA style tables in a word processor is prone to transcription
errors.  This package creates Word files (.doc files) containing APA style
tables for several types of analyses.  Using this package minimizes
transcription errors and reduces the number commands needed by the user.")
    (license (license:fsdg-compatible "MIT License + file LICENSE"))))

(define-public r-apackoftheclones
  (package
    (name "r-apackoftheclones")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "APackOfTheClones" version))
       (sha256
        (base32 "1wirzf37n5xl0y3g9n9ic6vyaiyzmx9sip1qg4bilaqn7nazmq90"))))
    (properties `((upstream-name . "APackOfTheClones")))
    (build-system r-build-system)
    (propagated-inputs (list r-seuratobject
                             r-seurat
                             r-rlang
                             r-rcpp
                             r-magrittr
                             r-lifecycle
                             r-hash
                             r-ggplot2
                             r-ggforce
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://qile0317.github.io/APackOfTheClones/")
    (synopsis
     "Visualization of Clonal Expansion for Single Cell Immune Profiles")
    (description
     "Visualize clonal expansion via circle-packing.  A@code{PackOfTheClones} extends
@code{scRepertoire} to produce a publication-ready visualization of clonal
expansion at a single cell resolution, by representing expanded clones as
differently sized circles.  The method was originally implemented by Murray
Christian and Ben Murrell in the following immunology study: Ma et al. (2021)
<doi:10.1126/sciimmunol.abg6356>.")
    (license license:expat)))

(define-public r-apachelogprocessor
  (package
    (name "r-apachelogprocessor")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ApacheLogProcessor" version))
       (sha256
        (base32 "0h4snigh1yhp34vw52h4b6qbh9c4cvwz2cx8fwvbnw6lslmg5cgv"))))
    (properties `((upstream-name . "ApacheLogProcessor")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-foreach r-doparallel))
    (home-page "https://github.com/diogosmendonca/ApacheLogProcessor")
    (synopsis "Process the Apache Web Server Log Files")
    (description
     "This package provides capabilities to process Apache HTTPD Log files.The main
functionalities are to extract data from access and error log files to data
frames.")
    (license (list license:lgpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-apache-sedona
  (package
    (name "r-apache-sedona")
    (version "1.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "apache.sedona" version))
       (sha256
        (base32 "0wn3qh3m8fzy7c1647grajy0lkc7cw9d7fgmv8sc78pnxb4ji3vz"))))
    (properties `((upstream-name . "apache.sedona")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparklyr r-rlang r-lifecycle r-dbplyr r-cli))
    (home-page "https://github.com/apache/sedona/")
    (synopsis "R Interface for Apache Sedona")
    (description
     "R interface for Apache Sedona based on sparklyr (<https://sedona.apache.org>).")
    (license license:asl2.0)))

(define-public r-apa
  (package
    (name "r-apa")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "apa" version))
       (sha256
        (base32 "0w4cqb9fviz6k4b9cj31sgizqmrkxjr9hjdb8ap32ylzr9dw6gy0"))))
    (properties `((upstream-name . "apa")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-rmarkdown
                             r-purrr
                             r-mbess
                             r-magrittr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dgromer/apa")
    (synopsis
     "Format Outputs of Statistical Tests According to APA Guidelines")
    (description
     "Formatter functions in the apa package take the return value of a statistical
test function, e.g. a call to chisq.test() and return a string formatted
according to the guidelines of the APA (American Psychological Association).")
    (license license:gpl3+)))

(define-public r-aovbay
  (package
    (name "r-aovbay")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AovBay" version))
       (sha256
        (base32 "110y9wbqr0m9b6wr1c5mncrdjpg247308989bswkqnim2msvnzcf"))))
    (properties `((upstream-name . "AovBay")))
    (build-system r-build-system)
    (propagated-inputs (list r-waiter
                             r-tibble
                             r-stringr
                             r-stanheaders
                             r-shinydashboardplus
                             r-shinydashboard
                             r-shinycssloaders
                             r-shiny
                             r-rstantools
                             r-rstan
                             r-reshape
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-purrr
                             r-nortest
                             r-moments
                             r-htmltools
                             r-highcharter
                             r-dt
                             r-dplyr
                             r-car
                             r-broom
                             r-bh
                             r-bayesfactor))
    (home-page "https://cran.r-project.org/package=AovBay")
    (synopsis
     "Classic, Nonparametric and Bayesian One-Way Analysis of Variance Panel")
    (description
     "It covers various approaches to analysis of variance, provides an assumption
testing section in order to provide a decision diagram that allows selecting the
most appropriate technique.  It provides the classical analysis of variance, the
nonparametric equivalent of Kruskal Wallis, and the Bayesian approach.  These
results are shown in an interactive shiny panel, which allows modifying the
arguments of the tests, contains interactive graphics and presents automatic
conclusions depending on the tests in order to contribute to the interpretation
of these analyzes. @code{AovBay} uses Stan and @code{FactorBayes} for Bayesian
analysis and Highcharts for interactive charts.")
    (license license:expat)))

(define-public r-aov1r
  (package
    (name "r-aov1r")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AOV1R" version))
       (sha256
        (base32 "0dv7k0mifybkarpwqyla5j6cvw9dcch09wvdq09ra9bsf4vyk652"))))
    (properties `((upstream-name . "AOV1R")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr r-lazyeval r-data-table r-cellranger))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AOV1R")
    (synopsis
     "Inference in the Balanced One-Way ANOVA Model with Random Factor")
    (description
     "This package provides functions to perform statistical inference in the balanced
one-way ANOVA model with a random factor: confidence intervals, prediction
interval, and Weerahandi generalized pivotal quantities.  References: Burdick &
Graybill (1992, ISBN-13: 978-0824786441); Weerahandi (1995)
<doi:10.1007/978-1-4612-0825-9>; Lin & Liao (2008)
<doi:10.1016/j.jspi.2008.01.001>.")
    (license license:gpl3)))

(define-public r-aos
  (package
    (name "r-aos")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aos" version))
       (sha256
        (base32 "0nkl7dkqjfp4ahwmn3vs0akx6x2brf0m5gzzzx6pf54j1qwypbhf"))))
    (properties `((upstream-name . "aos")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-htmltools))
    (home-page "https://felixluginbuhl.com/aos")
    (synopsis "Animate on Scroll Library for 'shiny'")
    (description
     "Trigger animation effects on scroll on any HTML element of shiny and rmarkdown',
such as any text or plot, thanks to the AOS Animate On Scroll @code{jQuery}
library.")
    (license license:expat)))

(define-public r-aorsf
  (package
    (name "r-aorsf")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aorsf" version))
       (sha256
        (base32 "1a69kiji309c2anp0nqdb7n77zlbsl0aibiiazjw6zflwf8fff4l"))))
    (properties `((upstream-name . "aorsf")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-r6
                             r-lifecycle
                             r-data-table
                             r-collapse))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ropensci/aorsf")
    (synopsis "Accelerated Oblique Random Forests")
    (description
     "Fit, interpret, and compute predictions with oblique random forests.  Includes
support for partial dependence, variable importance, passing customized
functions for variable importance and identification of linear combinations of
features.  Methods for the oblique random survival forest are described in
Jaeger et al., (2023) <DOI:10.1080/10618600.2023.2231048>.")
    (license license:expat)))

(define-public r-aoristic
  (package
    (name "r-aoristic")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aoristic" version))
       (sha256
        (base32 "1zanf21qmnjmwzzccpdm1bwnyhv9zqjirrylfwmbpkzlmvp0a4pb"))))
    (properties `((upstream-name . "aoristic")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-scales
                             r-plyr
                             r-openxlsx
                             r-lubridate
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=aoristic")
    (synopsis "Generates Aoristic Probability Distributions")
    (description
     "It can sometimes be difficult to ascertain when some events (such as property
crime) occur because the victim is not present when the crime happens.  As a
result, police databases often record a start (or from') date and time, and an
end (or to') date and time.  The time span between these date/times can be
minutes, hours, or sometimes days, hence the term Aoristic'.  Aoristic is one of
the past tenses in Greek and represents an uncertain occurrence in time.  For
events with a location describes with either a latitude/longitude, or X,Y
coordinate pair, and a start and end date/time, this package generates an
aoristic data frame with aoristic weighted probability values for each hour of
the week, for each observation.  The coordinates are not necessary for the
program to calculate aoristic weights; however, they are part of this package
because a spatial component has been integral to aoristic analysis from the
start.  Dummy coordinates can be introduced if the user only has temporal data.
Outputs include an aoristic data frame, as well as summary graphs and displays.
For more information see: Ratcliffe, JH (2002) Aoristic signatures and the
temporal analysis of high volume crime patterns, Journal of Quantitative
Criminology.  18 (1): 23-43.  Note: This package replaces an original aoristic
package (version 0.6) by George Kikuchi that has been discontinued with his
permission.")
    (license license:gpl3)))

(define-public r-aoptbdtvc
  (package
    (name "r-aoptbdtvc")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Aoptbdtvc" version))
       (sha256
        (base32 "19prbak6ssmzqaa88mw0h0bdsj8s6hvcsgrmlgq4h6iyp959yj73"))))
    (properties `((upstream-name . "Aoptbdtvc")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-lpsolve))
    (home-page "https://cran.r-project.org/package=Aoptbdtvc")
    (synopsis
     "A-Optimal Block Designs for Comparing Test Treatments with Controls")
    (description
     "This package provides a collection of functions to construct A-optimal block
designs for comparing test treatments with one or more control(s).  Mainly
A-optimal balanced treatment incomplete block designs, weighted A-optimal
balanced treatment incomplete block designs, A-optimal group divisible treatment
designs and A-optimal balanced bipartite block designs can be constructed using
the package.  The designs are constructed using algorithms based on linear
integer programming.  To the best of our knowledge, these facilities to
construct A-optimal block designs for comparing test treatments with one or more
controls are not available in the existing R packages.  For more details on
designs for tests versus control(s) comparisons, please see Hedayat, A. S. and
Majumdar, D. (1984) <doi:10.1080/00401706.1984.10487989> A-Optimal Incomplete
Block Designs for Control-Test Treatment Comparisons, Technometrics, 26, 363-370
and Mandal, B. N. , Gupta, V. K., Parsad, Rajender. (2017)
<doi:10.1080/03610926.2015.1071394> Balanced treatment incomplete block designs
through integer programming.  Communications in Statistics - Theory and Methods
46(8), 3728-3737.")
    (license license:gpl2+)))

(define-public r-aopdata
  (package
    (name "r-aopdata")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aopdata" version))
       (sha256
        (base32 "07vcxz1njl1hb8p25ni11l39llb9bl19yq3an5rarjj7mxyp8m40"))))
    (properties `((upstream-name . "aopdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf r-data-table r-curl r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://ipeagit.github.io/aopdata/")
    (synopsis "Data from the 'Access to Opportunities Project (AOP)'")
    (description
     "Download data from the Access to Opportunities Project (AOP)'.  The aopdata
package brings annual estimates of access to employment, health, education and
social assistance services by transport mode, as well as data on the spatial
distribution of population, jobs, health care, schools and social assistance
facilities at a fine spatial resolution for all cities included in the project.
More info on the AOP website <https://www.ipea.gov.br/acessooportunidades/en/>.")
    (license license:expat)))

(define-public r-aoos
  (package
    (name "r-aoos")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aoos" version))
       (sha256
        (base32 "0y92vs27i0mkpjdclqzq4j9g1axkymhi3v8xp1v6hazh35yzjkfj"))))
    (properties `((upstream-name . "aoos")))
    (build-system r-build-system)
    (propagated-inputs (list r-roxygen2 r-magrittr))
    (native-inputs (list r-knitr))
    (home-page "https://wahani.github.io/aoos")
    (synopsis "Another Object Orientation System")
    (description
     "Another implementation of object-orientation in R. It provides syntactic sugar
for the S4 class system and two alternative new implementations.  One is an
experimental version built around S4 and the other one makes it more convenient
to work with lists as objects.")
    (license license:expat)))

(define-public r-aoboot
  (package
    (name "r-aoboot")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AOboot" version))
       (sha256
        (base32 "187kfm9sq0afc4086sw4rsyfq7zbhyqg2cmvx5x0iq38w2v2x5dr"))))
    (properties `((upstream-name . "AOboot")))
    (build-system r-build-system)
    (propagated-inputs (list r-lsr r-emmeans r-cardata r-afex))
    (home-page "https://cran.r-project.org/package=AOboot")
    (synopsis "Bootstrapping in Different One-Way and Two-Way ANOVA")
    (description
     "To address the violation of the assumption of normally distributed variables,
researchers frequently employ bootstrapping.  Building upon established packages
for R (Sigmann et al. (2024) <doi:10.32614/CRAN.package.afex>, Lenth (2024)
<doi:10.32614/CRAN.package.emmeans>), we provide bootstrapping functions to
approximate a normal distribution of the parameter estimates for
between-subject, within-subject, and mixed one-way and two-way ANOVA.")
    (license license:gpl2+)))

(define-public r-ao
  (package
    (name "r-ao")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ao" version))
       (sha256
        (base32 "0d7c7g4s0m46qhjrbpd4cfq61z5y3s9f5k69ramn16sc4l0ybsqw"))))
    (properties `((upstream-name . "ao")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6
                             r-progressr
                             r-optimizer
                             r-oeli
                             r-future-apply
                             r-cli
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://loelschlaeger.de/ao/")
    (synopsis "Alternating Optimization")
    (description
     "Alternating optimization is an iterative procedure that optimizes a function by
alternately performing restricted optimization over individual parameter
subsets.  Instead of tackling joint optimization directly, it breaks the problem
down into simpler sub-problems.  This approach can make optimization feasible
when joint optimization is too difficult.")
    (license license:gpl3)))

(define-public r-anylib
  (package
    (name "r-anylib")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "anyLib" version))
       (sha256
        (base32 "1x9x58hhkkwdskmgdjv94ynh811n9w0752hh4214adl1qpn576vm"))))
    (properties `((upstream-name . "anyLib")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr r-httr r-devtools r-curl r-biocmanager))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=anyLib")
    (synopsis "Install and Load Any Package from CRAN, Bioconductor or Github")
    (description
     "Made to make your life simpler with packages, by installing and loading a list
of packages, whether they are on CRAN, Bioconductor or github.  For github, if
you do not have the full path, with the maintainer name in it (e.g.
\"achateigner/@code{topReviGO}\"), it will be able to load it but not to install
it.")
    (license license:cc-by-sa4.0)))

(define-public r-anyflights
  (package
    (name "r-anyflights")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "anyflights" version))
       (sha256
        (base32 "1dycpzc36n31zd21f7iniij6l70cdmgcc3sgar7m8msvhimkafkj"))))
    (properties `((upstream-name . "anyflights")))
    (build-system r-build-system)
    (propagated-inputs (list r-vroom
                             r-usethis
                             r-stringr
                             r-roxygen2
                             r-readr
                             r-purrr
                             r-progress
                             r-lubridate
                             r-httr
                             r-glue
                             r-dplyr
                             r-curl))
    (home-page "https://github.com/simonpcouch/anyflights")
    (synopsis
     "Query 'nycflights13'-Like Air Travel Data for Given Years and Airports")
    (description
     "Supplies a set of functions to query air travel data for user- specified years
and airports.  Datasets include on-time flights, airlines, airports, planes, and
weather.")
    (license license:cc0)))

(define-public r-anybadger
  (package
    (name "r-anybadger")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "anybadger" version))
       (sha256
        (base32 "1aa09v5k5nlvhlir8saa5gnrq7cb1djbdc8y85cjgb3skay94hzv"))))
    (properties `((upstream-name . "anybadger")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-purrr r-magrittr r-glue r-config))
    (home-page "https://github.com/lmeninato/anybadger")
    (synopsis "Create Custom Pipeline Badges")
    (description
     "You can use this package to create custom pipeline badges in a standard svg
format.  This is useful for a company to use internally, where it may not be
possible to create badges through external providers.  This project was inspired
by the anybadge library in python.")
    (license license:expat)))

(define-public r-anxietysleep
  (package
    (name "r-anxietysleep")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AnxietySleep" version))
       (sha256
        (base32 "07im2gjq62y3vgim9j0ar29qhmi7r79zbjdi024h04mxrwpic5z6"))))
    (properties `((upstream-name . "AnxietySleep")))
    (build-system r-build-system)
    (propagated-inputs (list r-lifecycle r-data-table))
    (home-page "https://github.com/NIM-ACh/AnxietySleep")
    (synopsis "Sleep Quality and Anxiety in Confinement")
    (description
     "Data from the anxiety and confinement study from Alvarado-Aravena et al. (2022)
<doi:10.3390/bs12100398>.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-antman
  (package
    (name "r-antman")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AntMAN" version))
       (sha256
        (base32 "118jhjjfnp23kbkir66rdvlzsvms316zwr2r5msrjrb3nd8lz5va"))))
    (properties `((upstream-name . "AntMAN")))
    (build-system r-build-system)
    (propagated-inputs (list r-salso
                             r-rdpack
                             r-rcpparmadillo
                             r-rcpp
                             r-mvtnorm
                             r-mcclust
                             r-ggally
                             r-bayesplot))
    (home-page "https://github.com/bbodin/AntMAN")
    (synopsis "Anthology of Mixture Analysis Tools")
    (description
     "Fits finite Bayesian mixture models with a random number of components.  The
MCMC algorithm implemented is based on point processes as proposed by Argiento
and De Iorio (2019) <@code{arXiv:1904.09733>} and offers a more computationally
efficient alternative to reversible jump.  Different mixture kernels can be
specified: univariate Gaussian, multivariate Gaussian, univariate Poisson, and
multivariate Bernoulli (latent class analysis).  For the parameters
characterising the mixture kernel, we specify conjugate priors, with possibly
user specified hyper-parameters.  We allow for different choices for the prior
on the number of components: shifted Poisson, negative binomial, and point
masses (i.e.  mixtures with fixed number of components).")
    (license license:expat)))

(define-public r-antitrust
  (package
    (name "r-antitrust")
    (version "0.99.26")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "antitrust" version))
       (sha256
        (base32 "172y87vnifxbs4n06v3qvwlxnl3fxhfp9cp1qzm4agcvqh1j7rxz"))))
    (properties `((upstream-name . "antitrust")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv r-bb))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/luciu5/antitrust")
    (synopsis "Tools for Antitrust Practitioners")
    (description
     "This package provides a collection of tools for antitrust practitioners,
including the ability to calibrate different consumer demand systems and
simulate the effects of mergers under different competitive regimes.")
    (license license:cc0)))

(define-public r-anticlust
  (package
    (name "r-anticlust")
    (version "0.8.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "anticlust" version))
       (sha256
        (base32 "1y3mb8l9p5dh843i2k6b5j0yvq1kvykax6fxavcacsa55lfcl3y2"))))
    (properties `((upstream-name . "anticlust")))
    (build-system r-build-system)
    (propagated-inputs (list r-rann r-matrix))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://github.com/m-Py/anticlust")
    (synopsis "Subset Partitioning via Anticlustering")
    (description
     "The method of anticlustering partitions a pool of elements into groups (i.e.,
anticlusters) with the goal of maximizing between-group similarity or
within-group heterogeneity.  The anticlustering approach thereby reverses the
logic of cluster analysis that strives for high within-group homogeneity and
clear separation between groups.  Computationally, anticlustering is
accomplished by maximizing instead of minimizing a clustering objective
function, such as the intra-cluster variance (used in k-means clustering) or the
sum of pairwise distances within clusters.  The main function anticlustering()
gives access to exact and heuristic anticlustering methods described in
Papenberg and Klau (2021; <doi:10.1037/met0000301>), Brusco et al. (2020;
<doi:10.1111/bmsp.12186>), and Papenberg (2024; <doi:10.1111/bmsp.12315>).  The
exact algorithms require that an integer linear programming solver is installed,
either the GNU linear programming kit
(<https://www.gnu.org/software/glpk/glpk.html>) together with the interface
package Rglpk (<https://cran.R-project.org/package=Rglpk>), or the SYMPHONY ILP
solver (<https://github.com/coin-or/SYMPHONY>) together with the interface
package Rsymphony (<https://cran.r-project.org/package=Rsymphony>).  Full access
to the bicriterion anticlustering method proposed by Brusco et al. (2020) is
given via the function bicriterion_anticlustering(), while
kplus_anticlustering() implements the full functionality of the k-plus
anticlustering approach proposed by Papenberg (2024).  Some other functions are
available to solve classical clustering problems.  The function
balanced_clustering() applies a cluster analysis under size constraints, i.e.,
creates equal-sized clusters.  The function matching() can be used for
(unrestricted, bipartite, or K-partite) matching.  The function wce() can be
used optimally solve the (weighted) cluster editing problem, also known as
correlation clustering, clique partitioning problem or transitivity clustering.")
    (license license:expat)))

(define-public r-antibodytiters
  (package
    (name "r-antibodytiters")
    (version "0.1.24")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AntibodyTiters" version))
       (sha256
        (base32 "1400n46kmaa074m6yilmkvcn83dyxk2w76x8cny1dygfzsnhhjxl"))))
    (properties `((upstream-name . "AntibodyTiters")))
    (build-system r-build-system)
    (propagated-inputs (list r-openxlsx r-desctools))
    (home-page "https://cran.r-project.org/package=AntibodyTiters")
    (synopsis "Antibody Titer Analysis of Vaccinated Patients")
    (description
     "Visualization of antibody titer scores is valuable for examination of
vaccination effects. @code{AntibodyTiters} visualizes antibody titers of all or
selected patients.  This package also produces empty excel files in a specified
format, in which users can fill in experimental data for visualization.  Excel
files with toy data can also be produced, so that users can see how it is
visualized before obtaining real data.  The data should contain titer scores at
pre-vaccination, after-1st shot, after-2nd shot, and at least one additional
sampling points.  Patients with missing values can be included.  The first two
sampling points (pre-vaccination and after-1st shot) will be plotted discretely,
whereas those following will be plotted on a continuous time scale that starts
from the day of second shot.  Half-life of titer can also be calculated for each
pair of sampling points.")
    (license license:gpl3)))

(define-public r-anthropmmd
  (package
    (name "r-anthropmmd")
    (version "4.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AnthropMMD" version))
       (sha256
        (base32 "03mvlw54a9xz7ggjbfi9yddzq1wv4skjvbv3r4bdrldpbd6scm0b"))))
    (properties `((upstream-name . "AnthropMMD")))
    (build-system r-build-system)
    (propagated-inputs (list r-smacof
                             r-shiny
                             r-scatterplot3d
                             r-rlang
                             r-plotrix
                             r-mass
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.com/f-santos/anthropmmd/")
    (synopsis "An R Package for the Mean Measure of Divergence (MMD)")
    (description
     "Offers a graphical user interface for the calculation of the mean measure of
divergence, with facilities for trait selection and graphical representations
<doi:10.1002/ajpa.23336>.")
    (license (list (license:fsdg-compatible "CeCILL-2")
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-anthroplus
  (package
    (name "r-anthroplus")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "anthroplus" version))
       (sha256
        (base32 "1wnj2idgdnh2gdw34x40adijf2sxp3k72j45pqqxg4aqc1wrvvv1"))))
    (properties `((upstream-name . "anthroplus")))
    (build-system r-build-system)
    (propagated-inputs (list r-anthro))
    (home-page "https://cran.r-project.org/package=anthroplus")
    (synopsis
     "Computation of the WHO 2007 References for School-Age Children and Adolescents (5 to 19 Years)")
    (description
     "This package provides WHO 2007 References for School-age Children and
Adolescents (5 to 19 years) (z-scores) with confidence intervals and standard
errors around the prevalence estimates, taking into account complex sample
designs.  More information on the methods is available online:
<https://www.who.int/tools/growth-reference-data-for-5to19-years>.")
    (license license:gpl3+)))

(define-public r-anthro
  (package
    (name "r-anthro")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "anthro" version))
       (sha256
        (base32 "0vp55q0f9d4gljwzfzr07f80q5ip59imvklfw8gg1rjw83yaqpxr"))))
    (properties `((upstream-name . "anthro")))
    (build-system r-build-system)
    (propagated-inputs (list r-survey))
    (home-page "https://github.com/worldhealthorganization/anthro")
    (synopsis "Computation of the WHO Child Growth Standards")
    (description
     "This package provides WHO Child Growth Standards (z-scores) with confidence
intervals and standard errors around the prevalence estimates, taking into
account complex sample designs.  More information on the methods is available
online: <https://www.who.int/tools/child-growth-standards>.")
    (license license:gpl3)))

(define-public r-antaresread
  (package
    (name "r-antaresread")
    (version "2.7.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "antaresRead" version))
       (sha256
        (base32 "1zcxhc1yanp9a91fxnhancanbxcg6bz22yngf80fsmrynq14yvq3"))))
    (properties `((upstream-name . "antaresRead")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-stringi
                             r-shiny
                             r-purrr
                             r-plyr
                             r-pbapply
                             r-memuse
                             r-lubridate
                             r-lifecycle
                             r-jsonlite
                             r-httr
                             r-doparallel
                             r-data-table
                             r-bit64
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rte-antares-rpackage/antaresRead")
    (synopsis
     "Import, Manipulate and Explore the Results of an 'Antares' Simulation")
    (description
     "Import, manipulate and explore results generated by Antares', a powerful open
source software developed by RTE (RÃ©seau de Transport dâÃlectricitÃ©) to
simulate and study electric power systems (more information about Antares here :
<https://antares-simulator.org/>).")
    (license (list license:gpl2+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-antangiocool
  (package
    (name "r-antangiocool")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AntAngioCOOL" version))
       (sha256
        (base32 "1krwms0y3xppc2y4m0az51wcbh4jq7mlr0jwinp66w8gh4k3qnp2"))))
    (properties `((upstream-name . "AntAngioCOOL")))
    (build-system r-build-system)
    (propagated-inputs (list r-rweka r-rpart r-rjava r-caret))
    (home-page "https://cran.r-project.org/package=AntAngioCOOL")
    (synopsis "Anti-Angiogenic Peptide Prediction")
    (description
     "Machine learning based package to predict anti-angiogenic peptides using
heterogeneous sequence descriptors. @code{AntAngioCOOL} exploits five descriptor
types of a peptide of interest to do prediction including: pseudo amino acid
composition, k-mer composition, k-mer composition (reduced alphabet),
physico-chemical profile and atomic profile.  According to the obtained results,
@code{AntAngioCOOL} reached to a satisfactory performance in anti-angiogenic
peptide prediction on a benchmark non-redundant independent test dataset.")
    (license license:gpl2)))

(define-public r-ansm5
  (package
    (name "r-ansm5")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ANSM5" version))
       (sha256
        (base32 "13b3rv0z11whbvwhikvk16raxn7qvgwxs85h104f7bd3xzdddqzm"))))
    (properties `((upstream-name . "ANSM5")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ANSM5")
    (synopsis
     "Functions and Data for the Book \"Applied Nonparametric Statistical Methods\", 5th Edition")
    (description
     "This package provides functions and data to accompany the 5th edition of the
book \"Applied Nonparametric Statistical Methods\" (4th edition: Sprent & Smeeton,
2024, ISBN:158488701X), the revisions from the 4th edition including a move from
describing the output from a miscellany of statistical software packages to
using R. While the output from many of the functions can also be obtained using
a range of other R functions, this package provides functions in a unified
setting and give output using both p-values and confidence intervals,
exemplifying the book's approach of treating p-values as a guide to statistical
importance and not an end product in their own right.  Please note that in
creating the ANSM5 package we do not claim to have produced software which is
necessarily the most computationally efficient nor the most comprehensive.")
    (license license:gpl3+)))

(define-public r-anscombiser
  (package
    (name "r-anscombiser")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "anscombiser" version))
       (sha256
        (base32 "1hakvxgc50zshi5kplg90r0499mihhwvhhz7bshndjxxci1ashkl"))))
    (properties `((upstream-name . "anscombiser")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://paulnorthrop.github.io/anscombiser/")
    (synopsis "Create Datasets with Identical Summary Statistics")
    (description
     "Anscombe's quartet are a set of four two-variable datasets that have several
common summary statistics but which have very different joint distributions.
This becomes apparent when the data are plotted, which illustrates the
importance of using graphical displays in Statistics.  This package enables the
creation of datasets that have identical marginal sample means and sample
variances, sample correlation, least squares regression coefficients and
coefficient of determination.  The user supplies an initial dataset, which is
shifted, scaled and rotated in order to achieve target summary statistics.  The
general shape of the initial dataset is retained.  The target statistics can be
supplied directly or calculated based on a user-supplied dataset.  The
@code{datasauRus} package <https://cran.r-project.org/package=@code{datasauRus>}
provides further examples of datasets that have markedly different scatter plots
but share many sample summary statistics.")
    (license license:gpl2+)))

(define-public r-anovir
  (package
    (name "r-anovir")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "anovir" version))
       (sha256
        (base32 "1x7lvj7xchbv6siyc9miivmf0rlxrjflal4icyvbxgdr285s2s9w"))))
    (properties `((upstream-name . "anovir")))
    (build-system r-build-system)
    (propagated-inputs (list r-bbmle))
    (native-inputs (list r-knitr))
    (home-page "https://www.biorxiv.org/content/10.1101/530709v1")
    (synopsis "Analysis of Virulence")
    (description
     "Epidemiological population dynamics models traditionally define a pathogen's
virulence as the increase in the per capita rate of mortality of infected hosts
due to infection.  This package provides functions allowing virulence to be
estimated by maximum likelihood techniques.  The approach is based on the
analysis of relative survival comparing survival in matching cohorts of infected
vs. uninfected hosts (Agnew 2019) <doi:10.1101/530709>.")
    (license license:gpl3)))

(define-public r-anovashiny2
  (package
    (name "r-anovashiny2")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ANOVAShiny2" version))
       (sha256
        (base32 "0bnxfg5c37wi5g53jd0zqq31yx29zvlk2m2jh6jlwki8khpp9y00"))))
    (properties `((upstream-name . "ANOVAShiny2")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-rmarkdown
                             r-rhandsontable
                             r-hh
                             r-dplyr
                             r-desctools))
    (home-page "https://cran.r-project.org/package=ANOVAShiny2")
    (synopsis "Interactive Document for Working with Analysis of Variance")
    (description
     "An interactive document on the topic of one-way and two-way analysis of variance
using rmarkdown and shiny packages.  Runtime examples are provided in the
package function as well as at <https://kartikeyab.shinyapps.io/ANOVAShiny/>.")
    (license license:gpl2)))

(define-public r-anovashiny
  (package
    (name "r-anovashiny")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ANOVAShiny" version))
       (sha256
        (base32 "1z8wi8c8j3rlchfk1vx101qz1r9j2jl5lfh72y5lqsisqxl2fyyz"))))
    (properties `((upstream-name . "ANOVAShiny")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-rmarkdown
                             r-rhandsontable
                             r-hh
                             r-dplyr
                             r-desctools))
    (home-page "https://cran.r-project.org/package=ANOVAShiny")
    (synopsis "Interactive Document for Working with Analysis of Variance")
    (description
     "An interactive document on the topic of one-way and two-way analysis of variance
using rmarkdown and shiny packages.  Runtime examples are provided in the
package function as well as at <https://kartikeyab.shinyapps.io/ANOVAShiny/>.")
    (license license:gpl2)))

(define-public r-anovaireva
  (package
    (name "r-anovaireva")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ANOVAIREVA" version))
       (sha256
        (base32 "04z2g79nnh5yhn4aqw0i7ck2b1z5dbasf1zp1sj6rjjrp9aqmaa6"))))
    (properties `((upstream-name . "ANOVAIREVA")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-rmarkdown
                             r-plotly
                             r-ggplot2
                             r-dplyr
                             r-car))
    (home-page "https://cran.r-project.org/package=ANOVAIREVA")
    (synopsis "Interactive Document for Working with Analysis of Variance")
    (description
     "An interactive document on the topic of one-way and two-way analysis of variance
using rmarkdown and shiny packages.  Runtime examples are provided in the
package function as well as at <https://tinyurl.com/ANOVA@code{StatsTool>}.")
    (license license:gpl2)))

(define-public r-anopa
  (package
    (name "r-anopa")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ANOPA" version))
       (sha256
        (base32 "1i6flm4rwl0d0wmw001pwq45jysxb2d2bld25r10gjk3xlfrbr7i"))))
    (properties `((upstream-name . "ANOPA")))
    (build-system r-build-system)
    (propagated-inputs (list r-superb
                             r-scales
                             r-rrapply
                             r-rdpack
                             r-plyr
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://dcousin3.github.io/ANOPA/")
    (synopsis "Analyses of Proportions using Anscombe Transform")
    (description
     "Analyses of Proportions can be performed on the Anscombe (arcsine-related)
transformed data.  The ANOPA package can analyze proportions obtained from up to
four factors.  The factors can be within-subject or between-subject or a mix of
within- and between-subject.  The main, omnibus analysis can be followed by
additive decompositions into interaction effects, main effects, simple effects,
contrast effects, etc., mimicking precisely the logic of ANOVA. For that reason,
we call this set of tools ANOPA (Analysis of Proportion using Anscombe
transform) to highlight its similarities with ANOVA. The ANOPA framework also
allows plots of proportions easy to obtain along with confidence intervals.
Finally, effect sizes and planning statistical power are easily done under this
framework.  Only particularity, the ANOPA computes F statistics which have an
infinite degree of freedom on the denominator.  See Laurencelle and Cousineau
(2023) <doi:10.3389/fpsyg.2022.1045436>.")
    (license license:gpl3)))

(define-public r-anomaly
  (package
    (name "r-anomaly")
    (version "4.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "anomaly" version))
       (sha256
        (base32 "12xm04qnbgc6i5w9vnvaaqfjyn014gbcb4401l1843rjr73kkv24"))))
    (properties `((upstream-name . "anomaly")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-tidyr
                             r-rdpack
                             r-rcpp
                             r-ggplot2
                             r-dplyr
                             r-cowplot
                             r-bh))
    (home-page "https://cran.r-project.org/package=anomaly")
    (synopsis "Detecting Anomalies in Data")
    (description
     "This package implements Collective And Point Anomaly (CAPA) Fisch, Eckley, and
Fearnhead (2022) <doi:10.1002/sam.11586>, Multi-Variate Collective And Point
Anomaly (MVCAPA) Fisch, Eckley, and Fearnhead (2021)
<doi:10.1080/10618600.2021.1987257>, Proportion Adaptive Segment Selection
(PASS) Jeng, Cai, and Li (2012) <doi:10.1093/biomet/ass059>, and Bayesian
Abnormal Region Detector (BARD) Bardwell and Fearnhead (2015)
<doi:10.1214/16-BA998>.  These methods are for the detection of anomalies in
time series data.  Further information regarding the use of this package along
with detailed examples can be found in Fisch, Grose, Eckley, Fearnhead, and
Bardwell (2024) <doi:10.18637/jss.v110.i01>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-anomalize
  (package
    (name "r-anomalize")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "anomalize" version))
       (sha256
        (base32 "133gibw7wwvf4g6msgnw19pnnhlf02kp8c3jzgzdw5bbl6nb2225"))))
    (properties `((upstream-name . "anomalize")))
    (build-system r-build-system)
    (propagated-inputs (list r-timetk
                             r-tidyr
                             r-tibbletime
                             r-tibble
                             r-sweep
                             r-rlang
                             r-purrr
                             r-glue
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/business-science/anomalize")
    (synopsis "Tidy Anomaly Detection")
    (description
     "The anomalize package enables a \"tidy\" workflow for detecting anomalies in data.
 The main functions are time_decompose(), anomalize(), and time_recompose().
When combined, it's quite simple to decompose time series, detect anomalies, and
create bands separating the \"normal\" data from the anomalous data at scale (i.e.
 for multiple time series).  Time series decomposition is used to remove trend
and seasonal components via the time_decompose() function and methods include
seasonal decomposition of time series by Loess (\"stl\") and seasonal
decomposition by piecewise medians (\"twitter\").  The anomalize() function
implements two methods for anomaly detection of residuals including using an
inner quartile range (\"iqr\") and generalized extreme studentized deviation
(\"gesd\").  These methods are based on those used in the forecast package and the
Twitter @code{AnomalyDetection} package.  Refer to the associated functions for
specific references for these methods.")
    (license license:gpl3+)))

(define-public r-anom
  (package
    (name "r-anom")
    (version "0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ANOM" version))
       (sha256
        (base32 "14nfy9xplbabfprwxz5fvx26nmqhp657vr6d90dc8vk8ds63ckiz"))))
    (properties `((upstream-name . "ANOM")))
    (build-system r-build-system)
    (propagated-inputs (list r-simcomp r-nparcomp r-multcomp r-mcpan r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/PhilipPallmann/ANOM")
    (synopsis "Analysis of Means")
    (description
     "Analysis of means (ANOM) as used in technometrical computing.  The package takes
results from multiple comparisons with the grand mean (obtained with multcomp',
@code{SimComp}', nparcomp', or MCPAN') or corresponding simultaneous confidence
intervals as input and produces ANOM decision charts that illustrate which group
means deviate significantly from the grand mean.")
    (license license:gpl2+)))

(define-public r-anofa
  (package
    (name "r-anofa")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ANOFA" version))
       (sha256
        (base32 "1ywcn4sq626dc3bb7r3pwddw5064cli4kmx8a9qp2dnxv9i6igjv"))))
    (properties `((upstream-name . "ANOFA")))
    (build-system r-build-system)
    (propagated-inputs (list r-superb r-rrapply r-rdpack r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://dcousin3.github.io/ANOFA/")
    (synopsis "Analyses of Frequency Data")
    (description
     "Analyses of frequencies can be performed using an alternative test based on the
G statistic.  The test has similar type-I error rates and power as the
chi-square test.  However, it is based on a total statistic that can be
decomposed in an additive fashion into interaction effects, main effects, simple
effects, contrast effects, etc., mimicking precisely the logic of ANOVA. We call
this set of tools ANOFA (Analysis of Frequency data) to highlight its
similarities with ANOVA. This framework also renders plots of frequencies along
with confidence intervals.  Finally, effect sizes and planning statistical power
are easily done under this framework.  The ANOFA is a tool that assesses the
significance of effects instead of the significance of parameters; as such, it
is more intuitive to most researchers than alternative approaches based on
generalized linear models.  See Laurencelle and Cousineau (2023)
<doi:10.20982/tqmp.19.2.p173>.")
    (license license:gpl3)))

(define-public r-anocva
  (package
    (name "r-anocva")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "anocva" version))
       (sha256
        (base32 "1byg40jla71k1901js5h9yq89j63d00vkm60id1fxlpv95c4wdrr"))))
    (properties `((upstream-name . "anocva")))
    (build-system r-build-system)
    (propagated-inputs (list r-cluster))
    (home-page "https://cran.r-project.org/package=anocva")
    (synopsis
     "Non-Parametric Statistical Test to Compare Clustering Structures")
    (description
     "This package provides ANOCVA (ANalysis Of Cluster VAriability), a non-parametric
statistical test to compare clustering structures with applications in
functional magnetic resonance imaging data (@code{fMRI}).  The ANOCVA allows us
to compare the clustering structure of multiple groups simultaneously and also
to identify features that contribute to the differential clustering.")
    (license license:gpl3+)))

(define-public r-annuityrir
  (package
    (name "r-annuityrir")
    (version "1.0-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AnnuityRIR" version))
       (sha256
        (base32 "0yvfqzwhm5nhywfhzkxkfm07c0qi6z21j1cdaypz89qn567aj1d9"))))
    (properties `((upstream-name . "AnnuityRIR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tseries r-mc2d r-fitdistrplus r-envstats
                             r-actuar))
    (home-page "https://www.r-project.org")
    (synopsis "Annuity Random Interest Rates")
    (description
     "Annuity Random Interest Rates proposes different techniques for the
approximation of the present and final value of a unitary annuity-due or
annuity-immediate considering interest rate as a random variable.  Cruz Rambaud
et al. (2017) <doi:10.1007/978-3-319-54819-7_16>.  Cruz Rambaud et al. (2015)
<doi:10.23755/rm.v28i1.25>.")
    (license license:gpl2+)))

(define-public r-annotator
  (package
    (name "r-annotator")
    (version "0.0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "annotator" version))
       (sha256
        (base32 "17jbr414wamxczsnxldz3la4n15d0b4lbhlhk8na9hniidin4f9b"))))
    (properties `((upstream-name . "annotator")))
    (build-system r-build-system)
    (arguments
     (list
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
    (propagated-inputs (list r-xfun r-shiny r-htmlwidgets))
    (native-inputs (list esbuild))
    (home-page "https://github.com/valcu/annotator")
    (synopsis "Image Annotation and Polygon Outlining using Free Drawing")
    (description
     "This package provides functions to create image annotations through polygon
outlining.  Annotator has the same function as graphics::locator() but achieves
its purpose through drawing, rather than multiple mouse clicks.  It is based on
the htmlwidgets package and fabric.js @code{JavaScript} library
<http://fabricjs.com/>.")
    (license license:gpl3+)))

(define-public r-annotationbustr
  (package
    (name "r-annotationbustr")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AnnotationBustR" version))
       (sha256
        (base32 "1q5yxzzmzvw1r64r4y0xh1fiyhaqbx5q4lzpawqaggra4w9igdl8"))))
    (properties `((upstream-name . "AnnotationBustR")))
    (build-system r-build-system)
    (propagated-inputs (list r-seqinr r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sborstein/AnnotationBustR")
    (synopsis "Extract Subsequences from GenBank Annotations")
    (description
     "Extraction of subsequences into FASTA files from @code{GenBank} annotations
where gene names may vary among accessions.  Borstein & O'Meara (2018)
<doi:10.7717/peerj.5179>.")
    (license license:gpl2+)))

(define-public r-annotater
  (package
    (name "r-annotater")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "annotater" version))
       (sha256
        (base32 "0ziwkc7z3v8awm7smq38mdj61vjq4qh99d0fmr63sibmg6l3pf7p"))))
    (properties `((upstream-name . "annotater")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-stringi
                             r-rstudioapi
                             r-rlang
                             r-readr
                             r-purrr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/luisDVA/annotater")
    (synopsis "Annotate Package Load Calls")
    (description
     "This package provides non-invasive annotation of package load calls such as
\\code{library()}, \\code{p_load()}, and \\code{require()} so that we can have an
idea of what the packages we are loading are meant for.")
    (license license:expat)))

(define-public r-annoprobe
  (package
    (name "r-annoprobe")
    (version "0.1.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AnnoProbe" version))
       (sha256
        (base32 "0715bpifj8r4ji0m89wk4x7vd3pwx8kqy9vs8m0ivmq7bb56nx0b"))))
    (properties `((upstream-name . "AnnoProbe")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-pheatmap
                             r-httr
                             r-ggpubr
                             r-ggplot2
                             r-dt
                             r-curl
                             r-biobase))
    (home-page "https://github.com/jmzeng1314/AnnoProbe")
    (synopsis "Annotate the Gene Symbols for Probes in Expression Array")
    (description
     "We curated 147 of expression array, from 3 species(human,mouse,rat), 3
companies('Affymetrix','Illumina','Agilent'), by aligning the Fasta sequences of
all probes of each platform to their corresponding reference genome, and then
annotate them to genes.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-annmatrix
  (package
    (name "r-annmatrix")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "annmatrix" version))
       (sha256
        (base32 "0ljlxiyprvaa84skw5g2qfjf55fkdcsygvb09i5jws9dm0i8h80w"))))
    (properties `((upstream-name . "annmatrix")))
    (build-system r-build-system)
    (home-page "https://github.com/karoliskoncevicius/annmatrix")
    (synopsis
     "Annotated Matrix: Matrices with Persistent Row and Column Annotations")
    (description
     "This package implements persistent row and column annotations for R matrices.
The annotations associated with rows and columns are preserved after subsetting,
transposition, and various other matrix-specific operations.  Intended use case
is for storing and manipulating genomic datasets which typically consist of a
matrix of measurements (like gene expression values) as well as annotations
about rows (i.e.  genomic locations) and annotations about columns (i.e.
meta-data about collected samples).  But annmatrix objects are also expected to
be useful in various other contexts.")
    (license license:gpl2)))

(define-public r-ann2
  (package
    (name "r-ann2")
    (version "2.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ANN2" version))
       (sha256
        (base32 "1izljhz3rkzq05dkvg9q3fdyj7q871j8lsky67d5r8ffpzm1lk3z"))))
    (properties `((upstream-name . "ANN2")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridislite
                             r-testthat
                             r-reshape2
                             r-rcpparmadillo
                             r-rcpp
                             r-ggplot2))
    (home-page "https://github.com/bflammers/ANN2")
    (synopsis "Artificial Neural Networks for Anomaly Detection")
    (description
     "Training of neural networks for classification and regression tasks using
mini-batch gradient descent.  Special features include a function for training
autoencoders, which can be used to detect anomalies, and some related plotting
functions.  Multiple activation functions are supported, including tanh, relu,
step and ramp.  For the use of the step and ramp activation functions in
detecting anomalies using autoencoders, see Hawkins et al. (2002)
<doi:10.1007/3-540-46145-0_17>.  Furthermore, several loss functions are
supported, including robust ones such as Huber and pseudo-Huber loss, as well as
L1 and L2 regularization.  The possible options for optimization algorithms are
RMSprop, Adam and SGD with momentum.  The package contains a vectorized C++
implementation that facilitates fast training through mini-batch learning.")
    (license (list license:gpl3+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-anmc
  (package
    (name "r-anmc")
    (version "0.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "anMC" version))
       (sha256
        (base32 "0xrby8qyfd3dgi64kllspvalz9yrxjdj5qd1fqjdl6qwb3h6rkga"))))
    (properties `((upstream-name . "anMC")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-mvtnorm))
    (home-page "https://doi.org/10.1080/10618600.2017.1360781")
    (synopsis "Compute High Dimensional Orthant Probabilities")
    (description
     "Computationally efficient method to estimate orthant probabilities of
high-dimensional Gaussian vectors.  Further implements a function to compute
conservative estimates of excursion sets under Gaussian random field priors.")
    (license license:gpl3)))

(define-public r-aniview
  (package
    (name "r-aniview")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aniview" version))
       (sha256
        (base32 "1klakkmdk4xllaxd0pllvxi4396n6rz2idz55niy91mp0fhcjhwf"))))
    (properties `((upstream-name . "aniview")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-htmltools))
    (home-page "https://felixluginbuhl.com/aniview")
    (synopsis "Animate Shiny and R Markdown Content when it Comes into View")
    (description
     "Animate Shiny and R Markdown content when it comes into view using animate-css
effects thanks to @code{jQuery} @code{AniView}'.")
    (license license:expat)))

(define-public r-anisna
  (package
    (name "r-anisna")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aniSNA" version))
       (sha256
        (base32 "1rvrpcw1j5xwz8ns7njvf8blal8nh6c45avy5rpzb5kifiv8yxgy"))))
    (properties `((upstream-name . "aniSNA")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rlang
                             r-reshape
                             r-rcpp
                             r-plotrix
                             r-magrittr
                             r-lubridate
                             r-igraph
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=aniSNA")
    (synopsis "Statistical Network Analysis of Animal Social Networks")
    (description
     "Obtain network structures from animal GPS telemetry observations and
statistically analyse them to assess their adequacy for social network analysis.
 Methods include pre-network data permutations, bootstrapping techniques to
obtain confidence intervals for global and node-level network metrics, and
correlation and regression analysis of the local network metrics.")
    (license license:expat)))

(define-public r-anipaths
  (package
    (name "r-anipaths")
    (version "0.10.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "anipaths" version))
       (sha256
        (base32 "03vhxva67b0nr75dr8ddz661jr1ha3kryibqy2nhqk851jx5vywx"))))
    (properties `((upstream-name . "anipaths")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-stringr
                             r-sf
                             r-rcolorbrewer
                             r-mvtnorm
                             r-mgcv
                             r-magrittr
                             r-lubridate
                             r-igraph
                             r-ggplot2
                             r-ggmap
                             r-ellipse
                             r-dplyr
                             r-crawl
                             r-animation))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=anipaths")
    (synopsis "Animation of Multiple Trajectories with Uncertainty")
    (description
     "Animation of observed trajectories using spline-based interpolation (see for
example, Buderman, F. E., Hooten, M. B., Ivan, J. S. and Shenk, T. M. (2016),
<doi:10.1111/2041-210X.12465> \"A functional model for characterizing
long-distance movement behaviour\".  Methods Ecol Evol).  Intended to be used
exploratory data analysis, and perhaps for preparation of presentations.")
    (license license:gpl3)))

(define-public r-animl
  (package
    (name "r-animl")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "animl" version))
       (sha256
        (base32 "1r6vy8kc98av2xwxas59gzqiynaxvddc5dxdkbvfd5v9zsglqr0y"))))
    (properties `((upstream-name . "animl")))
    (build-system r-build-system)
    (propagated-inputs (list r-tfdatasets
                             r-tensorflow
                             r-reticulate
                             r-pbapply
                             r-magrittr
                             r-keras
                             r-jpeg
                             r-imager
                             r-exifr
                             r-dplyr
                             r-av))
    (home-page "https://cran.r-project.org/package=animl")
    (synopsis "Collection of ML Tools for Conservation Research")
    (description
     "This package provides functions required to classify subjects within camera trap
field data.  The package can handle both images and videos.  The authors
recommend a two-step approach using Microsoft's @code{MegaDector} model and then
a second model trained on the classes of interest.")
    (license license:expat)))

(define-public r-animint2
  (package
    (name "r-animint2")
    (version "2024.1.24")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "animint2" version))
       (sha256
        (base32 "03zff0c7iz819js5iknx33kbfnqisfqbdji16bzd047y0s767rck"))))
    (properties `((upstream-name . "animint2")))
    (build-system r-build-system)
    (arguments
     (list
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
    (propagated-inputs (list r-servr
                             r-scales
                             r-rjsonio
                             r-reshape2
                             r-plyr
                             r-mass
                             r-knitr
                             r-gtable
                             r-digest
                             r-data-table))
    (native-inputs (list esbuild))
    (home-page "https://animint.github.io/animint2/")
    (synopsis "Animated Interactive Grammar of Graphics")
    (description
     "This package provides functions are provided for defining animated, interactive
data visualizations in R code, and rendering on a web page.  The 2018 Journal of
Computational and Graphical Statistics paper,
<doi:10.1080/10618600.2018.1513367> describes the concepts implemented.")
    (license license:gpl3)))

(define-public r-animbook
  (package
    (name "r-animbook")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "animbook" version))
       (sha256
        (base32 "0wbzpcqmr1ysk2xcwmjl1dldz7bpaqsdyq36512lipq60hzq1v81"))))
    (properties `((upstream-name . "animbook")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-rcolorbrewer
                             r-purrr
                             r-plotly
                             r-ggplot2
                             r-gganimate
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/KrisanatA/animbook")
    (synopsis
     "Visualizing Changes in Performance Measures and Demographic Affiliations using Animation")
    (description
     "Create an interactive visualization to be used for communication purposes.
Providing the function for preparing, plotting, and animating the data.")
    (license license:expat)))

(define-public r-animate
  (package
    (name "r-animate")
    (version "0.3.9.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "animate" version))
       (sha256
        (base32 "1pzgxz3xdp7c1swd5sxzlpyvvqv3shw8dxnbjwv1cr5g406p8970"))))
    (properties `((upstream-name . "animate")))
    (build-system r-build-system)
    (arguments
     (list
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
    (propagated-inputs (list r-r6
                             r-r-utils
                             r-jsonlite
                             r-httpuv
                             r-glue
                             r-base64enc))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://kcf-jackson.github.io/animate/")
    (synopsis "Web-Based Graphics Device for Animated Visualisations")
    (description
     "This package implements a web-based graphics device for animated visualisations.
 Modelled on the base syntax, it extends the base graphics functions to support
frame-by-frame animation and keyframes animation.  The target use cases are
real-time animated visualisations, including agent-based models, dynamical
systems, and animated diagrams.  The generated visualisations can be deployed as
GIF images / MP4 videos, as Shiny apps (with interactivity) or as HTML documents
through embedding into R Markdown documents.")
    (license license:expat)))

(define-public r-animalhabitatnetwork
  (package
    (name "r-animalhabitatnetwork")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AnimalHabitatNetwork" version))
       (sha256
        (base32 "1bhqypkiw5v9w26jbdmhndqj5hjfmf7zwivrq2hgs0zcjxwa8gfn"))))
    (properties `((upstream-name . "AnimalHabitatNetwork")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph r-ggplot2))
    (home-page "https://cran.r-project.org/package=AnimalHabitatNetwork")
    (synopsis
     "Networks Characterising the Physical Configurations of Animal Habitats")
    (description
     "This package provides functions for generating and visualising networks for
characterising the physical attributes and spatial organisations of habitat
components (i.e.  habitat physical configurations).  The network generating
algorithm first determines the X and Y coordinates of N nodes within a rectangle
with a side length of L and an area of A. Then it computes the pair-wise
Euclidean distance Dij between node i and j, and then a complete network with
1/Dij as link weights is constructed.  Then, the algorithm removes links from
the complete network with the probability as shown in the function ahn_prob().
Such link removals can make the network disconnected whereas a connected network
is wanted.  In such cases, the algorithm rewires one network component to its
spatially nearest neighbouring component and repeat doing this until the network
is connected again.  Finally, it outputs an undirected network (weighted or
unweighted, connected or disconnected).  This package came with a manuscript on
modelling the physical configurations of animal habitats using networks (in
preparation).")
    (license license:gpl3)))

(define-public r-animalekf
  (package
    (name "r-animalekf")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "animalEKF" version))
       (sha256
        (base32 "1qhmgwmg9nw8hcsd8gkvk0h8rmk82zkqjyd94a1d79cwmryxls9b"))))
    (properties `((upstream-name . "animalEKF")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp
                             r-shiny
                             r-sf
                             r-rlang
                             r-png
                             r-plyr
                             r-mvtnorm
                             r-mcmcpack
                             r-matrix
                             r-mass
                             r-hdinterval
                             r-ggplot2
                             r-ellipse
                             r-deldir
                             r-colorspace
                             r-bezier))
    (home-page "https://cran.r-project.org/package=animalEKF")
    (synopsis "Extended Kalman Filters for Animal Movement")
    (description
     "Synthetic generation of 1-D and 2-D correlated random walks (CRWs) for animal
movement with behavioral switching, and particle filter estimation of movement
parameters from observed trajectories using Extended Kalman Filter (EKF) model.
See Ackerman (2018)
<https://digital.library.temple.edu/digital/collection/p245801coll10/id/499150>.")
    (license license:gpl2+)))

(define-public r-anim-plots
  (package
    (name "r-anim-plots")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "anim.plots" version))
       (sha256
        (base32 "0j786k5kkc1d33q52ki6fp3hnddjv7fv3ss6zjm9hqqgkq34vwqh"))))
    (properties `((upstream-name . "anim.plots")))
    (build-system r-build-system)
    (propagated-inputs (list r-animation))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hughjonesd/anim.plots")
    (synopsis "Simple Animated Plots for R")
    (description
     "Simple animated versions of basic R plots, using the animation package.
Includes animated versions of plot, barplot, persp, contour, filled.contour,
hist, curve, points, lines, text, symbols, segments, and arrows.")
    (license license:gpl2)))

(define-public r-anidom
  (package
    (name "r-anidom")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aniDom" version))
       (sha256
        (base32 "04gqq6ibmr7zq8p9cbpxj98afq7yz82gp7prwbq2ymbxnkywwpgq"))))
    (properties `((upstream-name . "aniDom")))
    (build-system r-build-system)
    (propagated-inputs (list r-rptr))
    (home-page "https://cran.r-project.org/package=aniDom")
    (synopsis "Inferring Dominance Hierarchies and Estimating Uncertainty")
    (description
     "Provides: (1) Tools to infer dominance hierarchies based on calculating Elo
scores, but with custom functions to improve estimates in animals with
relatively stable dominance ranks. (2) Tools to plot the shape of the dominance
hierarchy and estimate the uncertainty of a given data set.")
    (license license:gpl2)))

(define-public r-angstroms
  (package
    (name "r-angstroms")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "angstroms" version))
       (sha256
        (base32 "1k8q4pkb5vcjfp2n2dga3q2ydmdxv020k5qzrb6w01ixrgf15d8l"))))
    (properties `((upstream-name . "angstroms")))
    (build-system r-build-system)
    (propagated-inputs (list r-spbabel
                             r-sp
                             r-raster
                             r-proj4
                             r-ncdf4
                             r-nabor))
    (home-page "https://github.com/mdsumner/angstroms")
    (synopsis "Tools for 'ROMS' the Regional Ocean Modeling System")
    (description
     "Helper functions for working with Regional Ocean Modeling System ROMS output.
See <https://www.myroms.org/> for more information about ROMS'.")
    (license license:gpl3)))

(define-public r-angstromate
  (package
    (name "r-angstromate")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "angstromATE" version))
       (sha256
        (base32 "0chmzliwd9ygcjvvd20vfp1immmrnhxwdc83la11l8v0ind10syl"))))
    (properties `((upstream-name . "angstromATE")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml))
    (home-page "https://cran.r-project.org/package=angstromATE")
    (synopsis "Imports Log Files from Angstrom Engineering Thermal Evaporator")
    (description
     "Opens and imports log files from Angstrom Engineering Thermal Evaporator and
extracts basic characteristics, such as base pressure, time of the evaporation.
It can visualize the deposition observables for review.")
    (license license:gpl3+)))

(define-public r-anglercreelsurveysimulation
  (package
    (name "r-anglercreelsurveysimulation")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AnglerCreelSurveySimulation" version))
       (sha256
        (base32 "1xaksfglf45qpfqdjil8cc415ak6xnc57kxfih7qghvd3xi5c8z6"))))
    (properties `((upstream-name . "AnglerCreelSurveySimulation")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/stevenranney/AnglerCreelSurveySimulation")
    (synopsis "Simulate a Bus Route Creel Survey of Anglers")
    (description
     "Simulate an angler population, sample the simulated population with a
user-specified survey times, and calculate metrics from a bus route-type creel
survey.")
    (license license:gpl3)))

(define-public r-anesrake
  (package
    (name "r-anesrake")
    (version "0.80")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "anesrake" version))
       (sha256
        (base32 "1p2g51w80jiadlf4asbnsw46asarzlzr5c1yfhdb31ymqxd7p76q"))))
    (properties `((upstream-name . "anesrake")))
    (build-system r-build-system)
    (propagated-inputs (list r-weights r-hmisc))
    (home-page "https://cran.r-project.org/package=anesrake")
    (synopsis "ANES Raking Implementation")
    (description
     "This package provides a comprehensive system for selecting variables and
weighting data to match the specifications of the American National Election
Studies.  The package includes methods for identifying discrepant variables,
raking data, and assessing the effects of the raking algorithm.  It also allows
automated re-raking if target variables fall outside identified bounds and
allows greater user specification than other available raking algorithms.  A
variety of simple weighted statistics that were previously in this package
(version .55 and earlier) have been moved to the package weights.'.")
    (license license:gpl2+)))

(define-public r-andurinha
  (package
    (name "r-andurinha")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "andurinha" version))
       (sha256
        (base32 "1cpz16zv3al6lmsqsb7dl5v6kml2a0hg084rbmwa4wsyk5ygl8bm"))))
    (properties `((upstream-name . "andurinha")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-signal
                             r-rlang
                             r-plyr
                             r-ggplot2
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/noemiallefs/andurinha")
    (synopsis "Make Spectroscopic Data Processing Easier")
    (description
     "The goal of andurinha is provide a fast and friendly way to process
spectroscopic data.  It is intended for processing several spectra of samples
with similar composition (tens to hundreds of spectra).  It compiles
spectroscopy data files, produces standardized and second derivative spectra,
finds peaks and allows to select the most significant ones based on the second
derivative/absorbance sum spectrum.  It also provides functions for graphic
evaluation of the outputs.")
    (license (list license:gpl2
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-andromeda
  (package
    (name "r-andromeda")
    (version "0.6.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Andromeda" version))
       (sha256
        (base32 "1v3pg8vskr079yv8yg2lby8agvcc1jhkbr7nnvgz26fgb2nwfq3c"))))
    (properties `((upstream-name . "Andromeda")))
    (build-system r-build-system)
    (propagated-inputs (list r-zip
                             r-tidyselect
                             r-rsqlite
                             r-rlang
                             r-pillar
                             r-hms
                             r-dplyr
                             r-dbplyr
                             r-dbi
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/OHDSI/Andromeda")
    (synopsis "Asynchronous Disk-Based Representation of Massive Data")
    (description
     "Storing very large data objects on a local drive, while still making it possible
to manipulate the data in an efficient manner.")
    (license license:asl2.0)))

(define-public r-andrews
  (package
    (name "r-andrews")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "andrews" version))
       (sha256
        (base32 "18z8g1g5kx3cmgx4rc4rd35d557yl30xxmr2g2nkdd714w2asqra"))))
    (properties `((upstream-name . "andrews")))
    (build-system r-build-system)
    (propagated-inputs (list r-gmp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sigbertklinke/andrews")
    (synopsis "Various Andrews Curves")
    (description
     "Visualisation of multidimensional data through different Andrews curves:
Andrews, D. F. (1972) Plots of High-Dimensional Data.  Biometrics, 28(1),
125-136. <doi:10.2307/2528964>.")
    (license license:gpl3)))

(define-public r-and
  (package
    (name "r-and")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "and" version))
       (sha256
        (base32 "1i95ap4yba5c5ygwsvwmqb3am4r5agv7yhls7ji7pnly8nkrknyn"))))
    (properties `((upstream-name . "and")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-glue))
    (home-page "https://pkg.rossellhayes.com/and/")
    (synopsis "Construct Natural-Language Lists with Internationalization")
    (description
     "Construct language-aware lists.  Make \"and\"-separated and \"or\"-separated lists
that automatically conform to the user's language settings.")
    (license license:expat)))

(define-public r-anchorregression
  (package
    (name "r-anchorregression")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AnchorRegression" version))
       (sha256
        (base32 "1bmlxk5j3i9mm71cwz785q5sysp8hsyy0080kgd3ksx78p68ara5"))))
    (properties `((upstream-name . "AnchorRegression")))
    (build-system r-build-system)
    (propagated-inputs (list r-selectiveinference r-mgcv r-glmnet))
    (home-page "https://github.com/simzim96/AnchorRegression")
    (synopsis "Perform AnchorRegression")
    (description
     "This package performs @code{AnchorRegression} proposed by RothenhÃ¤usler et al.
2020.  The code is adapted from the original paper repository.
(<https://github.com/rothenhaeusler/anchor-regression>) The code was developed
independently from the authors of the paper.")
    (license license:expat)))

(define-public r-ancestrymapper
  (package
    (name "r-ancestrymapper")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AncestryMapper" version))
       (sha256
        (base32 "1fr2y1a5rn7rq8aly94f618kywix32jwysi70nfhaqx8hf4zzprb"))))
    (properties `((upstream-name . "AncestryMapper")))
    (build-system r-build-system)
    (propagated-inputs (list r-svd))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AncestryMapper")
    (synopsis "Assigning Ancestry Based on Population References")
    (description
     "Assigns genetic ancestry to an individual and studies relationships between
local and global populations.")
    (license license:gpl2)))

(define-public r-ananseseurat
  (package
    (name "r-ananseseurat")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AnanseSeurat" version))
       (sha256
        (base32 "12r6bxh0cvh94nb91lzdj7sa7na1ljc5gdmdfx6dwilhpdafn0a3"))))
    (properties `((upstream-name . "AnanseSeurat")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-seurat
                             r-rlang
                             r-purrr
                             r-png
                             r-patchwork
                             r-magrittr
                             r-ggpubr
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/JGASmits/AnanseSeurat/")
    (synopsis "Construct ANANSE GRN-Analysis Seurat")
    (description
     "Enables gene regulatory network (GRN) analysis on single cell clusters, using
the GRN analysis software ANANSE', Xu et al.(2021) <doi:10.1093/nar/gkab598>.
Export data from Seurat objects, for GRN analysis by ANANSE implemented in
snakemake'.  Finally, incorporate results for visualization and interpretation.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-analyzer
  (package
    (name "r-analyzer")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "analyzer" version))
       (sha256
        (base32 "1729dnghdca7dr4l5cxazg68ipkm63mvk2danwm3bva62sza29p6"))))
    (properties `((upstream-name . "analyzer")))
    (build-system r-build-system)
    (propagated-inputs (list r-gridextra r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=analyzer")
    (synopsis "Data Analysis and Automated R Notebook Generation")
    (description
     "Easy data analysis and quality checks which are commonly used in data science.
It combines the tabular and graphical visualization for easier usability.  This
package also creates an R Notebook with detailed data exploration with one
function call.  The notebook can be made interactive.")
    (license license:expat)))

(define-public r-analysislin
  (package
    (name "r-analysislin")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AnalysisLin" version))
       (sha256
        (base32 "1mf77l74lfjlr856w48spjnn7pvjf9zygy1xcaj3fmi335h77j2x"))))
    (properties `((upstream-name . "AnalysisLin")))
    (build-system r-build-system)
    (propagated-inputs (list r-rann
                             r-plotly
                             r-magrittr
                             r-htmltools
                             r-hmisc
                             r-ggplot2
                             r-dt
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AnalysisLin")
    (synopsis "Exploratory Data Analysis")
    (description
     "This package provides a quick and effective data exploration toolkit.  It
provides essential features, including a descriptive statistics table for a
quick overview of your dataset, interactive distribution plots to visualize
variable patterns, Principal Component Analysis for dimensionality reduction and
feature analysis, missing value imputation methods, and correlation analysis.")
    (license license:expat)))

(define-public r-analogue
  (package
    (name "r-analogue")
    (version "0.17-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "analogue" version))
       (sha256
        (base32 "0c5h8nnbflydv35ja1pfhyx7ifwlriwgcnrmxj5il5lvcr70y1vi"))))
    (properties `((upstream-name . "analogue")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-princurve
                             r-mgcv
                             r-mass
                             r-lattice
                             r-brglm))
    (home-page "https://github.com/gavinsimpson/analogue")
    (synopsis "Analogue and Weighted Averaging Methods for Palaeoecology")
    (description
     "Fits Modern Analogue Technique and Weighted Averaging transfer function models
for prediction of environmental data from species data, and related methods used
in palaeoecology.")
    (license license:gpl2)))

(define-public r-analogsea
  (package
    (name "r-analogsea")
    (version "1.0.7.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "analogsea" version))
       (sha256
        (base32 "146n6z06nr3jyni8mg8gjb7r4w06mrpkfmpg8l8z6rw9aw1gh73p"))))
    (properties `((upstream-name . "analogsea")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml r-magrittr r-jsonlite r-httr))
    (home-page
     "https://github.com/pachadotdev/analogseahttps://pacha.dev/analogsea/")
    (synopsis "Interface to 'DigitalOcean'")
    (description
     "This package provides a set of functions for interacting with the
@code{DigitalOcean} API <https://www.digitalocean.com/>, including creating
images, destroying them, rebooting, getting details on regions, and available
images.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-anacor
  (package
    (name "r-anacor")
    (version "1.1-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "anacor" version))
       (sha256
        (base32 "0wf9kb8389gc9jy32dr8ap78lychgjnd19jix7wzln4yx78ypqnq"))))
    (properties `((upstream-name . "anacor")))
    (build-system r-build-system)
    (propagated-inputs (list r-fda r-colorspace r-car))
    (home-page "https://r-forge.r-project.org/projects/psychor/")
    (synopsis "Simple and Canonical Correspondence Analysis")
    (description
     "This package performs simple and canonical CA (covariates on rows/columns) on a
two-way frequency table (with missings) by means of SVD. Different scaling
methods (standard, centroid, Benzecri, Goodman) as well as various plots
including confidence ellipsoids are provided.")
    (license license:gpl2)))

(define-public r-anaconda
  (package
    (name "r-anaconda")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Anaconda" version))
       (sha256
        (base32 "02ars06pmg0f0biy022yz2xf0sdmww9ff9zcpl74gah3sickq9ci"))))
    (properties `((upstream-name . "Anaconda")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer
                             r-rafalib
                             r-plyr
                             r-pheatmap
                             r-lookup
                             r-ggrepel
                             r-ggplot2
                             r-deseq2
                             r-data-table
                             r-ape))
    (home-page "https://github.com/PLStenger/Anaconda")
    (synopsis
     "Targeted Differential and Global Enrichment Analysis of Taxonomic Rank by Shared Asvs")
    (description
     "Targeted differential and global enrichment analysis of taxonomic rank by shared
ASVs (Amplicon Sequence Variant), for high-throughput @code{eDNA} sequencing of
fungi, bacteria, and metazoan.  Actually works in two steps: I) Targeted
differential analysis from QIIME2 data and II) Global analysis by Taxon
Mann-Whitney U test analysis from targeted analysis (I) (I) Estimate
variance-mean dependence in count/abundance ASVs data from high-throughput
sequencing assays and test for differential represented ASVs based on a model
using the negative binomial distribution. (II) NCBITaxon_MWU uses continuous
measure of significance (such as fold-change or -log(p-value)) to identify
NCBITaxon that are significantly enriches with either up- or down-represented
ASVs.  If the measure is binary (0 or 1) the script will perform a typical
NCBITaxon enrichment analysis based Fisher's exact test: it will show NCBITaxon
over-represented among the ASVs that have 1 as their measure.  On the plot,
different fonts are used to indicate significance and color indicates enrichment
with either up (red) or down (blue) regulated ASVs.  No colors are shown for
binary measure analysis.  The tree on the plot is hierarchical clustering of
NCBITaxon based on shared ASVs.  Categories with no branch length between them
are subsets of each other.  The fraction next to the category name indicates the
fraction of good ASVs in it; good ASVs are the ones exceeding the arbitrary
@code{absValue} cutoff (option in taxon_@code{mwuPlot}()).  For Fisher's based
test, specify @code{absValue=0.5}.  This value does not affect statistics and is
used for plotting only.  The original idea was for genes differential expression
analysis from Wright et al (2015) <doi:10.1186/s12864-015-1540-2>; adapted here
for taxonomic analysis.  The Anaconda package makes it possible to carry out
these analyses by automatically creating several graphs and tables and storing
them in specially created subfolders.  You will need your QIIME2 pipeline output
for each kingdom (eg; Fungi and/or Bacteria and/or Metazoan): i) taxonomy.tsv,
ii) taxonomy_@code{RepSeq.tsv}, iii) ASV.tsv and iv)
@code{SampleSheet_comparison.txt} (the latter being created by you).")
    (license license:gpl2+)))

(define-public r-anacoda
  (package
    (name "r-anacoda")
    (version "0.1.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AnaCoDa" version))
       (sha256
        (base32 "1b03bxysvw9v4j3bzsmrjf5ci06v6s83ix89qxy73ba5akf2gb7h"))))
    (properties `((upstream-name . "AnaCoDa")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam r-rcpp r-mvtnorm))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/clandere/AnaCoDa")
    (synopsis
     "Analysis of Codon Data under Stationarity using a Bayesian Framework")
    (description
     "Is a collection of models to analyze genome scale codon data using a Bayesian
framework.  Provides visualization routines and checkpointing for model
fittings.  Currently published models to analyze gene data for selection on
codon usage based on Ribosome Overhead Cost (ROC) are: ROC (Gilchrist et al.
(2015) <doi:10.1093/gbe/evv087>), and ROC with phi (Wallace & Drummond (2013)
<doi:10.1093/molbev/mst051>).  In addition @code{AnaCoDa} contains three
currently unpublished models.  The FONSE (First order approximation On
@code{NonSense} Error) model analyzes gene data for selection on codon usage
against of nonsense error rates.  The PA (PAusing time) and PANSE (PAusing time
+ @code{NonSense} Error) models use ribosome footprinting data to analyze
estimate ribosome pausing times with and without nonsense error rate from
ribosome footprinting data.")
    (license license:gpl2+)))

(define-public r-anabel
  (package
    (name "r-anabel")
    (version "3.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "anabel" version))
       (sha256
        (base32 "0m6jkbl3mf3kpaq9yj0qrbwcvgd1qrdakc14xcnd8awgvbqh6z01"))))
    (properties `((upstream-name . "anabel")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-reshape2
                             r-qpdf
                             r-purrr
                             r-progress
                             r-openxlsx
                             r-minpack-lm
                             r-kableextra
                             r-ggplot2
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=anabel")
    (synopsis "Analysis of Binding Events + l")
    (description
     "This package provides a free software for a fast and easy analysis of 1:1
molecular interaction studies.  This package is suitable for a high-throughput
data analysis.  Both the online app and the package are completely open source.
You provide a table of sensogram, tell anabel which method to use, and it takes
care of all fitting details.  The first two releases of anabel were created and
implemented as in (<doi:10.1177/1177932218821383>,
<doi:10.1093/database/baz101>).")
    (license license:expat)))

(define-public r-amylogram
  (package
    (name "r-amylogram")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AmyloGram" version))
       (sha256
        (base32 "1xdi3i3nw4fzj4d040r55f0gid72gy3vbz5nbdrvapl97zk3kp8c"))))
    (properties `((upstream-name . "AmyloGram")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-seqinr r-ranger r-biogram))
    (home-page "https://github.com/michbur/AmyloGram")
    (synopsis "Prediction of Amyloid Proteins")
    (description
     "Predicts amyloid proteins using random forests trained on the n-gram encoded
peptides.  The implemented algorithm can be accessed from both the command line
and shiny-based GUI.")
    (license license:gpl3)))

(define-public r-amvenndiagram5
  (package
    (name "r-amvenndiagram5")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "amVennDiagram5" version))
       (sha256
        (base32 "0f4w66pqb95bk5h0xi35lxq4535rjpbgkl6j9r3wx7rl8g6lpl7q"))))
    (properties `((upstream-name . "amVennDiagram5")))
    (build-system r-build-system)
    (propagated-inputs (list r-venn r-partitions r-htmlwidgets))
    (home-page "https://github.com/stla/amVennDiagram5")
    (synopsis "Interactive Venn Diagrams")
    (description
     "This package creates interactive Venn diagrams using the @code{amCharts5}
library for @code{JavaScript}'.  They can be used directly from the R console,
from RStudio', in shiny applications, and in rmarkdown documents.")
    (license license:gpl3)))

(define-public r-amt
  (package
    (name "r-amt")
    (version "0.2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "amt" version))
       (sha256
        (base32 "1yx5rvc18ppk37z1m72a1j80ai4b84zc8fh5py2zipvc7phwqfsw"))))
    (properties `((upstream-name . "amt")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-terra
                             r-survival
                             r-sfheaders
                             r-sf
                             r-rlang
                             r-rdpack
                             r-purrr
                             r-mass
                             r-lubridate
                             r-kernsmooth
                             r-fnn
                             r-fitdistrplus
                             r-dplyr
                             r-data-table
                             r-ctmm
                             r-circular
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jmsigner/amt")
    (synopsis "Animal Movement Tools")
    (description
     "Manage and analyze animal movement data.  The functionality of amt includes
methods to calculate home ranges, track statistics (e.g. step lengths, speed, or
turning angles), prepare data for fitting habitat selection analyses, and
simulation of space-use from fitted step-selection functions.")
    (license license:gpl3)))

(define-public r-amscorer
  (package
    (name "r-amscorer")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "amscorer" version))
       (sha256
        (base32 "15c9crj52m93122yp2fvx75vgm73lq3f3hc9jkg2f122mz6ml65x"))))
    (properties `((upstream-name . "amscorer")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=amscorer")
    (synopsis "Clinical Scores Calculator for Healthcare")
    (description
     "This package provides functions to compute various clinical scores used in
healthcare.  These include the Charlson Comorbidity Index (CCI), predicting
10-year survival in patients with multiple comorbidities; the EPICES score, an
individual indicator of precariousness considering its multidimensional nature;
the MELD score for chronic liver disease severity; the Alternative Fistula Risk
Score (a-FRS) for postoperative pancreatic fistula risk; and the Distal
Pancreatectomy Fistula Risk Score (D-FRS) for risk following distal
pancreatectomy.  For detailed methodology, refer to Charlson et al. (1987)
<doi:10.1016/0021-9681(87)90171-8> , Sass et al. (2006)
<doi:10.1007/s10332-006-0131-5>, Kamath et al. (2001)
<doi:10.1053/jhep.2001.22172>, Kim et al. (2008) <doi:10.1056/NEJMoa0801209> Kim
et al. (2021) <doi:10.1053/j.gastro.2021.08.050>, Mungroop et al. (2019)
<doi:10.1097/SLA.0000000000002620>, and de Pastena et al. (2023)
<doi:10.1097/SLA.0000000000005497>..")
    (license license:gpl3)))

(define-public r-amregtest
  (package
    (name "r-amregtest")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "amregtest" version))
       (sha256
        (base32 "0c5x95iiqr0fa2ph6zily6qp542yc08vwzgrvfhclmkrn9zjcjap"))))
    (properties `((upstream-name . "amregtest")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr r-testthat r-remotes r-digest
                             r-allelematch))
    (home-page "https://cran.r-project.org/package=amregtest")
    (synopsis "Runs Allelematch Regression Tests")
    (description
     "Automates regression testing of package allelematch'.  Over 2500 tests covers
all functions in allelematch', reproduces the examples from the documentation
and includes negative tests.  The implementation is based on testthat'.")
    (license license:expat)))

(define-public r-amr
  (package
    (name "r-amr")
    (version "2.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AMR" version))
       (sha256
        (base32 "0dgql8s7jzk3cmjnvn09rsymz1zwzk2983rvcccl5z00x9d7yg7k"))))
    (properties `((upstream-name . "AMR")))
    (build-system r-build-system)
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://msberends.github.io/AMR/")
    (synopsis "Antimicrobial Resistance Data Analysis")
    (description
     "This package provides functions to simplify and standardise antimicrobial
resistance (AMR) data analysis and to work with microbial and antimicrobial
properties by using evidence-based methods, as described in
<doi:10.18637/jss.v104.i03>.")
    (license (list license:gpl2
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-ampliconduo
  (package
    (name "r-ampliconduo")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AmpliconDuo" version))
       (sha256
        (base32 "0vw06x47vc0dqzafgpkn4abdsrhxfs9dq8nnrr2pl49skj5n4hks"))))
    (properties `((upstream-name . "AmpliconDuo")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable r-ggplot2))
    (home-page "https://cran.r-project.org/package=AmpliconDuo")
    (synopsis
     "Statistical Analysis of Amplicon Data of the Same Sample to Identify Artefacts")
    (description
     "Increasingly powerful techniques for high-throughput sequencing open the
possibility to comprehensively characterize microbial communities, including
rare species.  However, a still unresolved issue are the substantial error rates
in the experimental process generating these sequences.  To overcome these
limitations we propose an approach, where each sample is split and the same
amplification and sequencing protocol is applied to both halves.  This procedure
should allow to detect likely PCR and sequencing artifacts, and true rare
species by comparison of the results of both parts.  The @code{AmpliconDuo}
package, whereas amplicon duo from here on refers to the two amplicon data sets
of a split sample, is intended to help interpret the obtained read frequency
distribution across split samples, and to filter the false positive reads.")
    (license license:gpl3+)))

(define-public r-ample
  (package
    (name "r-ample")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AMPLE" version))
       (sha256
        (base32 "019r60rcx3biyicmyc4i1806d31i2hp107ba2l0mgh08fx3lfwhj"))))
    (properties `((upstream-name . "AMPLE")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinyscreenshot
                             r-shinyjs
                             r-shiny
                             r-scales
                             r-rcolorbrewer
                             r-r6
                             r-markdown
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/PacificCommunity/ofp-sam-ample")
    (synopsis
     "Shiny Apps to Support Capacity Building on Harvest Control Rules")
    (description
     "Three Shiny apps are provided that introduce Harvest Control Rules (HCR) for
fisheries management.  Introduction to HCRs provides a simple overview to how
HCRs work.  Users are able to select their own HCR and step through its
performance, year by year.  Biological variability and estimation uncertainty
are introduced.  Measuring performance builds on the previous app and introduces
the idea of using performance indicators to measure HCR performance.  Comparing
performance allows multiple HCRs to be created and tested, and their performance
compared so that the preferred HCR can be selected.")
    (license license:gpl3+)))

(define-public r-ampir
  (package
    (name "r-ampir")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ampir" version))
       (sha256
        (base32 "0nnsxrnq3m1frrjp3i8bhm67x6xnl0scyb67wxgm5x7b187svhfj"))))
    (properties `((upstream-name . "ampir")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-peptides r-kernlab r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Legana/ampir")
    (synopsis "Predict Antimicrobial Peptides")
    (description
     "This package provides a toolkit to predict antimicrobial peptides from protein
sequences on a genome-wide scale.  It incorporates two support vector machine
models (\"precursor\" and \"mature\") trained on publicly available antimicrobial
peptide data using calculated physico-chemical and compositional sequence
properties described in Meher et al. (2017) <doi:10.1038/srep42362>.  In order
to support genome-wide analyses, these models are designed to accept any type of
protein as input and calculation of compositional properties has been optimised
for high-throughput use.  For best results it is important to select the model
that accurately represents your sequence type: for full length proteins, it is
recommended to use the default \"precursor\" model.  The alternative, \"mature\",
model is best suited for mature peptide sequences that represent the final
antimicrobial peptide sequence after post-translational processing.  For details
see Fingerhut et al. (2020) <doi:10.1093/bioinformatics/btaa653>.  The ampir
package is also available via a Shiny based GUI at
<https://ampir.marine-omics.net/>.")
    (license license:gpl2)))

(define-public r-ampgram
  (package
    (name "r-ampgram")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AmpGram" version))
       (sha256
        (base32 "1j5zx6n8cyzh6dnv96234zmlfj90fs9w4vm32xw8iqgvpcviqyz6"))))
    (properties `((upstream-name . "AmpGram")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi
                             r-shiny
                             r-ranger
                             r-pbapply
                             r-devtools
                             r-biogram))
    (home-page "https://github.com/michbur/AmpGram")
    (synopsis "Prediction of Antimicrobial Peptides")
    (description
     "Predicts antimicrobial peptides using random forests trained on the n-gram
encoded peptides.  The implemented algorithm can be accessed from both the
command line and shiny-based GUI. The @code{AmpGram} model is too large for CRAN
and it has to be downloaded separately from the repository:
<https://github.com/michbur/@code{AmpGramModel>}.")
    (license license:gpl3)))

(define-public r-ampd
  (package
    (name "r-ampd")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ampd" version))
       (sha256
        (base32 "0bi8qngd37n60ym516yjcahxc536vdwm60rq5ld32170hww69j7c"))))
    (properties `((upstream-name . "ampd")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ampd")
    (synopsis
     "An Algorithm for Automatic Peak Detection in Noisy Periodic and Quasi-Periodic Signals")
    (description
     "This package provides a method for automatic detection of peaks in noisy
periodic and quasi-periodic signals.  This method, called automatic
multiscale-based peak detection (AMPD), is based on the calculation and analysis
of the local maxima scalogram, a matrix comprising the scale-dependent
occurrences of local maxima.  For further information see
<doi:10.3390/a5040588>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-amp
  (package
    (name "r-amp")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "amp" version))
       (sha256
        (base32 "11132s3bdjcldvpws7yc1w4nifvq0iaavdda2zj0wwmi4rw5xx5c"))))
    (properties `((upstream-name . "amp")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-superlearner
                             r-rlang
                             r-mass
                             r-glmnet
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=amp")
    (synopsis "Statistical Test for the Multivariate Point Null Hypotheses")
    (description
     "This package provides a testing framework for testing the multivariate point
null hypothesis.  A testing framework described in Elder et al. (2022)
<@code{arXiv:2203.01897>} to test the multivariate point null hypothesis.  After
the user selects a parameter of interest and defines the assumed data generating
mechanism, this information should be encoded in functions for the parameter
estimator and its corresponding influence curve.  Some parameter and data
generating mechanism combinations have codings in this package, and are
explained in detail in the article.")
    (license license:gpl3+)))

(define-public r-amoudsurv
  (package
    (name "r-amoudsurv")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AmoudSurv" version))
       (sha256
        (base32 "1i5j34wscvqn37lm86dh9fnyn4j6b34rxyb2q6kpn3csyk53x5r9"))))
    (properties `((upstream-name . "AmoudSurv")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma r-flexsurv r-ahsurv))
    (home-page "https://cran.r-project.org/package=AmoudSurv")
    (synopsis "Tractable Parametric Odds-Based Regression Models")
    (description
     "Fits tractable fully parametric odds-based regression models for survival data,
including proportional odds (PO), accelerated failure time (AFT), accelerated
odds (AO), and General Odds (GO) models in overall survival frameworks.  Given
at least an R function specifying the survivor, hazard rate and cumulative
distribution functions, any user-defined parametric distribution can be fitted.
We applied and evaluated a minimum of seventeen (17) various baseline
distributions that can handle different failure rate shapes for each of the four
different proposed odds-based regression models.  For more information see
Bennet et al., (1983) <doi:10.1002/sim.4780020223>, and Muse et al., (2022)
<doi:10.1016/j.aej.2022.01.033>.")
    (license license:gpl3)))

(define-public r-amnlfa
  (package
    (name "r-amnlfa")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aMNLFA" version))
       (sha256
        (base32 "1bks7g6zc8817gr4j1mxzmyhw23mwafb6816a26vylk8d9k9d315"))))
    (properties `((upstream-name . "aMNLFA")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-stringi
                             r-reshape2
                             r-plyr
                             r-mplusautomation
                             r-gridextra
                             r-ggplot2
                             r-dplyr
                             r-devtools))
    (home-page "https://cran.r-project.org/package=aMNLFA")
    (synopsis "Automated Moderated Nonlinear Factor Analysis Using 'M-plus'")
    (description
     "Automated generation, running, and interpretation of moderated nonlinear factor
analysis models for obtaining scores from observed variables, using the method
described by Gottfredson and colleagues (2019)
<doi:10.1016/j.addbeh.2018.10.031>.  This package creates M-plus input files
which may be run iteratively to test two different types of covariate effects on
items: (1) latent variable impact (both mean and variance); and (2) differential
item functioning.  After sequentially testing for all effects, it also creates a
final model by including all significant effects after adjusting for multiple
comparisons.  Finally, the package creates a scoring model which uses the final
values of parameter estimates to generate latent variable scores. \\n\\n This
package generates TEMPLATES for M-plus inputs, which can and should be
inspected, altered, and run by the user.  In addition to being presented without
warranty of any kind, the package is provided under the assumption that everyone
who uses it is reading, interpreting, understanding, and altering every M-plus
input and output file.  There is no one right way to implement moderated
nonlinear factor analysis, and this package exists solely to save users time as
they generate M-plus syntax according to their own judgment.")
    (license license:gpl2)))

(define-public r-ammoniaconcentration
  (package
    (name "r-ammoniaconcentration")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AmmoniaConcentration" version))
       (sha256
        (base32 "05pnwfji9l9az4jvni6jy7cayzg5pbspz82a63kmj6rgibn4ywvn"))))
    (properties `((upstream-name . "AmmoniaConcentration")))
    (build-system r-build-system)
    (home-page "https://github.com/tumenas/ammonia")
    (synopsis "Un-Ionized Ammonia Concentration")
    (description
     "This package provides a function to calculate the concentration of un-ionized
ammonia in the total ammonia in aqueous solution using the @code{pH} and
temperature values.")
    (license license:expat)))

(define-public r-ammodels
  (package
    (name "r-ammodels")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AMModels" version))
       (sha256
        (base32 "18h075bzk8s75b3zmjd0x8c6dpl40445d4kv8n0p4ldnx80b1aha"))))
    (properties `((upstream-name . "AMModels")))
    (build-system r-build-system)
    (propagated-inputs (list r-unmarked))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=AMModels")
    (synopsis "Adaptive Management Model Manager")
    (description
     "Helps enable adaptive management by codifying knowledge in the form of models
generated from numerous analyses and data sets.  Facilitates this process by
storing all models and data sets in a single object that can be updated and
saved, thus tracking changes in knowledge through time.  A shiny application
called AM Model Manager (@code{modelMgr}()) enables the use of these functions
via a GUI.")
    (license license:gpl3)))

(define-public r-ammistability
  (package
    (name "r-ammistability")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ammistability" version))
       (sha256
        (base32 "06hlbpwa0d1grs7k1vfhchrfi9zml76hkn41vnrayv35fx0sl1pz"))))
    (properties `((upstream-name . "ammistability")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2
                             r-rdpack
                             r-mathjaxr
                             r-ggplot2
                             r-ggcorrplot
                             r-agricolae))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ammistability")
    (synopsis
     "Additive Main Effects and Multiplicative Interaction Model Stability Parameters")
    (description
     "Computes various stability parameters from Additive Main Effects and
Multiplicative Interaction (AMMI) analysis results such as Modified AMMI
Stability Value (MASV), Sums of the Absolute Value of the Interaction Principal
Component Scores (SIPC), Sum Across Environments of Genotype-Environment
Interaction Modelled by AMMI (AMGE), Sum Across Environments of Absolute Value
of Genotype-Environment Interaction Modelled by AMMI (AV_(AMGE)), AMMI Stability
Index (ASI), Modified ASI (MASI), AMMI Based Stability Parameter (ASTAB),
Annicchiarico's D Parameter (DA), Zhang's D Parameter (DZ), Averages of the
Squared Eigenvector Values (EV), Stability Measure Based on Fitted AMMI Model
(FA), Absolute Value of the Relative Contribution of IPCs to the Interaction
(Za).  Further calculates the Simultaneous Selection Index for Yield and
Stability from the computed stability parameters.  See the vignette for complete
list of citations for the methods implemented.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-ammibayes
  (package
    (name "r-ammibayes")
    (version "1.0-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ammiBayes" version))
       (sha256
        (base32 "0mj14n882jcg7p7rldb0d7yndp1dv3vma9g7f7f0vabhwm6d1jkd"))))
    (properties `((upstream-name . "ammiBayes")))
    (build-system r-build-system)
    (propagated-inputs (list r-spam
                             r-msm
                             r-movmf
                             r-latticeextra
                             r-lattice
                             r-hmisc
                             r-distfree-cr
                             r-coda
                             r-bayesplot))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=ammiBayes")
    (synopsis "Bayesian Ammi Model for Continuous Data")
    (description
     "Flexible multi-environment trials analysis via MCMC method for Additive Main
Effects and Multiplicative Model (AMMI) for continuous data.  Biplot with the
averages and regions of confidence can be generated.  The chains run in parallel
on Linux systems and run serially on Windows.")
    (license license:gpl2+)))

(define-public r-amim
  (package
    (name "r-amim")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AMIM" version))
       (sha256
        (base32 "1gpfsayic0hw2rwswxw7cwa0v47l1v7l4qhckbrwyq3dcxgl2rnv"))))
    (properties `((upstream-name . "AMIM")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (home-page "https://github.com/gelotran/AMIM")
    (synopsis "Compute the Adjusted Market Inefficiency Measure")
    (description
     "Fast tool to calculate the Adjusted Market Inefficiency Measure following Tran &
Leirvik (2019) <doi:10.1016/j.frl.2019.03.004>.  This tool provides rolling
window estimates of the Adjusted Market Inefficiency Measure for multiple
instruments simultaneously.")
    (license license:expat)))

(define-public r-amigaffh
  (package
    (name "r-amigaffh")
    (version "0.4.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AmigaFFH" version))
       (sha256
        (base32 "09227l3sq4bcph9x2w2qqh9zy2xrjr0makjyfx2vlp76r2xw394h"))))
    (properties `((upstream-name . "AmigaFFH")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs r-tuner))
    (home-page "https://pepijn-devries.github.io/AmigaFFH/")
    (synopsis "Commodore Amiga File Format Handler")
    (description
     "Modern software often poorly support older file formats.  This package intends
to handle many file formats that were native to the antiquated Commodore Amiga
machine.  This package focuses on file types from the older Amiga operating
systems (<= 3.0).  It will read and write specific file formats and coerces them
into more contemporary data.")
    (license license:gpl3)))

(define-public r-ami
  (package
    (name "r-ami")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ami" version))
       (sha256
        (base32 "0gcbwhbk3lzxcp35841pdipbifhk445x2r0ch6999n1y0h7rsca7"))))
    (properties `((upstream-name . "ami")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstudioapi r-rlang r-lifecycle r-glue r-curl))
    (home-page "https://github.com/briandconnelly/ami")
    (synopsis "Checks for Various Computing Environments")
    (description
     "This package provides a collection of lightweight functions that can be used to
determine the computing environment in which your code is running.  This
includes operating systems, continuous integration (CI) environments,
containers, and more.")
    (license license:expat)))

(define-public r-ameshousing
  (package
    (name "r-ameshousing")
    (version "0.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AmesHousing" version))
       (sha256
        (base32 "080r0fkmqsdrjgwbmdzacnkmd8py611z54i6r7nzj14r295d5qhk"))))
    (properties `((upstream-name . "AmesHousing")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-dplyr))
    (home-page "https://github.com/topepo/AmesHousing")
    (synopsis "The Ames Iowa Housing Data")
    (description
     "Raw and processed versions of the data from De Cock (2011)
<http://ww2.amstat.org/publications/jse> are included in the package.")
    (license license:gpl2)))

(define-public r-amerika
  (package
    (name "r-amerika")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "amerika" version))
       (sha256
        (base32 "1c0bi0wrc89d0zv0wzmdvka66mcikgi1w4gn1i22mvg5bivhzaqx"))))
    (properties `((upstream-name . "amerika")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=amerika")
    (synopsis "American Politics-Inspired Color Palette Generator")
    (description
     "This package provides a color palette generator inspired by American politics,
with colors ranging from blue on the left to gray in the middle and red on the
right.  A variety of palettes allow for a range of applications from brief
discrete scales (e.g., three colors for Democrats, Independents, and
Republicans) to continuous interpolated arrays including dozens of shades graded
from blue (left) to red (right).  This package greatly benefitted from building
on the source code (with permission) from Ram and Wickham (2015).")
    (license license:expat)))

(define-public r-amerifluxr
  (package
    (name "r-amerifluxr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "amerifluxr" version))
       (sha256
        (base32 "099vv1axgp4jfi9ic4rqsdcv8a5dz1z0zdmdx8r8h474p3jdqm7c"))))
    (properties `((upstream-name . "amerifluxr")))
    (build-system r-build-system)
    (propagated-inputs (list r-readxl
                             r-rcurl
                             r-memoise
                             r-jsonlite
                             r-httr
                             r-heatmaply))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/chuhousen/amerifluxr")
    (synopsis "Interface to 'AmeriFlux' Data Services")
    (description
     "Programmatic interface to the @code{AmeriFlux} database
(<https://ameriflux.lbl.gov/>).  Provide query, download, and data summary
tools.")
    (license license:bsd-3)))

(define-public r-amen
  (package
    (name "r-amen")
    (version "1.4.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "amen" version))
       (sha256
        (base32 "0nqgb25y8zmmas3i1abzv3w5m4cnxjsdqcqxxrhngj3ajz4dmyc7"))))
    (properties `((upstream-name . "amen")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pdhoff/amen")
    (synopsis
     "Additive and Multiplicative Effects Models for Networks and Relational Data")
    (description
     "Analysis of dyadic network and relational data using additive and multiplicative
effects (AME) models.  The basic model includes regression terms, the covariance
structure of the social relations model (Warner, Kenny and Stoto (1979)
<DOI:10.1037/0022-3514.37.10.1742>, Wong (1982) <DOI:10.2307/2287296>), and
multiplicative factor models (Hoff(2009) <DOI:10.1007/s10588-008-9040-4>).
Several different link functions accommodate different relational data
structures, including binary/network data, normal relational data, zero-inflated
positive outcomes using a tobit model, ordinal relational data and data from
fixed-rank nomination schemes.  Several of these link functions are discussed in
Hoff, Fosdick, Volfovsky and Stovel (2013) <DOI:10.1017/nws.2013.17>.
Development of this software was supported in part by NIH grant R01HD067509.")
    (license license:gpl3)))

(define-public r-amelie
  (package
    (name "r-amelie")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "amelie" version))
       (sha256
        (base32 "0f4rfijskrw9nmyzbrbz6yfa9d0a5cxjw8n9c36hc6jvh377i7k7"))))
    (properties `((upstream-name . "amelie")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=amelie")
    (synopsis "Anomaly Detection with Normal Probability Functions")
    (description
     "This package implements anomaly detection as binary classification for
cross-sectional data.  Uses maximum likelihood estimates and normal probability
functions to classify observations as anomalous.  The method is presented in the
following lecture from the Machine Learning course by Andrew Ng:
<https://www.coursera.org/learn/machine-learning/lecture/C8IJp/algorithm/>, and
is also described in: Aleksandar Lazarevic, Levent Ertoz, Vipin Kumar, Aysel
Ozgur, Jaideep Srivastava (2003) <doi:10.1137/1.9781611972733.3>.")
    (license license:gpl3+)))

(define-public r-amelia
  (package
    (name "r-amelia")
    (version "1.8.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Amelia" version))
       (sha256
        (base32 "0gpw6aki06ji6yszp7n9mfy8zbxvdwv1xwjlx11aj2x2ghj4mcjg"))))
    (properties `((upstream-name . "Amelia")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-rcpparmadillo r-rcpp r-foreign))
    (native-inputs (list r-knitr))
    (home-page "https://gking.harvard.edu/amelia")
    (synopsis "Program for Missing Data")
    (description
     "This package provides a tool that \"multiply imputes\" missing data in a single
cross-section (such as a survey), from a time series (like variables collected
for each year in a country), or from a time-series-cross-sectional data set
(such as collected by years for each of several countries).  Amelia II
implements our bootstrapping-based algorithm that gives essentially the same
answers as the standard IP or EMis approaches, is usually considerably faster
than existing approaches and can handle many more variables.  Unlike Amelia I
and other statistically rigorous imputation software, it virtually never crashes
(but please let us know if you find to the contrary!).  The program also
generalizes existing approaches by allowing for trends in time series across
observations within a cross-sectional unit, as well as priors that allow experts
to incorporate beliefs they have about the values of missing cells in their
data.  Amelia II also includes useful diagnostics of the fit of multiple
imputation models.  The program works from the R command line or via a graphical
user interface that does not require users to know R.")
    (license license:gpl2+)))

(define-public r-amctestmaker
  (package
    (name "r-amctestmaker")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AMCTestmakeR" version))
       (sha256
        (base32 "1vgncc61gmqhax2a7072jb36bzkycv80xqihkr5qs8jxnqqkndxd"))))
    (properties `((upstream-name . "AMCTestmakeR")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AMCTestmakeR")
    (synopsis "Generate LaTeX Code for Auto-Multiple-Choice (AMC)")
    (description
     "Generate code for use with the Optical Mark Recognition free software Auto
Multiple Choice (AMC).  More specifically, this package provides functions that
use as input the question and answer texts, and output the @code{LaTeX} code for
AMC.")
    (license license:gpl3)))

(define-public r-amcp
  (package
    (name "r-amcp")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AMCP" version))
       (sha256
        (base32 "0xp59zah72h7kvqnhyrx6p9nx0pghi49lgib3f1ins1zlxdv2j88"))))
    (properties `((upstream-name . "AMCP")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=AMCP")
    (synopsis "Model Comparison Perspective")
    (description
     "Accompanies the book \"Designing experiments and analyzing data: A model
comparison perspective\" (3rd ed.) by Maxwell, Delaney, & Kelley (2018;
Routledge).  Contains all of the data sets in the book's chapters and
end-of-chapter exercises.  Information about the book is available at
<https://designingexperiments.com/>.")
    (license license:gpl3+)))

(define-public r-ambit
  (package
    (name "r-ambit")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ambit" version))
       (sha256
        (base32 "1zjsbza5gzr0sfprfxrxrxy3f75r64bi5szk519n2wf5vr4qr7si"))))
    (properties `((upstream-name . "ambit")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-fbasics))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ambit")
    (synopsis "Simulation and Estimation of Ambit Processes")
    (description
     "Simulation and estimation tools for various types of ambit processes, including
trawl processes and weighted trawl processes.")
    (license license:gpl3)))

(define-public r-ambient
  (package
    (name "r-ambient")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ambient" version))
       (sha256
        (base32 "18cmn075yhcbqlrf4gsgqflqzk2d0kc3ah23k9pn47q2dvr6fqn2"))))
    (properties `((upstream-name . "ambient")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-cpp11))
    (home-page "https://ambient.data-imaginist.com")
    (synopsis "Generator of Multidimensional Noise")
    (description
     "Generation of natural looking noise has many application within simulation,
procedural generation, and art, to name a few.  The ambient package provides an
interface to the @code{FastNoise} C++ library and allows for efficient
generation of perlin, simplex, worley, cubic, value, and white noise with
optional perturbation in either 2, 3, or 4 (in case of simplex and white noise)
dimensions.")
    (license license:expat)))

(define-public r-amberr
  (package
    (name "r-amberr")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "amberr" version))
       (sha256
        (base32 "0fqn79lw4zf2yip6qbn3wkcdz44zrf9awq3kjw8smhbv84dcddll"))))
    (properties `((upstream-name . "amberr")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr r-dplyr))
    (home-page "https://github.com/obiba/amberr/")
    (synopsis "'Amber' Electronic Data Capture Client")
    (description
     "Amber is a server application for capturing electronic data records.  Rich forms
are used to collect data.  This Amber client allows to perform data extraction
for reporting or data transfer at persistent location purposes.")
    (license license:gpl3)))

(define-public r-amazonspr
  (package
    (name "r-amazonspr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "amazonspR" version))
       (sha256
        (base32 "0il66gb43zm6shr870yqlfn6l1srl37pdxpq3pdkil8g20nf92rn"))))
    (properties `((upstream-name . "amazonspR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://windsor.ai/")
    (synopsis "Get Amazon Sp Data via the 'Windsor.ai' API")
    (description
     "Collect your data on digital marketing campaigns from Amazon Sp using the
Windsor.ai API <https://windsor.ai/api-fields/>.")
    (license license:gpl3)))

(define-public r-amazons3r
  (package
    (name "r-amazons3r")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "amazons3R" version))
       (sha256
        (base32 "1h39cm0vyrr299wfpq9p1dpbgrjhkr28wm2q23lq8627i4b8bn5m"))))
    (properties `((upstream-name . "amazons3R")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://windsor.ai/")
    (synopsis "Get Amazon S3 Data via the 'Windsor.ai' API")
    (description
     "Collect your data on digital marketing campaigns from Amazon S3 using the
Windsor.ai API <https://windsor.ai/api-fields/>.")
    (license license:gpl3)))

(define-public r-amazonadsr
  (package
    (name "r-amazonadsr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "amazonadsR" version))
       (sha256
        (base32 "1z4c58swpm6y5h4vlxil5ic9larhnn7xkzd9sgggni4878yk0rng"))))
    (properties `((upstream-name . "amazonadsR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://windsor.ai/")
    (synopsis "Get Amazon Ads Data via the 'Windsor.ai' API")
    (description
     "Collect your data on digital marketing campaigns from Amazon Ads using the
Windsor.ai API <https://windsor.ai/api-fields/>.")
    (license license:gpl3)))

(define-public r-amapvox
  (package
    (name "r-amapvox")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AMAPVox" version))
       (sha256
        (base32 "10gb0k3msw2jmrq2dl0fm7636frsn7if9gsdxi6zgh0vpha6dqwz"))))
    (properties `((upstream-name . "AMAPVox")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rappdirs
                             r-jsonlite
                             r-dplyr
                             r-data-table
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://amapvox.org")
    (synopsis "LiDAR Data Voxelisation")
    (description
     "Read, manipulate and write voxel spaces.  Voxel spaces are read from text-based
output files of the AMAPVox software.  AMAPVox is a @code{LiDAR} point cloud
voxelisation software that aims at estimating leaf area through several
theoretical/numerical approaches.  See more in the article Vincent et al. (2017)
<doi:10.23708/1AJNMP> and the technical note Vincent et al. (2021)
<doi:10.23708/1AJNMP>.")
    (license (license:fsdg-compatible "CeCILL (>= 2)"))))

(define-public r-amapro
  (package
    (name "r-amapro")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "amapro" version))
       (sha256
        (base32 "1cq65kcsr2yxhrnm98n4fzaj6xljjln92kkn96d758n2lk65lwlg"))))
    (properties `((upstream-name . "amapro")))
    (build-system r-build-system)
    (propagated-inputs (list r-htmlwidgets))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/helgasoft/amapro/")
    (synopsis "Thin Wrapper for Mapping Library 'AMap'")
    (description
     "Build and control interactive 2D and 3D maps with R/Shiny'.  Lean set of
powerful commands wrapping native calls to AMap
<https://lbs.amap.com/api/jsapi-v2/summary/>.  Deliver rich mapping
functionality with minimal overhead.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-amapgeocode
  (package
    (name "r-amapgeocode")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "amapGeocode" version))
       (sha256
        (base32 "0j04hg2ks7578fiaymj295yll77xm6x5svmxx6m4n0djky8j10n1"))))
    (properties `((upstream-name . "amapGeocode")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-sjmisc
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-furrr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/womeimingzi11/amapGeocode")
    (synopsis "An Interface to the 'AutoNavi Maps' API Geocoding Services")
    (description
     "Getting and parsing data of location geocode/reverse-geocode and administrative
regions from @code{AutoNavi} Maps'<https://lbs.amap.com/api/webservice/summary>
API.")
    (license license:expat)))

(define-public r-amanpg
  (package
    (name "r-amanpg")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "amanpg" version))
       (sha256
        (base32 "19lmf844n2nz8n52lsmabi36bibdd3cc5ry8n1x0aksgspszjb40"))))
    (properties `((upstream-name . "amanpg")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=amanpg")
    (synopsis "Alternating Manifold Proximal Gradient Method for Sparse PCA")
    (description
     "Alternating Manifold Proximal Gradient Method for Sparse PCA uses the
Alternating Manifold Proximal Gradient (A@code{ManPG}) method to find sparse
principal components from a data or covariance matrix.  Provides a novel
algorithm for solving the sparse principal component analysis problem which
provides advantages over existing methods in terms of efficiency and convergence
guarantees.  Chen, S., Ma, S., Xue, L., & Zou, H. (2020)
<doi:10.1287/ijoo.2019.0032>.  Zou, H., Hastie, T., & Tibshirani, R. (2006)
<doi:10.1198/106186006X113430>.  Zou, H., & Xue, L. (2018)
<doi:10.1109/JPROC.2018.2846588>.")
    (license license:expat)))

(define-public r-amanida
  (package
    (name "r-amanida")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "amanida" version))
       (sha256
        (base32 "1177nadl66xmbvp474951rfyf4lczhmwxq3bwxzivh0gzcq80bys"))))
    (properties `((upstream-name . "amanida")))
    (build-system r-build-system)
    (propagated-inputs (list r-webchem
                             r-tidyverse
                             r-tidyr
                             r-tibble
                             r-rmarkdown
                             r-readxl
                             r-readr
                             r-magrittr
                             r-knitr
                             r-kableextra
                             r-ggrepel
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mariallr/amanida")
    (synopsis "Meta-Analysis for Non-Integral Data")
    (description
     "Combination of results for meta-analysis using significance and effect size
only.  P-values and fold-change are combined to obtain a global significance on
each metabolite.  Produces a volcano plot summarising the relevant results from
meta-analysis.  Vote-counting reports for metabolites.  And explore plot to
detect discrepancies between studies at a first glance.  Methodology is
described in the Llambrich et al. (2021) <doi:10.1093/bioinformatics/btab591>.")
    (license license:gpl3)))

(define-public r-amadeus
  (package
    (name "r-amadeus")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "amadeus" version))
       (sha256
        (base32 "08wzcmg1dcl1a2fkbs10asm1kcp9liyw8749xp0bfxfym0sagrxx"))))
    (properties `((upstream-name . "amadeus")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-testthat
                             r-terra
                             r-stringi
                             r-stars
                             r-sftime
                             r-sf
                             r-rvest
                             r-rlang
                             r-rdpack
                             r-parallelly
                             r-nhdplustools
                             r-httr
                             r-future-apply
                             r-future
                             r-exactextractr
                             r-dplyr
                             r-data-table
                             r-collapse
                             r-archive))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://niehs.github.io/amadeus/")
    (synopsis "Accessing and Analyzing Large-Scale Environmental Data")
    (description
     "This package provides functions are designed to facilitate access to and utility
with large scale, publicly available environmental data in R. The package
contains functions for downloading raw data files from web URLs
(download_data()), processing the raw data files into clean spatial objects
(process_covariates()), and extracting values from the spatial data objects at
point and polygon locations (calc_covariates()).  These functions call a series
of source-specific functions which are tailored to each data sources/datasets
particular URL structure, data format, and spatial/temporal resolution.  The
functions are tested, versioned, and open source and open access.  For
calc_sedc() method details, see Messier, Akita, and Serre (2012)
<doi:10.1021/es203152a>.")
    (license license:expat)))

(define-public r-alues
  (package
    (name "r-alues")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ALUES" version))
       (sha256
        (base32 "12fayxz0cb8wibccgz62gzrbkwzw2y4xljixrh02i1lbfwgsky14"))))
    (properties `((upstream-name . "ALUES")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/alstat/ALUES/")
    (synopsis "Agricultural Land Use Evaluation System")
    (description
     "Evaluates land suitability for different crops production.  The package is based
on the Food and Agriculture Organization (FAO) and the International Rice
Research Institute (IRRI) methodology for land evaluation.  Development of ALUES
is inspired by similar tool for land evaluation, Land Use Suitability Evaluation
Tool (LUSET).  The package uses fuzzy logic approach to evaluate land
suitability of a particular area based on inputs such as rainfall, temperature,
topography, and soil properties.  The membership functions used for fuzzy
modeling are the following: Triangular, Trapezoidal and Gaussian.  The methods
for computing the overall suitability of a particular area are also included,
and these are the Minimum, Maximum and Average.  Finally, ALUES is a highly
optimized library with core algorithms written in C++.")
    (license license:expat)))

(define-public r-altr2
  (package
    (name "r-altr2")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "altR2" version))
       (sha256
        (base32 "1whs3zqccyayv0slsd8bzfkp26q2shkdz7l7ickfxc3wnar8nrwa"))))
    (properties `((upstream-name . "altR2")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr r-gsl))
    (home-page "https://github.com/karchjd/altR2")
    (synopsis "Alternative Estimators to Adjusted R-Squared")
    (description
     "This package provides alternatives to the normal adjusted R-squared estimator
for the estimation of the multiple squared correlation in regression models, as
fitted by the lm() function.  The alternative estimators are described in Karch
(2020) <DOI:10.1525/collabra.343>.")
    (license license:gpl2)))

(define-public r-altopt
  (package
    (name "r-altopt")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ALTopt" version))
       (sha256
        (base32 "1nbbvniramajg6k83xqgx7r0abjrfja8zz0y3g3j8qmvbcqmjx13"))))
    (properties `((upstream-name . "ALTopt")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice r-cubature))
    (home-page "https://cran.r-project.org/package=ALTopt")
    (synopsis "Optimal Experimental Designs for Accelerated Life Testing")
    (description
     "This package creates the optimal (D, U and I) designs for the accelerated life
testing with right censoring or interval censoring.  It uses generalized linear
model (GLM) approach to derive the asymptotic variance-covariance matrix of
regression coefficients.  The failure time distribution is assumed to follow
Weibull distribution with a known shape parameter and log-linear link functions
are used to model the relationship between failure time parameters and stress
variables.  The acceleration model may have multiple stress factors, although
most ALTs involve only two or less stress factors.  ALTopt package also provides
several plotting functions including contour plot, Fraction of Use Space (FUS)
plot and Variance Dispersion graphs of Use Space (VDUS) plot.  For more details,
see Seo and Pan (2015) <doi:10.32614/RJ-2015-029>.")
    (license license:gpl3)))

(define-public r-altfuelr
  (package
    (name "r-altfuelr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "altfuelr" version))
       (sha256
        (base32 "0k3f4wr9gbn5aig40xg817hrnz2lx8g4adyy18s59fs8dw03v87h"))))
    (properties `((upstream-name . "altfuelr")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=altfuelr")
    (synopsis "Provides an Interface to the NREL Alternate Fuels Locator")
    (description
     "This package provides a number of functions to access the National Energy
Research Laboratory Alternate Fuel Locator API
<https://developer.nrel.gov/docs/transportation/alt-fuel-stations-v1/>.  The
Alternate Fuel Locator shows the location of alternate fuel stations in the
United States and Canada.  This package also includes the data from the US
Department of Energy Alternate Fuel database as a data set.")
    (license license:expat)))

(define-public r-alteredpqr
  (package
    (name "r-alteredpqr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AlteredPQR" version))
       (sha256
        (base32 "15zszn49c2a3lad2fzfj2yblyafbrhn6j3j1dcjbcz0fxgf6cmhw"))))
    (properties `((upstream-name . "AlteredPQR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=AlteredPQR")
    (synopsis "Detection of Altered Protein Quantitative Relationships")
    (description
     "Inference of protein complex states from quantitative proteomics data.  The
package takes information on known stable protein interactions (i.e.  protein
components of the same complex) and assesses how protein quantitative ratios
change between different conditions.  It reports protein pairs for which
relative protein quantities to each other have been significantly altered in the
tested condition.")
    (license license:gpl3+)))

(define-public r-altdoc
  (package
    (name "r-altdoc")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "altdoc" version))
       (sha256
        (base32 "0qp2k7mmpklh484ci2p9g4n7iyjy8ibzmh9w4a2h4sabvlm6v3f0"))))
    (properties `((upstream-name . "altdoc")))
    (build-system r-build-system)
    (propagated-inputs (list r-quarto r-fs r-evaluate r-desc r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://altdoc.etiennebacher.com")
    (synopsis
     "Package Documentation Websites with 'Quarto', 'Docsify', 'Docute', or 'MkDocs'")
    (description
     "This is a simple and powerful package to create, render, preview, and deploy
documentation websites for R packages.  It is a lightweight and flexible
alternative to pkgdown', with support for many documentation generators,
including Quarto', Docute', Docsify', and @code{MkDocs}'.")
    (license license:expat)))

(define-public r-altair
  (package
    (name "r-altair")
    (version "4.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "altair" version))
       (sha256
        (base32 "1hbwhyplvqdc06va0lahpqzg89aihjhryic48422h8mks956y0ff"))))
    (properties `((upstream-name . "altair")))
    (build-system r-build-system)
    (inputs (list python))
    (propagated-inputs (list r-vegawidget
                             r-reticulate
                             r-repr
                             r-magrittr
                             r-htmlwidgets
                             r-assertthat))
    (home-page "https://github.com/vegawidget/altair")
    (synopsis "Interface to 'Altair'")
    (description
     "Interface to Altair <https://altair-viz.github.io>, which itself is a Python
interface to Vega-Lite <https://vega.github.io/vega-lite/>.  This package uses
the Reticulate framework <https://rstudio.github.io/reticulate/> to manage the
interface between R and Python'.")
    (license license:expat)))

(define-public r-altadata
  (package
    (name "r-altadata")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "altadata" version))
       (sha256
        (base32 "0wv8a0423k0gw5i0qgz5d3wqw22a9pk7r80fp33pn0mxq9b54zdv"))))
    (properties `((upstream-name . "altadata")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (home-page "https://github.com/altabering/altadata-r")
    (synopsis "API Wrapper for Altadata.io")
    (description
     "This package provides functions for interacting directly with the ALTADATA API.
With this R package, developers can build applications around the ALTADATA API
without having to deal with accessing and managing requests and responses.
ALTADATA is a curated data marketplace for more information go to
<https://www.altadata.io>.")
    (license license:expat)))

(define-public r-alscpc
  (package
    (name "r-alscpc")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ALSCPC" version))
       (sha256
        (base32 "0ippxzq5qwb9dnpvm1kxhc0fxh83rs9ny5rcvd30w2bp632q9qdx"))))
    (properties `((upstream-name . "ALSCPC")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ALSCPC")
    (synopsis
     "Accelerated line search algorithm for simultaneous orthogonal transformation of several positive definite symmetric matrices to nearly diagonal form")
    (description
     "Using of the accelerated line search algorithm for simultaneously diagonalize a
set of symmetric positive definite matrices.")
    (license license:gpl2+)))

(define-public r-alr4
  (package
    (name "r-alr4")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alr4" version))
       (sha256
        (base32 "0v98yzi0fcjxq0ak0w05001h8m9nfa9l0ann9bqvz8bwcmb3jlr2"))))
    (properties `((upstream-name . "alr4")))
    (build-system r-build-system)
    (propagated-inputs (list r-effects r-car))
    (home-page "http://www.z.umn.edu/alr4ed")
    (synopsis "Data to Accompany Applied Linear Regression 4th Edition")
    (description
     "Datasets to Accompany S. Weisberg (2014, ISBN: 978-1-118-38608-8), \"Applied
Linear Regression,\" 4th edition.  Many data files in this package are included
in the `alr3` package as well, so only one of them should be used.")
    (license license:gpl2+)))

(define-public r-alqrfe
  (package
    (name "r-alqrfe")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alqrfe" version))
       (sha256
        (base32 "0lzw1sk4iaqzmg1a39v3wxcgj9hchyjcxq7b3nm83al8r75rfvdk"))))
    (properties `((upstream-name . "alqrfe")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-mass))
    (home-page "https://cran.r-project.org/package=alqrfe")
    (synopsis "Adaptive Lasso Quantile Regression with Fixed Effects")
    (description
     "Quantile regression with fixed effects solves longitudinal data, considering the
individual intercepts as fixed effects.  The parametric set of this type of
problem used to be huge.  Thus penalized methods such as Lasso are currently
applied.  Adaptive Lasso presents oracle proprieties, which include Gaussianity
and correct model selection.  Bayesian information criteria (BIC) estimates the
optimal tuning parameter lambda.  Plot tools are also available.")
    (license license:gpl2+)))

(define-public r-alphavantager
  (package
    (name "r-alphavantager")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alphavantager" version))
       (sha256
        (base32 "047a48jwn1vzmgdnp5jz1vl5mwvvvknzi75abn75rwlsjz6flc9m"))))
    (properties `((upstream-name . "alphavantager")))
    (build-system r-build-system)
    (propagated-inputs (list r-timetk
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-readr
                             r-purrr
                             r-jsonlite
                             r-httr
                             r-glue
                             r-dplyr))
    (home-page "https://github.com/business-science/alphavantager")
    (synopsis "Lightweight Interface to the Alpha Vantage API")
    (description
     "Alpha Vantage has free historical financial information.  All you need to do is
get a free API key at <https://www.alphavantage.co>.  Then you can use the R
interface to retrieve free equity information.  Refer to the Alpha Vantage
website for more information.")
    (license license:gpl3+)))

(define-public r-alphastable
  (package
    (name "r-alphastable")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alphastable" version))
       (sha256
        (base32 "01gwrcxlj2jlb8axs5qmrsixk3a8b7044ypyjg6dpdcxfbcf5fvp"))))
    (properties `((upstream-name . "alphastable")))
    (build-system r-build-system)
    (propagated-inputs (list r-stabledist r-nnls r-nlme r-mvtnorm))
    (home-page "https://cran.r-project.org/package=alphastable")
    (synopsis "Inference for Stable Distribution")
    (description
     "Developed to perform the tasks given by the following.  1-computing the
probability density function and distribution function of a univariate stable
distribution; 2- generating from univariate stable, truncated stable,
multivariate elliptically contoured stable, and bivariate strictly stable
distributions; 3- estimating the parameters of univariate symmetric stable, skew
stable, Cauchy, multivariate elliptically contoured stable, and multivariate
strictly stable distributions; 4- estimating the parameters of the mixture of
symmetric stable and mixture of Cauchy distributions.")
    (license license:gpl2+)))

(define-public r-alphasimr
  (package
    (name "r-alphasimr")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AlphaSimR" version))
       (sha256
        (base32 "02cz2kppvw9ccx99r0i5afhqcprv1qsdbjq14r9v6b3pcpvsdvia"))))
    (properties `((upstream-name . "AlphaSimR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-rcpparmadillo r-rcpp r-r6 r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/gaynorr/AlphaSimR")
    (synopsis "Breeding Program Simulations")
    (description
     "The successor to the @code{AlphaSim} software for breeding program simulation
[Faux et al. (2016) <doi:10.3835/plantgenome2016.02.0013>].  Used for stochastic
simulations of breeding programs to the level of DNA sequence for every
individual.  Contained is a wide range of functions for modeling common tasks in
a breeding program, such as selection and crossing.  These functions allow for
constructing simulations of highly complex plant and animal breeding programs
via scripting in the R software environment.  Such simulations can be used to
evaluate overall breeding program performance and conduct research into breeding
program design, such as implementation of genomic selection.  Included is the
Markovian Coalescent Simulator ('@code{MaCS}') for fast simulation of biallelic
sequences according to a population demographic history [Chen et al. (2009)
<doi:10.1101/gr.083634.108>].")
    (license license:expat)))

(define-public r-alphashape3d
  (package
    (name "r-alphashape3d")
    (version "1.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alphashape3d" version))
       (sha256
        (base32 "15903pl63p5l3kmqskq1y4hb75wwq0sz6k88zysx65xyd83wcmh3"))))
    (properties `((upstream-name . "alphashape3d")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl r-rann r-geometry))
    (home-page "https://cran.r-project.org/package=alphashape3d")
    (synopsis
     "Implementation of the 3D Alpha-Shape for the Reconstruction of 3D Sets from a Point Cloud")
    (description
     "Implementation in R of the alpha-shape of a finite set of points in the
three-dimensional space.  The alpha-shape generalizes the convex hull and allows
to recover the shape of non-convex and even non-connected sets in 3D, given a
random sample of points taken into it.  Besides the computation of the
alpha-shape, this package provides users with functions to compute the volume of
the alpha-shape, identify the connected components and facilitate the
three-dimensional graphical visualization of the estimated set.")
    (license license:gpl2)))

(define-public r-alphapart
  (package
    (name "r-alphapart")
    (version "0.9.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AlphaPart" version))
       (sha256
        (base32 "1ih76v3kgnladqq3nvlqrz5sqkg1j97m778kchz6k05cjxhj8l4q"))))
    (properties `((upstream-name . "AlphaPart")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-reshape
                             r-rcpp
                             r-pedigree
                             r-magrittr
                             r-ggplot2
                             r-dplyr
                             r-directlabels))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AlphaPart")
    (synopsis
     "Partition/Decomposition of Breeding Values by Paths of Information")
    (description
     "This package provides a software that implements a method for partitioning
genetic trends to quantify the sources of genetic gain in breeding programmes.
The partitioning method is described in Garcia-Cortes et al. (2008)
<doi:10.1017/S175173110800205X>.  The package includes the main function
@code{AlphaPart} for partitioning breeding values and auxiliary functions for
manipulating data and summarizing, visualizing, and saving results.")
    (license license:gpl2+)))

(define-public r-alphaoutlier
  (package
    (name "r-alphaoutlier")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alphaOutlier" version))
       (sha256
        (base32 "09yrbv7jsiymw5gzp8p92ki70v1fys2k75x4sb9s7wy3c58wn1cd"))))
    (properties `((upstream-name . "alphaOutlier")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsolnp r-quantreg r-nleqslv))
    (home-page "https://cran.r-project.org/package=alphaOutlier")
    (synopsis
     "Obtain Alpha-Outlier Regions for Well-Known Probability Distributions")
    (description
     "Given the parameters of a distribution, the package uses the concept of
alpha-outliers by Davies and Gather (1993) to flag outliers in a data set.  See
Davies, L.; Gather, U. (1993): The identification of multiple outliers, JASA, 88
423, 782-792, <doi:10.1080/01621459.1993.10476339> for details.")
    (license license:gpl3)))

(define-public r-alphan
  (package
    (name "r-alphan")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alphaN" version))
       (sha256
        (base32 "0asm0r1cqbqan0d5dbb7jffqgrcai2kcpw1l2p9s4qxfff9vliva"))))
    (properties `((upstream-name . "alphaN")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jespernwulff/alphaN")
    (synopsis "Set Alpha Based on Sample Size Using Bayes Factors")
    (description
     "Sets the alpha level for coefficients in a regression model as a decreasing
function of the sample size through the use of Jeffreys Approximate Bayes
factor.  You tell @code{alphaN}() your sample size, and it tells you to which
value you must lower alpha to avoid Lindley's Paradox.  For details, see Wulff
and Taylor (2023) <doi:10.31234/osf.io/3cbh7>.")
    (license license:expat)))

(define-public r-alphahull
  (package
    (name "r-alphahull")
    (version "2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alphahull" version))
       (sha256
        (base32 "04l078vr3cbf1pjm05p9ny566xwsg3zj059gnssn4nwlkc24n442"))))
    (properties `((upstream-name . "alphahull")))
    (build-system r-build-system)
    (propagated-inputs (list r-splancs
                             r-spatstat-random
                             r-spatstat-geom
                             r-sgeostat
                             r-r-utils
                             r-interp
                             r-ggplot2))
    (home-page "https://cran.r-project.org/package=alphahull")
    (synopsis
     "Generalization of the Convex Hull of a Sample of Points in the Plane")
    (description
     "Computation of the alpha-shape and alpha-convex hull of a given sample of points
in the plane.  The concepts of alpha-shape and alpha-convex hull generalize the
definition of the convex hull of a finite set of points.  The programming is
based on the duality between the Voronoi diagram and Delaunay triangulation.
The package also includes a function that returns the Delaunay mesh of a given
sample of points and its dual Voronoi diagram in one single object.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-alphaci
  (package
    (name "r-alphaci")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alphaci" version))
       (sha256
        (base32 "19ndi5xw3i4hpcklpxx379nnilccyz98rp9qqr8ag9xkv5jvq8si"))))
    (properties `((upstream-name . "alphaci")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrixcalc r-future-apply))
    (native-inputs (list r-knitr))
    (home-page "https://jonasmoss.github.io/alphaci/")
    (synopsis
     "Confidence Intervals for Coefficient Alpha and Standardized Alpha")
    (description
     "Calculate confidence intervals for alpha and standardized alpha using asymptotic
theory or the studentized bootstrap, with or without transformations.  Supports
the asymptotic distribution-free method of Maydeu-Olivares, et al. (2007)
<doi:10.1037/1082-989X.12.2.157>, the pseudo-elliptical method of Yuan & Bentler
(2002) <doi:10.1007/BF02294845>, and the normal method of van Zyl et al. (1999)
<doi:10.1007/BF02296146>, for both coefficient alpha and standardized alpha.")
    (license license:expat)))

(define-public r-alphabetr
  (package
    (name "r-alphabetr")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alphabetr" version))
       (sha256
        (base32 "1pmp6zwhgycb38y5jbvrbv2nza7gyjh508vy09ml483c2cysvc1r"))))
    (properties `((upstream-name . "alphabetr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-multicool r-dplyr r-clue))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/edwardslee/alphabetr")
    (synopsis
     "Algorithms for High-Throughput Sequencing of Antigen-Specific T Cells")
    (description
     "This package provides algorithms for frequency-based pairing of alpha-beta T
cell receptors.")
    (license license:agpl3+)))

(define-public r-alpha-correction-bh
  (package
    (name "r-alpha-correction-bh")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alpha.correction.bh" version))
       (sha256
        (base32 "1rwz90hlbiday3s9c90v13s7mprxmmibgk08jkvxfc5axgy8qgqs"))))
    (properties `((upstream-name . "alpha.correction.bh")))
    (build-system r-build-system)
    (propagated-inputs (list r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=alpha.correction.bh")
    (synopsis "Benjamini-Hochberg Alpha Correction")
    (description
     "This package provides the alpha-adjustment correction from \"Benjamini, Y., &
Hochberg, Y. (1995) <doi:10.1111/j.2517-6161.1995.tb02031.x> Controlling the
false discovery rate: a practical and powerful approach to multiple testing.
Journal of the Royal statistical society: series B (Methodological), 57(1),
289-300\".  For researchers interested in using the exact mathematical formulas
and procedures as used in the original paper.")
    (license license:expat)))

(define-public r-alpaca
  (package
    (name "r-alpaca")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alpaca" version))
       (sha256
        (base32 "1fqw8fcahpgdkj25pd6pq4isd0yrdpiypl3q9ir79a56pvjcn8a4"))))
    (properties `((upstream-name . "alpaca")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-mass r-formula
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/amrei-stammann/alpaca")
    (synopsis "Fit GLM's with High-Dimensional k-Way Fixed Effects")
    (description
     "This package provides a routine to partial out factors with many levels during
the optimization of the log-likelihood function of the corresponding generalized
linear model (glm).  The package is based on the algorithm described in Stammann
(2018) <@code{arXiv:1707.01815>} and is restricted to glm's that are based on
maximum likelihood estimation and nonlinear.  It also offers an efficient
algorithm to recover estimates of the fixed effects in a post-estimation routine
and includes robust and multi-way clustered standard errors.  Further the
package provides analytical bias corrections for binary choice models derived by
Fernandez-Val and Weidner (2016) <doi:10.1016/j.jeconom.2015.12.014> and Hinz,
Stammann, and Wanner (2020) <@code{arXiv:2004.12655>}.")
    (license license:gpl3)))

(define-public r-aloom
  (package
    (name "r-aloom")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aloom" version))
       (sha256
        (base32 "0n5vqp9hhdhy092yg93ldm2ii1l5pz30r7m2iwpjck0s92jjrhda"))))
    (properties `((upstream-name . "aloom")))
    (build-system r-build-system)
    (propagated-inputs (list r-randomforest r-glmnet))
    (home-page "https://www.rcc.org.rs/aloom.html")
    (synopsis "All Leave-One-Out Models")
    (description
     "This package creates all leave-one-out models and produces predictions for test
samples.")
    (license license:gpl2)))

(define-public r-alookr
  (package
    (name "r-alookr")
    (version "0.3.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alookr" version))
       (sha256
        (base32 "13lvbfgqb6ivrik1jcbfz3zn6p41aqwq68bk9ric3xnyjnczc5wg"))))
    (properties `((upstream-name . "alookr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rpart
                             r-rocr
                             r-rlang
                             r-ranger
                             r-randomforest
                             r-purrr
                             r-party
                             r-parallelly
                             r-mlmetrics
                             r-mass
                             r-glmnet
                             r-ggplot2
                             r-ggmosaic
                             r-future
                             r-dplyr
                             r-dlookr
                             r-cli
                             r-catools))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=alookr")
    (synopsis "Model Classifier for Binary Classification")
    (description
     "This package provides a collection of tools that support data splitting,
predictive modeling, and model evaluation.  A typical function is to split a
dataset into a training dataset and a test dataset.  Then compare the data
distribution of the two datasets.  Another feature is to support the development
of predictive models and to compare the performance of several predictive
models, helping to select the best model.")
    (license license:gpl2)))

(define-public r-alone
  (package
    (name "r-alone")
    (version "0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alone" version))
       (sha256
        (base32 "0iwamh7sxq62rw5vlkfh9fjlj6mwz7fbpd3cbmqb1iw1l6yc8b9c"))))
    (properties `((upstream-name . "alone")))
    (build-system r-build-system)
    (home-page "https://github.com/doehm/alone")
    (synopsis "Datasets from the Survival TV Series Alone")
    (description
     "This package provides a collection of datasets on the Alone survival TV series
in tidy format.  Included in the package are 4 datasets detailing the survivors,
their loadouts, episode details and season information.")
    (license license:cc0)))

(define-public r-almanac
  (package
    (name "r-almanac")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "almanac" version))
       (sha256
        (base32 "03954ylzqj34kkkz74ffa3i1kbby2vy0gxmbqd4gcw6qa646fq79"))))
    (properties `((upstream-name . "almanac")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-v8
                             r-rlang
                             r-r6
                             r-magrittr
                             r-lubridate
                             r-lifecycle
                             r-glue
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DavisVaughan/almanac")
    (synopsis "Tools for Working with Recurrence Rules")
    (description
     "This package provides tools for defining recurrence rules and recurrence sets.
Recurrence rules are a programmatic way to define a recurring event, like the
first Monday of December.  Multiple recurrence rules can be combined into larger
recurrence sets.  A full holiday and calendar interface is also provided that
can generate holidays within a particular year, can detect if a date is a
holiday, can respect holiday observance rules, and allows for custom holidays.")
    (license license:expat)))

(define-public r-allspice
  (package
    (name "r-allspice")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Allspice" version))
       (sha256
        (base32 "1a5wxs2fbpfk3032h70z86zzrzjjkp00c06dh7g2jmqc5irp6n2a"))))
    (properties `((upstream-name . "Allspice")))
    (build-system r-build-system)
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cran.r-project.org/package=Allspice")
    (synopsis "RNA-Seq Profile Classifier")
    (description
     "We developed a lightweight machine learning tool for RNA profiling of acute
lymphoblastic leukemia (ALL), however, it can be used for any problem where
multiple classes need to be identified from multi-dimensional data.  The
methodology is described in Makinen V-P, Rehn J, Breen J, Yeung D, White DL
(2022) Multi-cohort transcriptomic subtyping of B-cell acute lymphoblastic
leukemia, International Journal of Molecular Sciences 23:4574,
<doi:10.3390/ijms23094574>.  The classifier contains optimized mean profiles of
the classes (centroids) as observed in the training data, and new samples are
matched to these centroids using the shortest Euclidean distance.  Centroids
derived from a dataset of 1,598 ALL patients are included, but users can train
the models with their own data as well.  The output includes both numerical and
visual presentations of the classification results.  Samples with mixed features
from multiple classes or atypical values are also identified.")
    (license license:gpl2+)))

(define-public r-allomr
  (package
    (name "r-allomr")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "allomr" version))
       (sha256
        (base32 "0bsvg4n8yql7241q6dfgki2lnd5kdivjg31lzllca8xfzrfxcvn1"))))
    (properties `((upstream-name . "allomr")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=allomr")
    (synopsis
     "Removing Allometric Effects of Body Size in Morphological Analysis")
    (description
     "Implementation of the technique of Lleonart et al. (2000)
<doi:10.1006/jtbi.2000.2043> to scale body measurements that exhibit an
allometric growth.  This procedure is a theoretical generalization of the
technique used by Thorpe (1975) <doi:10.1111/j.1095-8312.1975.tb00732.x> and
Thorpe (1976) <doi:10.1111/j.1469-185X.1976.tb01063.x>.")
    (license license:gpl3+)))

(define-public r-allofus
  (package
    (name "r-allofus")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "allofus" version))
       (sha256
        (base32 "0lxds215ar26z28jv5kxp61vhg0yy73q7xj0dbdkiqnqhq7z8dhd"))))
    (properties `((upstream-name . "allofus")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-sessioninfo
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lifecycle
                             r-glue
                             r-dplyr
                             r-dbplyr
                             r-dbi
                             r-cli
                             r-bit64
                             r-bigrquery))
    (native-inputs (list r-knitr))
    (home-page "https://roux-ohdsi.github.io/allofus/")
    (synopsis "Interface for 'All of Us' Researcher Workbench")
    (description
     "Streamline use of the All of Us Researcher Workbench
(<https://www.researchallofus.org/data-tools/workbench/>)with tools to extract
and manipulate data from the All of Us database.  Increase interoperability with
the Observational Health Data Science and Informatics ('OHDSI') tool stack by
decreasing reliance of All of Us tools and allowing for cohort creation via
Atlas'.  Improve reproducible and transparent research using All of Us'.")
    (license license:expat)))

(define-public r-allmt
  (package
    (name "r-allmt")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "allMT" version))
       (sha256
        (base32 "0d34w0gl369mq512x3h2nsrvd13ahy36p5hdyvz5gnpdlaql64c6"))))
    (properties `((upstream-name . "allMT")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-survminer
                             r-survival
                             r-stringr
                             r-scales
                             r-rio
                             r-reshape2
                             r-readxl
                             r-plyr
                             r-htmltable
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tmungle/allMT")
    (synopsis "Acute Lymphoblastic Leukemia Maintenance Therapy Analysis")
    (description
     "Evaluates acute lymphoblastic leukemia maintenance therapy practice at patient
and cohort level.")
    (license license:gpl3+)))

(define-public r-allmetrics
  (package
    (name "r-allmetrics")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AllMetrics" version))
       (sha256
        (base32 "06zxznlk9vzvx0ykx13hqjrjqfcn5bfzsj7b0dsmfds1qfl83yh7"))))
    (properties `((upstream-name . "AllMetrics")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=AllMetrics")
    (synopsis "Calculating Multiple Performance Metrics of a Prediction Model")
    (description
     "This package provides a function to calculate multiple performance metrics for
actual and predicted values.  In total eight metrics will be calculated for
particular actual and predicted series.  Helps to describe a Statistical model's
performance in predicting a data.  Also helps to compare various models
performance.  The metrics are Root Mean Squared Error (RMSE), Relative Root Mean
Squared Error (RRMSE), Mean absolute Error (MAE), Mean absolute percentage error
(MAPE), Mean Absolute Scaled Error (MASE), Nash-Sutcliffe Efficiency (NSE),
Willmottâs Index (WI), and Legates and @code{McCabe} Index (LME).  Among them,
first five are expected to be lesser whereas, the last three are greater the
better.  More details can be found from Garai and Paul (2023)
<doi:10.1016/j.iswa.2023.200202> and Garai et al. (2024)
<doi:10.1007/s11063-024-11552-w>.")
    (license license:gpl3)))

(define-public r-allestimates
  (package
    (name "r-allestimates")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "allestimates" version))
       (sha256
        (base32 "1gjkry5v1mrb11zd3r9z9cj6aasrhj29yihpizqphbb463qima3a"))))
    (properties `((upstream-name . "allestimates")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-survival
                             r-stringr
                             r-ggplot2
                             r-dplyr
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=allestimates")
    (synopsis "Effect Estimates from All Models")
    (description
     "Estimates and plots effect estimates from models with all possible combinations
of a list of variables.  It can be used for assessing treatment effects in
clinical trials or risk factors in bio-medical and epidemiological research.
Like Stata command confall (Wang Z (2007) <doi:10.1177/1536867X0700700203> ),
allestimates calculates and stores all effect estimates, and plots them against
p values or Akaike information criterion (AIC) values.  It currently has
functions for linear regression: all_lm(), logistic and Poisson regression:
all_glm(), and Cox proportional hazards regression: all_cox().")
    (license license:gpl2)))

(define-public r-allelicseries
  (package
    (name "r-allelicseries")
    (version "0.0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AllelicSeries" version))
       (sha256
        (base32 "1i9p2hzi61mvl5gxcs7rlavcl70pvjscnqjlxms35n4ziq3hzrk0"))))
    (properties `((upstream-name . "AllelicSeries")))
    (build-system r-build-system)
    (propagated-inputs (list r-skat r-rnomni r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AllelicSeries")
    (synopsis "Allelic Series Test")
    (description
     "Implementation of gene-level rare variant association tests targeting allelic
series: genes where increasingly deleterious mutations have increasingly large
phenotypic effects.  The COding-variant Allelic Series Test (COAST) operates on
the benign missense variants (BMVs), deleterious missense variants (DMVs), and
protein truncating variants (PTVs) within a gene.  COAST uses a set of
adjustable weights that tailor the test towards rejecting the null hypothesis
for genes where the average magnitude of effect increases monotonically from
BMVs to DMVs to PTVs.  See @code{McCaw} ZR, OâDushlaine C, Somineni H, Bereket
M, Klein C, Karaletsos T, Casale FP, Koller D, Soare TW. (2022) \"An allelic
series rare variant association test for candidate gene discovery\"
<doi:10.1101/2022.12.23.521658>.")
    (license license:bsd-3)))

(define-public r-alleleshift
  (package
    (name "r-alleleshift")
    (version "1.1-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AlleleShift" version))
       (sha256
        (base32 "1lv7ap40bc6l1wp68lbxyavl9dky1mz09zbdjg9kyf1b9ca5siqx"))))
    (properties `((upstream-name . "AlleleShift")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan r-biodiversityr r-adegenet))
    (home-page "https://cran.r-project.org/package=AlleleShift")
    (synopsis
     "Predict and Visualize Population-Level Changes in Allele Frequencies in Response to Climate Change")
    (description
     "This package provides methods (<doi:10.7717/peerj.11534>) are provided of
calibrating and predicting shifts in allele frequencies through redundancy
analysis ('vegan::rda()') and generalized additive models ('mgcv::gam()').
Visualization functions for predicted changes in allele frequencies include
shift.dot.ggplot()', shift.pie.ggplot()', shift.moon.ggplot()',
shift.waffle.ggplot() and shift.surf.ggplot() that are made with input data sets
that are prepared by helper functions for each visualization method.  Examples
in the documentation show how to prepare animated climate change graphics
through a time series with the gganimate package.  Function amova.rda() shows
how Analysis of Molecular Variance can be directly conducted with the results
from redundancy analysis.")
    (license license:gpl3)))

(define-public r-alleleretain
  (package
    (name "r-alleleretain")
    (version "2.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AlleleRetain" version))
       (sha256
        (base32 "0b6h5giskqbjbrk8nf29i75wrhxsjw1c87laiqzrpbp9n717bl20"))))
    (properties `((upstream-name . "AlleleRetain")))
    (build-system r-build-system)
    (home-page "https://sites.google.com/site/alleleretain/")
    (synopsis "Allele Retention, Inbreeding, and Demography")
    (description
     "Simulate the effect of management or demography on allele retention and
inbreeding accumulation in bottlenecked populations of animals with overlapping
generations.")
    (license license:gpl2+)))

(define-public r-allelematch
  (package
    (name "r-allelematch")
    (version "2.5.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "allelematch" version))
       (sha256
        (base32 "1zzx9ilxh99grjl2dmzmby0kh9rgd1h2x1hvsaxvxxmnahdsprm2"))))
    (properties `((upstream-name . "allelematch")))
    (build-system r-build-system)
    (propagated-inputs (list r-dynamictreecut))
    (home-page "<doi:10.1111%2Fj.1755-0998.2012.03137.x>")
    (synopsis
     "Identifying Unique Multilocus Genotypes where Genotyping Error and Missing Data may be Present")
    (description
     "This package provides tools for the identification of unique of multilocus
genotypes when both genotyping error and missing data may be present; targeted
for use with large datasets and databases containing multiple samples of each
individual (a common situation in conservation genetics, particularly in
non-invasive wildlife sampling applications).  Functions explicitly incorporate
missing data and can tolerate allele mismatches created by genotyping error.  If
you use this package, please cite the original publication in Molecular Ecology
Resources (Galpern et al., 2012), the details for which can be generated using
citation('allelematch').  For a complete vignette, please access via the Data S1
Supplementary documentation and tutorials (PDF) located at
<doi:10.1111/j.1755-0998.2012.03137.x>.")
    (license license:gpl2+)))

(define-public r-allehap
  (package
    (name "r-allehap")
    (version "0.9.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alleHap" version))
       (sha256
        (base32 "1fqrw645s3f5363p7jl3dzy8xphxdr1v6wdsjmqcqwpgvjqfr2zz"))))
    (properties `((upstream-name . "alleHap")))
    (build-system r-build-system)
    (propagated-inputs (list r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=alleHap")
    (synopsis
     "Allele Imputation and Haplotype Reconstruction from Pedigree Databases")
    (description
     "This package provides tools to simulate alphanumeric alleles, impute genetic
missing data and reconstruct non-recombinant haplotypes from pedigree databases
in a deterministic way.  Allelic simulations can be implemented taking into
account many factors (such as number of families, markers, alleles per marker,
probability and proportion of missing genotypes, recombination rate, etc).
Genotype imputation can be used with simulated datasets or real databases
(previously loaded in .ped format).  Haplotype reconstruction can be carried out
even with missing data, since the program firstly imputes each family genotype
(without a reference panel), to later reconstruct the corresponding haplotypes
for each family member.  All this considering that each individual (due to
meiosis) should unequivocally have two alleles per marker (one inherited from
each parent) and thus imputation and reconstruction results can be
deterministically calculated.")
    (license license:gpl2+)))

(define-public r-allcontributors
  (package
    (name "r-allcontributors")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "allcontributors" version))
       (sha256
        (base32 "043li7wdm3m66k69ijjmak53pk8f6q3a89snncv36g82zwbpfvpp"))))
    (properties `((upstream-name . "allcontributors")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr
                             r-httr2
                             r-gitcreds
                             r-gh
                             r-gert
                             r-curl
                             r-clipr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ropenscilabs/allcontributors")
    (synopsis "Acknowledge all Contributors to a Project")
    (description
     "Acknowledge all contributors to a project via a single function call.  The
function appends to a README or other specified file(s) a table with names of
all individuals who contributed via code or repository issues.  The package also
includes several additional functions to extract and quantify contributions to
any repository.")
    (license license:gpl3)))

(define-public r-alkahest
  (package
    (name "r-alkahest")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alkahest" version))
       (sha256
        (base32 "18gfj0g1ccisvls4czh24bp3bcakyjfhddkl92fsmy9wpq2i3qhx"))))
    (properties `((upstream-name . "alkahest")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://packages.tesselle.org/alkahest/")
    (synopsis "Pre-Processing XY Data from Experimental Methods")
    (description
     "This package provides a lightweight, dependency-free toolbox for pre-processing
XY data from experimental methods (i.e.  any signal that can be measured along a
continuous variable).  This package provides methods for baseline estimation and
correction, smoothing, normalization, integration and peaks detection.  Baseline
correction methods includes polynomial fitting as described in Lieber and
Mahadevan-Jansen (2003) <doi:10.1366/000370203322554518>, Rolling Ball algorithm
after Kneen and Annegarn (1996) <doi:10.1016/0168-583X(95)00908-6>, SNIP
algorithm after Ryan et al. (1988) <doi:10.1016/0168-583X(88)90063-8>, 4S Peak
Filling after Liland (2015) <doi:10.1016/j.mex.2015.02.009> and more.")
    (license license:gpl3+)))

(define-public r-align
  (package
    (name "r-align")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "align" version))
       (sha256
        (base32 "1r411yvsgzfywamsjz3j5pim0qjfa7rmhdkhd3sj8lp1xh98jhy9"))))
    (properties `((upstream-name . "align")))
    (build-system r-build-system)
    (propagated-inputs (list r-matlab))
    (home-page "https://cran.r-project.org/package=align")
    (synopsis "Modified DTW Algorithm for Stratigraphic Time Series Alignment")
    (description
     "This package provides a dynamic time warping (DTW) algorithm for stratigraphic
alignment, translated into R from the original published MATLAB code by Hay et
al. (2019) <doi:10.1130/G46019.1>.  The DTW algorithm incorporates two
geologically relevant parameters (g and edge) for augmenting the typical DTW
cost matrix, allowing for a range of sedimentologic and chronologic conditions
to be explored, as well as the generation of an alignment library (as opposed to
a single alignment solution).  The g parameter relates to the relative sediment
accumulation rate between the two time series records, while the edge parameter
relates to the amount of total shared time between the records.  Note that this
algorithm is used for all DTW alignments in the Align Shiny application,
detailed in Hagen et al. (in review).")
    (license license:gpl3)))

(define-public r-alien
  (package
    (name "r-alien")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alien" version))
       (sha256
        (base32 "191prlklg153a7inbbjq3fjz0yr6pyyqcxl4syy8p6a64a92clyn"))))
    (properties `((upstream-name . "alien")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-helpersmg
                             r-ggplot2
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=alien")
    (synopsis "Estimate Invasive and Alien Species (IAS) Introduction Rates")
    (description
     "Easily estimate the introduction rates of alien species given first records
data.  It specializes in addressing the role of sampling on the pattern of
discoveries, thus providing better estimates than using Generalized Linear
Models which assume perfect immediate detection of newly introduced species.")
    (license license:expat)))

(define-public r-aliases2entrez
  (package
    (name "r-aliases2entrez")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aliases2entrez" version))
       (sha256
        (base32 "11myzwvmagnj35qrrxr35hklzv76c0c4h2zl64y3lzzn5rfii0n6"))))
    (properties `((upstream-name . "aliases2entrez")))
    (build-system r-build-system)
    (propagated-inputs (list r-readr
                             r-rcurl
                             r-org-hs-eg-db
                             r-limma
                             r-foreach
                             r-doparallel
                             r-annotationdbi))
    (home-page "https://cran.r-project.org/package=aliases2entrez")
    (synopsis "Converts Human gene symbols to entrez IDs")
    (description
     "Queries multiple resources authors HGNC (2019) <https://www.genenames.org>,
authors limma (2015) <doi:10.1093/nar/gkv007> to find the correspondence between
evolving nomenclature of human gene symbols, aliases, previous symbols or
synonyms with stable, curated gene @code{entrezID} from NCBI database.  This
allows fast, accurate and up-to-date correspondence between human gene
expression datasets from various date and platform (e.g: gene symbol: BRCA1 -
ID: 672).")
    (license license:expat)))

(define-public r-algorithmia
  (package
    (name "r-algorithmia")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "algorithmia" version))
       (sha256
        (base32 "1ccmcsyxncyv8k0fjvr5y44amygqi7qx2dy6rsy3a5pw281hllr4"))))
    (properties `((upstream-name . "algorithmia")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjson r-httr r-base64enc))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=algorithmia")
    (synopsis "Allows you to Easily Interact with the Algorithmia Platform")
    (description
     "The company, Algorithmia, houses the largest marketplace of online algorithms.
This package essentially holds a bunch of REST wrappers that make it very easy
to call algorithms in the Algorithmia platform and access files and directories
in the Algorithmia data API. To learn more about the services they offer and the
algorithms in the platform visit <http://algorithmia.com>.  More information for
developers can be found at <https://algorithmia.com/developers>.")
    (license license:expat)))

(define-public r-algo
  (package
    (name "r-algo")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "algo" version))
       (sha256
        (base32 "1g18p8jyj9crkqm16y2im3r9xzqwa36javv4vi1wvsqkg31d81si"))))
    (properties `((upstream-name . "algo")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-htmltools r-glue))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/feddelegrand7/algo")
    (synopsis
     "Implement an Address Search Auto Completion Menu on 'Shiny' Text Inputs Using the 'Algolia Places' 'Javascript' Library")
    (description
     "Allows the user to implement an address search auto completion menu on shiny
text inputs.  This is done using the Algolia Places @code{JavaScript} library.
See <https://community.algolia.com/places/>.")
    (license license:expat)))

(define-public r-algebraichaplopackage
  (package
    (name "r-algebraichaplopackage")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AlgebraicHaploPackage" version))
       (sha256
        (base32 "1krm5cx609sv2p0g3xm5jaiqs9li06v717lw7ywjvx7myc9x4c07"))))
    (properties `((upstream-name . "AlgebraicHaploPackage")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=AlgebraicHaploPackage")
    (synopsis "Haplotype Two Snips Out of a Paired Group of Patients")
    (description
     "Two unordered pairs of data of two different snips positions is haplotyped by
resolving a small number ob closed equations.")
    (license license:gpl2)))

(define-public r-algaeclassify
  (package
    (name "r-algaeclassify")
    (version "2.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "algaeClassify" version))
       (sha256
        (base32 "08jg210aas3bxjqgsapba8fzc133nh9afl0lzy784ywdx96lfmm0"))))
    (properties `((upstream-name . "algaeClassify")))
    (build-system r-build-system)
    (propagated-inputs (list r-taxize
                             r-ritis
                             r-rcurl
                             r-lubridate
                             r-jsonlite
                             r-curl))
    (home-page "https://doi.org/10.5066/F7S46Q3F")
    (synopsis
     "Tools to Standardize Phytoplankton Taxonomic Data and Perform Functional Group Classifications")
    (description
     "This package provides functions that facilitate the use of accepted taxonomic
nomenclature, collection of functional trait data, and assignment of functional
group classifications to phytoplankton species.  Possible classifications
include Morpho-functional group (MFG; Salmaso et al.  2015
<doi:10.1111/fwb.12520>) and CSR (Reynolds 1988; Functional morphology and the
adaptive strategies of phytoplankton.  In C.D. Sandgren (ed).  Growth and
reproductive strategies of freshwater phytoplankton, 388-433.  Cambridge
University Press, New York).  Versions 2.0.0 and later includes new functions
for querying the algaebase online taxonomic database (www.algaebase.org),
however these functions require a valid API key that must be acquired from the
algaebase admin.  Note that none of the @code{algaeClassify} authors are
affiliated with algaebase in any way.  Taxonomic names can also be checked
against a variety of taxonomic databases using the geographic name resolution
service (GNRS) via wrapper functions for the taxize package, with convenient
output format and unlikely names for phytoplankton taxa removed.  In addition,
currently accepted and outdated synonyms, and higher taxonomy, can be extracted
for lists of species from the ITIS database using wrapper functions for the
ritis package.  The @code{algaeClassify} package is a product of the GEISHA
(Global Evaluation of the Impacts of Storms on freshwater Habitat and Structure
of phytoplankton Assemblages), funded by CESAB (Centre for Synthesis and
Analysis of Biodiversity) and the USGS John Wesley Powell Center for Synthesis
and Analysis, with data and other support provided by members of GLEON (Global
Lake Ecology Observation Network).  DISCLAIMER: This software has been approved
for release by the U.S. Geological Survey (USGS).  Although the software has
been subjected to rigorous review, the USGS reserves the right to update the
software as needed pursuant to further analysis and review.  No warranty,
expressed or implied, is made by the USGS or the U.S. Government as to the
functionality of the software and related material nor shall the fact of release
constitute any such warranty.  Furthermore, the software is released on
condition that neither the USGS nor the U.S. Government shall be held liable for
any damages resulting from its authorized or unauthorized use.")
    (license license:cc0)))

(define-public r-alfred
  (package
    (name "r-alfred")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alfred" version))
       (sha256
        (base32 "0xgqzn750c4f13w2h8j2xj53sx0dij56164svw01nbvns4n0yvv8"))))
    (properties `((upstream-name . "alfred")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (home-page "https://github.com/onnokleen/alfred/")
    (synopsis
     "Downloading Time Series from ALFRED Database for Various Vintages")
    (description
     "This package provides direct access to the ALFRED
(<https://alfred.stlouisfed.org>) and FRED (<https://fred.stlouisfed.org>)
databases.  Its functions return tidy data frames for different releases of the
specified time series.  Note that this product uses the FREDÂ© API but is not
endorsed or certified by the Federal Reserve Bank of St.  Louis.")
    (license license:expat)))

(define-public r-alfr
  (package
    (name "r-alfr")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alfr" version))
       (sha256
        (base32 "1ldq8gvgqjjabn86hdqb6hxch8x4hvr6djv5ly4mx039dipc8jxi"))))
    (properties `((upstream-name . "alfr")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-magrittr r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rwetherall/alfr")
    (synopsis "Connectivity to 'Alfresco' Content Management Repositories")
    (description
     "Allows you to connect to an Alfresco content management repository and interact
with its contents using simple and intuitive functions.  You will be able to
establish a connection session to the Alfresco repository, read and upload
content and manage folder hierarchies.  For more details on the Alfresco content
management repository see
<https://www.alfresco.com/ecm-software/document-management>.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-alfq
  (package
    (name "r-alfq")
    (version "1.3.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aLFQ" version))
       (sha256
        (base32 "0kphpvhz36859f5l0k8mbf59g9871mynbs4ybdi0h5nm2cdjy9vx"))))
    (properties `((upstream-name . "aLFQ")))
    (build-system r-build-system)
    (propagated-inputs (list r-seqinr
                             r-rocr
                             r-reshape2
                             r-randomforest
                             r-plyr
                             r-lattice
                             r-data-table
                             r-caret
                             r-bio3d))
    (home-page "https://github.com/aLFQ")
    (synopsis
     "Estimating Absolute Protein Quantities from Label-Free LC-MS/MS Proteomics Data")
    (description
     "Determination of absolute protein quantities is necessary for multiple
applications, such as mechanistic modeling of biological systems.  Quantitative
liquid chromatography tandem mass spectrometry (LC-MS/MS) proteomics can measure
relative protein abundance on a system-wide scale.  To estimate absolute
quantitative information using these relative abundance measurements requires
additional information such as heavy-labeled references of known concentration.
Multiple methods have been using different references and strategies; some are
easily available whereas others require more effort on the users end.  Hence, we
believe the field might benefit from making some of these methods available
under an automated framework, which also facilitates validation of the chosen
strategy.  We have implemented the most commonly used absolute label-free
protein abundance estimation methods for LC-MS/MS modes quantifying on either
MS1-, MS2-levels or spectral counts together with validation algorithms to
enable automated data analysis and error estimation.  Specifically, we used
Monte-carlo cross-validation and bootstrapping for model selection and
imputation of proteome-wide absolute protein quantity estimation.  Our
open-source software is written in the statistical programming language R and
validated and demonstrated on a synthetic sample.")
    (license license:gpl3+)))

(define-public r-alfam2
  (package
    (name "r-alfam2")
    (version "4.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ALFAM2" version))
       (sha256
        (base32 "1l2l792zv8njg7iii7yzr8fksfijmp6r45a421bamg5r1wa3v1rx"))))
    (properties `((upstream-name . "ALFAM2")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/AU-BCE-EE/ALFAM2/")
    (synopsis "Dynamic Model of Ammonia Emission from Field-Applied Manure")
    (description
     "An implementation of the ALFAM2 dynamic emission model for ammonia
volatilization from field-applied animal slurry (manure with dry matter below
about 15%).  The model can be used to predict cumulative emission and emission
rate of ammonia following field application of slurry.  Predictions may be
useful for emission inventory calculations, fertilizer management, assessment of
mitigation strategies, or research aimed at understanding ammonia emission.
Default parameter sets include effects of application method, slurry
composition, and weather.  The model structure is based on a simplified
representation of the physical-chemical slurry-soil-atmosphere system.  See
Hafner et al. (2018) <doi:10.1016/j.atmosenv.2018.11.034> for information on the
model and Hafner et al. (2019) <doi:10.1016/j.agrformet.2017.11.027> for more on
the measurement data used for parameter development.")
    (license license:gpl3)))

(define-public r-aleplot
  (package
    (name "r-aleplot")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ALEPlot" version))
       (sha256
        (base32 "0bakl8a7xda7vh9zsc66kkd5w5jmb5j28kfwpfq2ifvk2mrakr3w"))))
    (properties `((upstream-name . "ALEPlot")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaimpute))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=ALEPlot")
    (synopsis
     "Accumulated Local Effects (ALE) Plots and Partial Dependence (PD) Plots")
    (description
     "Visualizes the main effects of individual predictor variables and their
second-order interaction effects in black-box supervised learning models.  The
package creates either Accumulated Local Effects (ALE) plots and/or Partial
Dependence (PD) plots, given a fitted supervised learning model.")
    (license license:gpl2)))

(define-public r-ale
  (package
    (name "r-ale")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ale" version))
       (sha256
        (base32 "1s3nym0zcp80yf7vw7m0mvii2d0y9hnxjxzfzl6ff5my5p84vy9i"))))
    (properties `((upstream-name . "ale")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaimpute
                             r-univariateml
                             r-tidyr
                             r-stringr
                             r-rlang
                             r-purrr
                             r-progressr
                             r-labeling
                             r-insight
                             r-glue
                             r-ggpubr
                             r-ggplot2
                             r-future
                             r-furrr
                             r-ellipsis
                             r-dplyr
                             r-broom
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tripartio/ale")
    (synopsis
     "Interpretable Machine Learning and Statistical Inference with Accumulated Local Effects (ALE)")
    (description
     "Accumulated Local Effects (ALE) were initially developed as a model-agnostic
approach for global explanations of the results of black-box machine learning
algorithms.  ALE has a key advantage over other approaches like partial
dependency plots (PDP) and SHapley Additive @code{exPlanations} (SHAP): its
values represent a clean functional decomposition of the model.  As such, ALE
values are not affected by the presence or absence of interactions among
variables in a mode.  Moreover, its computation is relatively rapid.  This
package rewrites the original code from the ALEPlot package for calculating ALE
data and it completely reimplements the plotting of ALE values.  It also extends
the original ALE concept to add bootstrap-based confidence intervals and
ALE-based statistics that can be used for statistical inference.  For more
details, see Okoli, Chitu.  2023.  âStatistical Inference Using Machine
Learning and Classical Techniques Based on Accumulated Local Effects (ALE).â
@code{arXiv}. <@code{arXiv:2310.09877>}. <doi:10.48550/@code{arXiv.2310.09877>}.")
    (license license:gpl2)))

(define-public r-aldvmm
  (package
    (name "r-aldvmm")
    (version "0.8.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aldvmm" version))
       (sha256
        (base32 "1qqfhfrhqlzlmfdf84sq9v17d6jrnn4w7yilskbrg74zvbcbc3k8"))))
    (properties `((upstream-name . "aldvmm")))
    (build-system r-build-system)
    (propagated-inputs (list r-sandwich
                             r-optimx
                             r-numderiv
                             r-lmtest
                             r-formula
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pletschm/aldvmm/")
    (synopsis "Adjusted Limited Dependent Variable Mixture Models")
    (description
     "The goal of the package aldvmm is to fit adjusted limited dependent variable
mixture models of health state utilities.  Adjusted limited dependent variable
mixture models are finite mixtures of normal distributions with an accumulation
of density mass at the limits, and a gap between 100% quality of life and the
next smaller utility value.  The package aldvmm uses the likelihood and expected
value functions proposed by Hernandez Alava and Wailoo (2015)
<doi:10.1177/1536867X1501500307> using normal component distributions and a
multinomial logit model of probabilities of component membership.")
    (license license:gpl3)))

(define-public r-aldqr
  (package
    (name "r-aldqr")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ALDqr" version))
       (sha256
        (base32 "0gk8hxh4p0fi47sf1zsvvxxbzp38vzk60wh8hmc63phnjab6qkv4"))))
    (properties `((upstream-name . "ALDqr")))
    (build-system r-build-system)
    (propagated-inputs (list r-sn r-hyperbolicdist))
    (home-page "https://cran.r-project.org/package=ALDqr")
    (synopsis "Quantile Regression Using Asymmetric Laplace Distribution")
    (description
     "EM algorithm for estimation of parameters and other methods in a quantile
regression.")
    (license license:gpl3+)))

(define-public r-ald
  (package
    (name "r-ald")
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ald" version))
       (sha256
        (base32 "12nf9vakayw24clrg56fh9x85kg277iricbs8ymahkjqjnc1p3cz"))))
    (properties `((upstream-name . "ald")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ald")
    (synopsis "The Asymmetric Laplace Distribution")
    (description
     "It provides the density, distribution function, quantile function, random number
generator, likelihood function, moments and Maximum Likelihood estimators for a
given sample, all this for the three parameter Asymmetric Laplace Distribution
defined in Koenker and Machado (1999).  This is a special case of the skewed
family of distributions available in Galarza et.al. (2017)
<doi:10.1002/sta4.140> useful for quantile regression.")
    (license license:gpl2+)))

(define-public r-alcyon
  (package
    (name "r-alcyon")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alcyon" version))
       (sha256
        (base32 "0kd9jw167p4cay301y5g4jfkpwgnzxpp6lpnn9q056c6jh447gix"))))
    (properties `((upstream-name . "alcyon")))
    (build-system r-build-system)
    (propagated-inputs (list r-stars r-sf r-rcpp r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/spatialnous/alcyon")
    (synopsis "Spatial Network Analysis")
    (description
     "Interface package for sala', the spatial network analysis library from the
@code{depthmapX} software application.  The R parts of the code are based on the
rdepthmap package.  Allows for the analysis of urban and building-scale networks
and provides metrics and methods usually found within the Space Syntax domain.
Methods in this package are described by K. Al-Sayed, A. Turner, B. Hillier, S.
Iida and A. Penn (2014) \"Space Syntax methodology\", and also by A. Turner (2004)
<https://discovery.ucl.ac.uk/id/eprint/2651> \"Depthmap 4: a researcher's
handbook\".")
    (license license:gpl3)))

(define-public r-albopictus
  (package
    (name "r-albopictus")
    (version "0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "albopictus" version))
       (sha256
        (base32 "0kw1agm9jqi9wl5zbx8bryngy751g3sih36rgbrx0m2170cy42d9"))))
    (properties `((upstream-name . "albopictus")))
    (build-system r-build-system)
    (home-page "https://github.com/kerguler/albopictusR")
    (synopsis "Age-Structured Population Dynamics Model")
    (description
     "This package implements discrete time deterministic and stochastic
age-structured population dynamics models described in Erguler and others (2016)
<doi:10.1371/journal.pone.0149282> and Erguler and others (2017)
<doi:10.1371/journal.pone.0174293>.")
    (license license:gpl3+)))

(define-public r-albi
  (package
    (name "r-albi")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aLBI" version))
       (sha256
        (base32 "03xh0m6nn81sig20p3k24zx131fmi9q5wqx2d4qjlx0wzrmf36px"))))
    (properties `((upstream-name . "aLBI")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Ataher76/aLBI")
    (synopsis "Estimating Length-Based Indicators for Fish Stock")
    (description
     "This package provides tools for estimating length-based indicators from length
frequency data to assess fish stock status and manage fisheries sustainably.
Implements methods from Cope and Punt (2009) <doi:10.1577/C08-025.1> for
data-limited stock assessment and Froese (2004)
<doi:10.1111/j.1467-2979.2004.00144.x> for detecting overfishing using simple
indicators.  Key functions include: @code{CalPar}(): Calculates various lengths
used in fish stock assessment as biological length indicators such as asymptotic
length (Linf), maximum length (Lmax), length at sexual maturity (Lm), and
optimal length (Lopt). @code{FishPar}(): Calculates length-based indicators
(LBIs) proposed by Froese (2004) <doi:10.1111/j.1467-2979.2004.00144.x> such as
the percentage of mature fish (Pmat), percentage of optimal length fish (Popt),
percentage of mega spawners (Pmega), and the sum of these as Pobj.  This
function also estimates confidence intervals for different lengths, visualizes
length frequency distributions, and provides data frames containing calculated
values. @code{FishSS}(): Makes decisions based on input from Cope and Punt
(2009) <doi:10.1577/C08-025.1> and parameters calculated by @code{FishPar}()
(e.g., Pobj, Pmat, Popt, LM_ratio) to determine stock status as target spawning
biomass (TSB40) and limit spawning biomass (LSB25).  These tools support
fisheries management decisions by providing robust, data-driven insights.")
    (license license:gpl3)))

(define-public r-albatross
  (package
    (name "r-albatross")
    (version "0.3-8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "albatross" version))
       (sha256
        (base32 "1cayp4025h14p66alagpvnwm5f05l7gv132x3a2d40cf77nrrpky"))))
    (properties `((upstream-name . "albatross")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma r-multiway r-matrix r-lattice r-cmls))
    (home-page "https://cran.r-project.org/package=albatross")
    (synopsis "PARAFAC Analysis of Fluorescence Excitation-Emission Matrices")
    (description
     "Perform parallel factor analysis (PARAFAC: Hitchcock, 1927)
<doi:10.1002/sapm192761164> on fluorescence excitation-emission matrices: handle
scattering signal and inner filter effect, scale the dataset, fit the model;
perform split-half validation or jack-knifing.  Modified approaches such as
Whittaker interpolation, randomised split-half, and fluorescence and scattering
model estimation are also available.  The package has a low dependency footprint
and has been tested on a wide range of R versions.")
    (license license:gpl3+)))

(define-public r-alassosurvic
  (package
    (name "r-alassosurvic")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ALassoSurvIC" version))
       (sha256
        (base32 "0asaip7mq1brahirm025d57gk1fgysbmhi6jypf2jihai7dl4jg2"))))
    (properties `((upstream-name . "ALassoSurvIC")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=ALassoSurvIC")
    (synopsis
     "Adaptive Lasso for the Cox Regression with Interval Censored and Possibly Left Truncated Data")
    (description
     "Penalized variable selection tools for the Cox proportional hazards model with
interval censored and possibly left truncated data.  It performs variable
selection via penalized nonparametric maximum likelihood estimation with an
adaptive lasso penalty.  The optimal thresholding parameter can be searched by
the package based on the profile Bayesian information criterion (BIC).  The
asymptotic validity of the methodology is established in Li et al. (2019
<doi:10.1177/0962280219856238>).  The unpenalized nonparametric maximum
likelihood estimation for interval censored and possibly left truncated data is
also available.")
    (license license:gpl3+)))

(define-public r-alarmdata
  (package
    (name "r-alarmdata")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alarmdata" version))
       (sha256
        (base32 "1gx4s4dbhqvbj5y8qxgvm2x4a5n22llwiqm8a6iavg1yd3sqhzg0"))))
    (properties `((upstream-name . "alarmdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-tinytiger
                             r-tidyselect
                             r-stringr
                             r-sf
                             r-rlang
                             r-redistmetrics
                             r-redist
                             r-readr
                             r-rappdirs
                             r-geomander
                             r-dplyr
                             r-dataverse
                             r-curl
                             r-cli
                             r-censable))
    (home-page "https://github.com/alarm-redist/alarmdata/")
    (synopsis "Download, Merge, and Process Redistricting Data")
    (description
     "Utility functions to download and process data produced by the ALARM Project,
including 2020 redistricting files Kenny and @code{McCartan} (2021)
<https://alarm-redist.org/posts/2021-08-10-census-2020/> and the 50-State
Redistricting Simulations of @code{McCartan}, Kenny, Simko, Garcia, Wang, Wu,
Kuriwaki, and Imai (2022) <doi:10.7910/DVN/SLCD3E>.  The package extends the
data introduced in @code{McCartan}, Kenny, Simko, Garcia, Wang, Wu, Kuriwaki,
and Imai (2022) <doi:10.1038/s41597-022-01808-2> to also include states with
only a single district.")
    (license license:expat)))

(define-public r-alakazam
  (package
    (name "r-alakazam")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "alakazam" version))
       (sha256
        (base32 "01alngdynigvycmpqa71ccndw6v91hmrs3c2ah0r148rxdgbw58v"))))
    (properties `((upstream-name . "alakazam")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringi
                             r-seqinr
                             r-scales
                             r-rlang
                             r-readr
                             r-rcpp
                             r-progress
                             r-matrix
                             r-iranges
                             r-igraph
                             r-ggplot2
                             r-genomicalignments
                             r-dplyr
                             r-biostrings
                             r-ape
                             r-airr))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://alakazam.readthedocs.io/")
    (synopsis "Immunoglobulin Clonal Lineage and Diversity Analysis")
    (description
     "This package provides methods for high-throughput adaptive immune receptor
repertoire sequencing (AIRR-Seq; Rep-Seq) analysis.  In particular,
immunoglobulin (Ig) sequence lineage reconstruction, lineage topology analysis,
diversity profiling, amino acid property analysis and gene usage.  Citations:
Gupta and Vander Heiden, et al (2017) <doi:10.1093/bioinformatics/btv359>,
Stern, Yaari and Vander Heiden, et al (2014) <doi:10.1126/scitranslmed.3008879>.")
    (license license:agpl3)))

(define-public r-akmbiclust
  (package
    (name "r-akmbiclust")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "akmbiclust" version))
       (sha256
        (base32 "19dj12vlry6f3agzrnshx2c4rpa2h7dlx2138r49jjy9sm48pyfw"))))
    (properties `((upstream-name . "akmbiclust")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=akmbiclust")
    (synopsis "Alternating K-Means Biclustering")
    (description
     "This package implements the alternating k-means biclustering algorithm in
Fraiman and Li (2020) <@code{arXiv:2009.04550>}.")
    (license license:gpl3)))

(define-public r-akima
  (package
    (name "r-akima")
    (version "0.6-3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "akima" version))
       (sha256
        (base32 "0gmdh5kvq455k82pvdsqbkk69bi7g0960jq5rcl3cbhxm297arcm"))))
    (properties `((upstream-name . "akima")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=akima")
    (synopsis "Interpolation of Irregularly and Regularly Spaced Data")
    (description
     "Several cubic spline interpolation methods of H. Akima for irregular and regular
gridded data are available through this package, both for the bivariate case
(irregular data: ACM 761, regular data: ACM 760) and univariate case (ACM 433
and ACM 697).  Linear interpolation of irregular gridded data is also covered by
reusing D. J. Renkas triangulation code which is part of Akimas Fortran code.  A
bilinear interpolator for regular grids was also added for comparison with the
bicubic interpolator on regular grids.")
    (license (list (license:fsdg-compatible "ACM")
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-akiflagger
  (package
    (name "r-akiflagger")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "akiFlagger" version))
       (sha256
        (base32 "08z5jvigzvl3af17dd8l6zil0s694i22x0a7xvb3n4fvg6fargz4"))))
    (properties `((upstream-name . "akiFlagger")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-shiny r-dplyr r-data-table))
    (home-page "https://github.com/isaranwrap/akiFlagger")
    (synopsis "Flags Acute Kidney Injury (AKI)")
    (description
     "Flagger to detect acute kidney injury (AKI) in a patient dataset.")
    (license license:expat)))

(define-public r-ake
  (package
    (name "r-ake")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Ake" version))
       (sha256
        (base32 "0mdpx1dnk57yr0mpf9hqqdjx96j0sqdjdy964qvwmqbycvxxnp3z"))))
    (properties `((upstream-name . "Ake")))
    (build-system r-build-system)
    (home-page "www.r-project.org")
    (synopsis "Associated Kernel Estimations")
    (description
     "Continuous and discrete (count or categorical) estimation of density,
probability mass function (p.m.f.) and regression functions are performed using
associated kernels.  The cross-validation technique and the local Bayesian
procedure are also implemented for bandwidth selection.")
    (license license:gpl2+)))

(define-public r-akc
  (package
    (name "r-akc")
    (version "0.9.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "akc" version))
       (sha256
        (base32 "0m3n9qyz4z0xd535ma1nhh9qkg8abc4psa3xhzpq4spmgvk3an13"))))
    (properties `((upstream-name . "akc")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidytext
                             r-tidygraph
                             r-tidyfst
                             r-tibble
                             r-textstem
                             r-stringr
                             r-rlang
                             r-magrittr
                             r-igraph
                             r-ggwordcloud
                             r-ggraph
                             r-ggplot2
                             r-ggforce
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hope-data-science/akc")
    (synopsis "Automatic Knowledge Classification")
    (description
     "This package provides a tidy framework for automatic knowledge classification
and visualization.  Currently, the core functionality of the framework is mainly
supported by modularity-based clustering (community detection) in keyword
co-occurrence network, and focuses on co-word analysis of bibliometric research.
 However, the designed functions in akc are general, and could be extended to
solve other tasks in text mining as well.")
    (license license:expat)))

(define-public r-aka
  (package
    (name "r-aka")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aka" version))
       (sha256
        (base32 "0370rs9kz43azgclc11x8185sr5hq507mvk2pmwprwwj86j65vpk"))))
    (properties `((upstream-name . "aka")))
    (build-system r-build-system)
    (home-page "https://klmr.me/aka/")
    (synopsis "Define Aliases for R Expressions")
    (description
     "Create aliases for other R names or arbitrarily complex R expressions.
Accessing the alias acts as-if the aliased expression were invoked instead, and
continuously reflects the current value of that expression: updates to the
original expression will be reflected in the alias; and updates to the alias
will automatically be reflected in the original expression.")
    (license license:expat)))

(define-public r-ajv
  (package
    (name "r-ajv")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ajv" version))
       (sha256
        (base32 "1qd5ncb7rdnnvqfknsvq9nrpxrh0zv3jyh4b91dcvfvhp262vfrm"))))
    (properties `((upstream-name . "ajv")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml r-v8 r-rjsonio))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jdthorpe/ajvr")
    (synopsis "Another JSON Schema Validator")
    (description
     "This package provides a thin wrapper around the ajv JSON validation package for
@code{JavaScript}.  See <http://epoberezkin.github.io/ajv/> for details.")
    (license license:gpl2)))

(define-public r-aiuq
  (package
    (name "r-aiuq")
    (version "0.5.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AIUQ" version))
       (sha256
        (base32 "0bbqckp0s9f9ljp0b8z65pzfh3hhfp910ca7hsivwi9j7vr61jaz"))))
    (properties `((upstream-name . "AIUQ")))
    (build-system r-build-system)
    (propagated-inputs (list r-supergauss r-plot3d r-fftwtools))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AIUQ")
    (synopsis "Ab Initio Uncertainty Quantification")
    (description
     "Uncertainty quantification and inverse estimation by probabilistic generative
models from the beginning of the data analysis.  An example is a Fourier basis
method for inverse estimation in scattering analysis of microscopy videos.  It
does not require specifying a certain range of Fourier bases and it
substantially reduces computational cost via the generalized Schur algorithm.
See the reference: Mengyang Gu, Yue He, Xubo Liu and Yimin Luo (2023),
<doi:10.48550/@code{arXiv.2309.02468>}.")
    (license license:gpl3+)))

(define-public r-aisoph
  (package
    (name "r-aisoph")
    (version "0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aisoph" version))
       (sha256
        (base32 "033dawiysl5vn1k3fjabmzc8liywk8sbahm41ga3wzhyyz6mqldm"))))
    (properties `((upstream-name . "aisoph")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-iso))
    (home-page "https://cran.r-project.org/package=aisoph")
    (synopsis "Additive Isotonic Proportional Hazards Model")
    (description
     "Nonparametric estimation of additive isotonic covariate effects for proportional
hazards model.")
    (license license:gpl2+)))

(define-public r-airthermo
  (package
    (name "r-airthermo")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aiRthermo" version))
       (sha256
        (base32 "058082qdfi1pbdgf26vbfahri1kbc8b2l816q4dq89j5aj5is0a2"))))
    (properties `((upstream-name . "aiRthermo")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=aiRthermo")
    (synopsis "Atmospheric Thermodynamics and Visualization")
    (description
     "Deals with many computations related to the thermodynamics of atmospheric
processes.  It includes many functions designed to consider the density of air
with varying degrees of water vapour in it, saturation pressures and mixing
ratios, conversion of moisture indices, computation of atmospheric states of
parcels subject to dry or pseudoadiabatic vertical evolutions and atmospheric
instability indices that are routinely used for operational weather forecasts or
meteorological diagnostics.")
    (license license:gpl3)))

(define-public r-airt
  (package
    (name "r-airt")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "airt" version))
       (sha256
        (base32 "1x2p172k7lffcn3cfs7pgdi3iq2fpys8rsrx1spq7gy14xcq9w63"))))
    (properties `((upstream-name . "airt")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-rcolorbrewer
                             r-pracma
                             r-mirt
                             r-magrittr
                             r-ggplot2
                             r-estcrm
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://sevvandi.github.io/airt/")
    (synopsis "Evaluation of Algorithm Collections Using Item Response Theory")
    (description
     "An evaluation framework for algorithm portfolios using Item Response Theory
(IRT).  We use continuous and polytomous IRT models to evaluate algorithms and
introduce algorithm characteristics such as stability, effectiveness and
anomalousness (Kandanaarachchi, Smith-Miles 2020)
<doi:10.13140/RG.2.2.11363.09760>.")
    (license license:gpl3)))

(define-public r-airr
  (package
    (name "r-airr")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "airr" version))
       (sha256
        (base32 "0k3a9yg30brpysp62fvvl7pisgb7441ggbl03jx8mh5bjdckr210"))))
    (properties `((upstream-name . "airr")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml r-stringi r-readr r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "http://docs.airr-community.org")
    (synopsis "AIRR Data Representation Reference Library")
    (description
     "Schema definitions and read, write and validation tools for data formatted in
accordance with the AIRR Data Representation schemas defined by the AIRR
Community <http://docs.airr-community.org>.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-airqualityes
  (package
    (name "r-airqualityes")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "airqualityES" version))
       (sha256
        (base32 "1kf673ajk06ggy9524lip5flpfgq0gql7d46kgnri8l3kbzw7zcj"))))
    (properties `((upstream-name . "airqualityES")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble))
    (home-page "https://github.com/jdieramon/airqualityES")
    (synopsis "Air Quality Measurements in Spain from 2011 to 2018")
    (description
     "These dataset contains daily quality air measurements in Spain over a period of
18 years (from 2001 to 2018).  The measurements refer to several pollutants.
These data are openly published by the Government of Spain.  The datasets were
originally spread over a number of files and formats.  Here, the same
information is contained in simple dataframe for convenience of researches,
journalists or general public.  See the Spanish Government website
<http://www.miteco.gob.es/> for more information.")
    (license license:cc-by-sa4.0)))

(define-public r-airports
  (package
    (name "r-airports")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "airports" version))
       (sha256
        (base32 "1ahfqqfcvr731hj0h7d00jd87h1adiryh42sv4mh318lk5rglm6f"))))
    (properties `((upstream-name . "airports")))
    (build-system r-build-system)
    (home-page "https://github.com/OpenIntroStat/airports")
    (synopsis "Data on Airports")
    (description "Geographic, use, and property related data on airports.")
    (license license:gpl3)))

(define-public r-airportr
  (package
    (name "r-airportr")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "airportr" version))
       (sha256
        (base32 "1h8h0cdfqgxv8cf9hp82sx5n4a1z88qyyxicj7d2kmmybqqz2r5n"))))
    (properties `((upstream-name . "airportr")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dshkol/airportr")
    (synopsis "Convenience Tools for Working with Airport Data")
    (description
     "Retrieves open source airport data and provides tools to look up information,
translate names into codes and vice-verse, as well as some basic calculation
functions for measuring distances.  Data is licensed under the Open Database
License.")
    (license license:expat)))

(define-public r-airnow
  (package
    (name "r-airnow")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "airnow" version))
       (sha256
        (base32 "0dpx2hkh0y6769pi8xzyi327lygxysckqz85z40ps50ghw02r8bh"))))
    (properties `((upstream-name . "airnow")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rlang
                             r-lifecycle
                             r-jsonlite
                             r-httr2
                             r-glue
                             r-cli))
    (home-page "https://github.com/briandconnelly/airnow")
    (synopsis "Retrieve 'AirNow' Air Quality Observations and Forecasts")
    (description
     "Retrieve air quality data via the @code{AirNow} <https://www.airnow.gov/> API.")
    (license license:expat)))

(define-public r-airmonitor
  (package
    (name "r-airmonitor")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AirMonitor" version))
       (sha256
        (base32 "1lxdnplv06g5j5lwiydgx3yimrpkm85i88cxq7yrpv2gcffalj4p"))))
    (properties `((upstream-name . "AirMonitor")))
    (build-system r-build-system)
    (propagated-inputs (list r-xts
                             r-tidyselect
                             r-stringr
                             r-rlang
                             r-readr
                             r-mazamatimeseries
                             r-mazamarollutils
                             r-mazamacoreutils
                             r-magrittr
                             r-lubridate
                             r-leaflet
                             r-dygraphs
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MazamaScience/AirMonitor")
    (synopsis "Air Quality Data Analysis")
    (description
     "Utilities for working with hourly air quality monitoring data with a focus on
small particulates (PM2.5).  A compact data model is structured as a list with
two dataframes.  A meta dataframe contains spatial and measuring device metadata
associated with deployments at known locations.  A data dataframe contains a
datetime column followed by columns of measurements associated with each
\"device-deployment\".  Algorithms to calculate @code{NowCast} and the associated
Air Quality Index (AQI) are defined at the US Environmental Projection Agency
@code{AirNow} program:
<https://www.airnow.gov/sites/default/files/2020-05/aqi-technical-assistance-document-sept2018.pdf>.")
    (license license:gpl3)))

(define-public r-airly
  (package
    (name "r-airly")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aiRly" version))
       (sha256
        (base32 "0d3w5dwk0b3pd49zw2005rili4p3l1i3x4hzp8cf6rljr86x01cy"))))
    (properties `((upstream-name . "aiRly")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-reshape2 r-jsonlite r-httr))
    (home-page "https://github.com/piotrekjanus/aiRly")
    (synopsis "R Wrapper for 'Airly' API")
    (description
     "Get information about air quality using Airly <https://airly.eu/> API through R.")
    (license license:expat)))

(define-public r-airgrteaching
  (package
    (name "r-airgrteaching")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "airGRteaching" version))
       (sha256
        (base32 "0dsxj20g63a4y4a865qsqdk8w1w0ybcam6x4f10bmppallkalagz"))))
    (properties `((upstream-name . "airGRteaching")))
    (build-system r-build-system)
    (propagated-inputs (list r-xts
                             r-shinyjs
                             r-shiny
                             r-plotrix
                             r-markdown
                             r-dygraphs
                             r-airgr))
    (native-inputs (list r-knitr))
    (home-page "https://hydrogr.github.io/airGRteaching/")
    (synopsis
     "Teaching Hydrological Modelling with the GR Rainfall-Runoff Models ('Shiny' Interface Included)")
    (description
     "Add-on package to the @code{airGR} package that simplifies its use and is aimed
at being used for teaching hydrology.  The package provides 1) three functions
that allow to complete very simply a hydrological modelling exercise 2) plotting
functions to help students to explore observed data and to interpret the results
of calibration and simulation of the GR ('GÃ©nie rural') models 3) a Shiny
graphical interface that allows for displaying the impact of model parameters on
hydrographs and models internal variables.")
    (license license:gpl2)))

(define-public r-airgriwrm
  (package
    (name "r-airgriwrm")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "airGRiwrm" version))
       (sha256
        (base32 "09hcs5qhs3mykdarznqwiqd2vjdc5fqmp8lvfpmf4s2b3yqvydax"))))
    (properties `((upstream-name . "airGRiwrm")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr r-diagrammer r-airgr))
    (native-inputs (list r-knitr))
    (home-page "https://airgriwrm.g-eau.fr/")
    (synopsis "'airGR' Integrated Water Resource Management")
    (description
     "Semi-distributed Precipitation-Runoff Modelling based on @code{airGR} package
models integrating human infrastructures and their managements.")
    (license license:agpl3)))

(define-public r-airgrdatassim
  (package
    (name "r-airgrdatassim")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "airGRdatassim" version))
       (sha256
        (base32 "05c108rcj4rlzrbabai95abxhyjsrrrsgvds4zamvyzpjl64f9ps"))))
    (properties `((upstream-name . "airGRdatassim")))
    (build-system r-build-system)
    (propagated-inputs (list r-airgr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=airGRdatassim")
    (synopsis "Ensemble-Based Data Assimilation with GR Hydrological Models")
    (description
     "Add-on to the @code{airGR} package which provides the tools to assimilate
observed discharges in daily GR hydrological models.  The package consists in
two functions allowing to perform the assimilation of observed discharges via
the Ensemble Kalman filter or the Particle filter as described in Piazzi et al.
(2021) <doi:10.1029/2020WR028390>.")
    (license license:gpl2)))

(define-public r-airgrdatasets
  (package
    (name "r-airgrdatasets")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "airGRdatasets" version))
       (sha256
        (base32 "05059ylizjlb90yqllkw7c0gm8nx1a42mw0334zkm9xpgzsis8cb"))))
    (properties `((upstream-name . "airGRdatasets")))
    (build-system r-build-system)
    (home-page
     "https://gitlab.irstea.fr/HYCAR-Hydro/airgrgalaxy/airgrdatasets")
    (synopsis
     "Hydro-Meteorological Catchments Datasets for the 'airGR' Packages")
    (description
     "Sample of hydro-meteorological datasets extracted from the CAMELS-FR French
database <https://hal.inrae.fr/hal-03687235>.  It provides metadata and
catchment-scale aggregated hydro-meteorological time series on a pool of French
catchments for use by the @code{airGR} packages.")
    (license (license:fsdg-compatible "CC BY-NC-SA 4.0"))))

(define-public r-airgr
  (package
    (name "r-airgr")
    (version "1.7.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "airGR" version))
       (sha256
        (base32 "0kxa3p659sh72x54qhbxr4ni781czj4g2k6x3zs30y2zgmljrwqa"))))
    (properties `((upstream-name . "airGR")))
    (build-system r-build-system)
    (native-inputs (list r-knitr gfortran))
    (home-page "https://hydrogr.github.io/airGR/")
    (synopsis
     "Suite of GR Hydrological Models for Precipitation-Runoff Modelling")
    (description
     "Hydrological modelling tools developed at INRAE-Antony (HYCAR Research Unit,
France).  The package includes several conceptual rainfall-runoff models (GR4H,
GR5H, GR4J, GR5J, GR6J, GR2M, GR1A) that can be applied either on a lumped or
semi-distributed way.  A snow accumulation and melt model (@code{CemaNeige}) and
the associated functions for the calibration and evaluation of models are also
included.  Use help(@code{airGR}) for package description and references.")
    (license license:gpl2)))

(define-public r-airexposure
  (package
    (name "r-airexposure")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AirExposure" version))
       (sha256
        (base32 "0x2wpwynm03azz04dksgk4rri46dvbpkah3d39v7b53inrwb9i8h"))))
    (properties `((upstream-name . "AirExposure")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf
                             r-lubridate
                             r-leaflet
                             r-jsonlite
                             r-httr
                             r-htmlwidgets
                             r-htmltools
                             r-dplyr))
    (home-page "https://github.com/flortames/Air-Exposure-Model")
    (synopsis
     "Exposure Model to Air Pollutants Based on Mobility and Daily Activities")
    (description
     "Model that assesses daily exposure to air pollution, which considers daily
population mobility on a geographical scale and the spatial and temporal
variability of pollutant concentrations, in addition to traditional parameters
such as exposure time and pollutant concentration.")
    (license license:gpl3)))

(define-public r-aire-zmvm
  (package
    (name "r-aire-zmvm")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aire.zmvm" version))
       (sha256
        (base32 "10x22n9cjr2zcjm84j6l3i9lywfw744giww4h2ki3iq3v4qli09y"))))
    (properties `((upstream-name . "aire.zmvm")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-stringr
                             r-sp
                             r-rvest
                             r-readxl
                             r-readr
                             r-progress
                             r-lubridate
                             r-httr
                             r-dplyr))
    (home-page "https://hoyodesmog.diegovalle.net/aire.zmvm/")
    (synopsis "Download Mexico City Pollution, Wind, and Temperature Data")
    (description
     "This package provides tools for downloading hourly averages, daily maximums and
minimums from each of the pollution, wind, and temperature measuring stations or
geographic zones in the Mexico City metro area.  The package also includes the
locations of each of the stations and zones.  See <http://aire.cdmx.gob.mx/> for
more information.")
    (license license:bsd-3)))

(define-public r-air
  (package
    (name "r-air")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "air" version))
       (sha256
        (base32 "0r54kq6iiad3g07sz69napw5qx6qp9sx2qp6jy7frynh8s60bss9"))))
    (properties `((upstream-name . "air")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjson r-keyring r-httr))
    (home-page "https://github.com/soumyaray/air")
    (synopsis "AI Assistant to Write and Understand R Code")
    (description
     "An R console utility that lets you ask R related questions to the @code{OpenAI}
large language model.  It can answer how-to() questions by providing code, and
whatis() questions by explaining what given code does.  You must provision your
own key for the @code{OpenAI} API
<https://platform.openai.com/docs/api-reference>.")
    (license license:expat)))

(define-public r-aipw
  (package
    (name "r-aipw")
    (version "0.6.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AIPW" version))
       (sha256
        (base32 "1iqq665qigw9dmc62x2dz1nvrk8s65ph0a3k2p7mkznr9frshhi2"))))
    (properties `((upstream-name . "AIPW")))
    (build-system r-build-system)
    (propagated-inputs (list r-superlearner
                             r-rsolnp
                             r-r6
                             r-progressr
                             r-ggplot2
                             r-future-apply))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/yqzhong7/AIPW")
    (synopsis "Augmented Inverse Probability Weighting")
    (description
     "The AIPW pacakge implements the augmented inverse probability weighting, a
doubly robust estimator, for average causal effect estimation with user-defined
stacked machine learning algorithms.  To cite the AIPW package, please use:
\"Yongqi Zhong, Edward H. Kennedy, Lisa M. Bodnar, Ashley I. Naimi (2021, In
Press).  AIPW: An R Package for Augmented Inverse Probability Weighted
Estimation of Average Causal Effects.  American Journal of Epidemiology\".
Visit: <https://yqzhong7.github.io/AIPW/> for more information.")
    (license license:gpl3)))

(define-public r-aion
  (package
    (name "r-aion")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aion" version))
       (sha256
        (base32 "0acm2nffrpqbli358cbpl0sd7bq9m5qbnnrk01xd7h9l63xzs67c"))))
    (properties `((upstream-name . "aion")))
    (build-system r-build-system)
    (propagated-inputs (list r-arkhe))
    (native-inputs (list r-knitr))
    (home-page "https://packages.tesselle.org/aion/")
    (synopsis "Archaeological Time Series")
    (description
     "This package provides a toolkit for archaeological time series.  This package
provides a system of classes and methods to represent and work with
archaeological time series.  Dates are represented as \"rata die\" and can be
converted to (virtually) any calendar defined by Reingold and Dershowitz (2018)
<doi:10.1017/9781107415058>.  This packages offers a simple API that can be used
by other specialized packages.")
    (license license:gpl3+)))

(define-public r-aimsir17
  (package
    (name "r-aimsir17")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aimsir17" version))
       (sha256
        (base32 "0v804maqaygqhw3y9wqap3h9vvjniqnnbsv1psjj500r2yscicxs"))))
    (properties `((upstream-name . "aimsir17")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble))
    (home-page "https://github.com/JimDuggan/aimsir17")
    (synopsis "Irish Weather Observing Stations Hourly Records for 2017")
    (description
     "Named after the Irish name for weather, this package contains tidied data from
the Irish Meteorological Service's hourly observations for 2017.  In all, the
data sets include observations from 25 weather stations, and also latitude and
longitude coordinates for each weather station.  Now includes energy generation
data for Ireland and Northern Ireland (2017), including Wind Generation data.")
    (license (license:fsdg-compatible
              "Creative Commons Attribution 4.0 International License"))))

(define-public r-aimplot
  (package
    (name "r-aimplot")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aimPlot" version))
       (sha256
        (base32 "1d52b7kccxba6j7n0gbd7pzs0p87zn32vv8gdf2f7lyr75qzgz7x"))))
    (properties `((upstream-name . "aimPlot")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (home-page "https://cran.r-project.org/package=aimPlot")
    (synopsis "Create Pie Like Plot for Completeness")
    (description
     "Create a pie like plot to visualise if the aim or several aims of a project is
achieved or close to be achieved i.e the aim is achieved when the point is at
the center of the pie plot.  Imagine it's like a dartboard and the center means
100% completeness/achievement.  Achievement can also be understood as 100%
coverage.  The standard distribution of completeness allocated in the pie plot
is 50%, 80% and 100% completeness.")
    (license license:gpl2)))

(define-public r-aihuman
  (package
    (name "r-aihuman")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aihuman" version))
       (sha256
        (base32 "0isd6j3qfhl9dfcknzsfyipvvni7bw6cpdkk4v5azpi3mcixbq4n"))))
    (properties `((upstream-name . "aihuman")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rcppeigen
                             r-rcpparmadillo
                             r-rcpp
                             r-purrr
                             r-metr
                             r-mass
                             r-magrittr
                             r-lme4
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-coda
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sooahnshin/aihuman")
    (synopsis
     "Experimental Evaluation of Algorithm-Assisted Human Decision-Making")
    (description
     "This package provides statistical methods for analyzing experimental evaluation
of the causal impacts of algorithmic recommendations on human decisions
developed by Imai, Jiang, Greiner, Halen, and Shin (2023)
<doi:10.1093/jrsssa/qnad010>.  The data used for this paper, and made available
here, are interim, based on only half of the observations in the study and (for
those observations) only half of the study follow-up period.  We use them only
to illustrate methods, not to draw substantive conclusions.")
    (license license:gpl2+)))

(define-public r-aifftools
  (package
    (name "r-aifftools")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AIFFtools" version))
       (sha256
        (base32 "0r3ksaag7xpfzi1v944fhv89ygp9ikhyw6kfspihcnxw767iz70i"))))
    (properties `((upstream-name . "AIFFtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-tuner r-r-utils))
    (home-page "https://cran.r-project.org/package=AIFFtools")
    (synopsis "Read AIFF Files and Convert to WAVE Format")
    (description
     "This package provides functions are provided to read and convert AIFF audio
files to WAVE (WAV) format.  This supports, for example, use of the @code{tuneR}
package, which does not currently handle AIFF files.  The AIFF file format is
defined in
<https://web.archive.org/web/20080125221040/http://www.borg.com/~jglatt/tech/aiff.htm>
and
<https://www.mmsp.ece.mcgill.ca/Documents/@code{AudioFormats/AIFF/Docs/AIFF-1.3.pdf>}
.")
    (license license:lgpl3)))

(define-public r-aifeducation
  (package
    (name "r-aifeducation")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aifeducation" version))
       (sha256
        (base32 "0lnxbvmsalis942nxgf0c3j602wcdzpvdm9r194c2ci0xpybc6ls"))))
    (properties `((upstream-name . "aifeducation")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-smotefamily
                             r-rlang
                             r-reticulate
                             r-reshape2
                             r-rcpparmadillo
                             r-rcpp
                             r-irrcac
                             r-irr
                             r-iotarelr
                             r-foreach
                             r-doparallel
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://fberding.github.io/aifeducation/")
    (synopsis "Artificial Intelligence for Education")
    (description
     "In social and educational settings, the use of Artificial Intelligence (AI) is a
challenging task.  Relevant data is often only available in handwritten forms,
or the use of data is restricted by privacy policies.  This often leads to small
data sets.  Furthermore, in the educational and social sciences, data is often
unbalanced in terms of frequencies.  To support educators as well as educational
and social researchers in using the potentials of AI for their work, this
package provides a unified interface for neural nets in keras', tensorflow', and
pytorch to deal with natural language problems.  In addition, the package ships
with a shiny app, providing a graphical user interface.  This allows the usage
of AI for people without skills in writing python/R scripts.  The tools
integrate existing mathematical and statistical methods for dealing with small
data sets via pseudo-labeling (e.g. Lee (2013)
<https://www.researchgate.net/publication/280581078_Pseudo-Label_The_Simple_and_Efficient_Semi-Supervised_Learning_Method_for_Deep_Neural_Networks>,
Cascante-Bonilla et al. (2020) <doi:10.48550/@code{arXiv.2001.06001>}) and
imbalanced data via the creation of synthetic cases (e.g. Bunkhumpornpat et al.
(2012) <doi:10.1007/s10489-011-0287-y>).  Performance evaluation of AI is
connected to measures from content analysis which educational and social
researchers are generally more familiar with (e.g. Berding & Pargmann (2022)
<doi:10.30819/5581>, Gwet (2014) <ISBN:978-0-9708062-8-4>, Krippendorff (2019)
<doi:10.4135/9781071878781>).  Estimation of energy consumption and CO2
emissions during model training is done with the python library codecarbon'.
Finally, all objects created with this package allow to share trained AI models
with other people.")
    (license license:gpl3)))

(define-public r-aides
  (package
    (name "r-aides")
    (version "1.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aides" version))
       (sha256
        (base32 "0cfi9h2bmjpxrvhbamm808s1pzgw9p9xxj70ickqc7ki8rzzk6cw"))))
    (properties `((upstream-name . "aides")))
    (build-system r-build-system)
    (propagated-inputs (list r-meta r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=aides")
    (synopsis "Additive Information & Details of Evidence Synthesis")
    (description
     "This package provides a supportive collection of functions for pooled analysis
of aggregate data.  The current version supports users to test assumptions
before relevant analysis of bias from study size and sequential analysis such as
mentioned by Wetterslev, J., Jakobsen, J. C., & Gluud, C. (2017)
<doi:10.1186/s12874-017-0315-7>.")
    (license license:gpl3+)))

(define-public r-aidar
  (package
    (name "r-aidar")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aidar" version))
       (sha256
        (base32 "1q2iz2qzh2yl0v0sc537xq4vbx2nblym3kv419vr7jvrghdpx3vj"))))
    (properties `((upstream-name . "aidar")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml))
    (home-page "https://cran.r-project.org/package=aidar")
    (synopsis "Tools for Reading AIDA Files")
    (description
     "Read objects from the AIDA (<http://aida.freehep.org/>) file and make them
available as dataframes in R.")
    (license license:lgpl2.0+)))

(define-public r-aid
  (package
    (name "r-aid")
    (version "2.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AID" version))
       (sha256
        (base32 "0s7020vh93rnyhcfsmsn1swffrbg1fx3pqq2bd043m4b90yrlzpc"))))
    (properties `((upstream-name . "AID")))
    (build-system r-build-system)
    (propagated-inputs (list r-tseries
                             r-stringr
                             r-psych
                             r-nortest
                             r-meta
                             r-mass
                             r-ggplot2))
    (home-page "https://cran.r-project.org/package=AID")
    (synopsis "Box-Cox Power Transformation")
    (description
     "This package performs Box-Cox power transformation for different purposes,
graphical approaches, assesses the success of the transformation via tests and
plots, computes mean and confidence interval for back transformed data.")
    (license license:gpl2+)))

(define-public r-aiccpermanova
  (package
    (name "r-aiccpermanova")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AICcPermanova" version))
       (sha256
        (base32 "0sq3lnyrja2vpl5wqq517zw32fi96x99gqxj9lh8q3b0napkb0fd"))))
    (properties `((upstream-name . "AICcPermanova")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-tidyr
                             r-stringr
                             r-future
                             r-furrr
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-data-table
                             r-car
                             r-broom))
    (home-page "https://github.com/Sustainscapes/AICcPerm")
    (synopsis "Model Selection of PERMANOVA Models Using AICc")
    (description
     "This package provides tools for model selection and model averaging of
@code{PerMANOVA} models using Akaike Information Criterion corrected for small
sample sizes (AICc) and Information Theoretic criteria principles.  The package
is built around the PERMANOVA analysis from the vegan package and provides a
streamlined workflow for generating and comparing models, obtaining model
weights, and summarizing results using model averaging approaches.  The methods
implemented in this package are based on the practical information- theoretic
approach described by Burnham, K. P. and Anderson, D. R. (2002)
(<doi:10.1007/b97636>).")
    (license license:expat)))

(define-public r-aiccmodavg
  (package
    (name "r-aiccmodavg")
    (version "2.3-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AICcmodavg" version))
       (sha256
        (base32 "0ylzd6fz5p86fdb8yily2v8bn8xz5mm6w19ch6gpp48jzkqvama0"))))
    (properties `((upstream-name . "AICcmodavg")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-vgam
                             r-unmarked
                             r-survival
                             r-nlme
                             r-matrix
                             r-mass
                             r-lattice))
    (home-page "https://cran.r-project.org/package=AICcmodavg")
    (synopsis "Model Selection and Multimodel Inference Based on (Q)AIC(c)")
    (description
     "This package provides functions to implement model selection and multimodel
inference based on Akaike's information criterion (AIC) and the second-order AIC
(AICc), as well as their quasi-likelihood counterparts (QAIC, QAICc) from
various model object classes.  The package implements classic model averaging
for a given parameter of interest or predicted values, as well as a shrinkage
version of model averaging parameter estimates or effect sizes.  The package
includes diagnostics and goodness-of-fit statistics for certain model types
including those of @code{unmarkedFit} classes estimating demographic parameters
after accounting for imperfect detection probabilities.  Some functions also
allow the creation of model selection tables for Bayesian models of the bugs',
rjags', and @code{jagsUI} classes.  Functions also implement model selection
using BIC. Objects following model selection and multimodel inference can be
formatted to @code{LaTeX} using xtable methods included in the package.")
    (license license:gpl2+)))

(define-public r-aic
  (package
    (name "r-aic")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aIc" version))
       (sha256
        (base32 "1w2rvw1kc4a9b2mi3bh10siv3j89xb3qrx7nydw4kqrgi5c4v3i4"))))
    (properties `((upstream-name . "aIc")))
    (build-system r-build-system)
    (propagated-inputs (list r-zcompositions
                             r-vegan
                             r-shiny
                             r-matrixcalc
                             r-edger
                             r-aldex2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ggloor/aIc")
    (synopsis "Testing for Compositional Pathologies in Datasets")
    (description
     "This package provides a set of tests for compositional pathologies.  Tests for
coherence of correlations with @code{aIc.coherent}() as suggested by (Erb et al.
(2020) <doi:10.1016/j.acags.2020.100026>), compositional dominance of distance
with @code{aIc.dominant}(), compositional perturbation invariance with
@code{aIc.perturb}() as suggested by (Aitchison (1992) <doi:10.1007/BF00891269>)
and singularity of the covariation matrix with @code{aIc.singular}().  Currently
tests five data transformations: prop, clr, TMM, TMMwsp, and RLE from the R
packages ALDEx2', @code{edgeR} and DESeq2 (Fernandes et al (2014)
<doi:10.1186/2049-2618-2-15>, Anders et al. (2013)<doi:10.1038/nprot.2013.099>).")
    (license license:gpl3+)))

(define-public r-ahw
  (package
    (name "r-ahw")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ahw" version))
       (sha256
        (base32 "1dq40qf5r5h011d9fk2c4qjj6dbh0kxl2xfjaflr69r2dlsslgds"))))
    (properties `((upstream-name . "ahw")))
    (build-system r-build-system)
    (propagated-inputs (list r-timereg r-plyr r-data-table))
    (home-page "https://cran.r-project.org/package=ahw")
    (synopsis
     "Calculates Continuous Time Likelihood Ratio Weights Assuming Multiplicative Intensity Models and Additive Hazard Models")
    (description
     "Estimates continuous time weights for performing causal survival analysis.  For
instance, weighted Nelson-Aalen or Kaplan-Meier estimates can be given a causal
interpretation.  See Ryalen, Stensrud, and RÃ¸ysland (2019)
<doi:10.1007/s10985-019-09468-y> and Ryalen (2019)
<https://www.duo.uio.no/handle/10852/70353> for theory and examples.")
    (license license:gpl3+)))

(define-public r-ahsurv
  (package
    (name "r-ahsurv")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AHSurv" version))
       (sha256
        (base32 "051q6iamqhhkrq7bfhq40n9svd4wfqyxscgwfnsflqdmbgm6gghs"))))
    (properties `((upstream-name . "AHSurv")))
    (build-system r-build-system)
    (propagated-inputs (list r-rootsolve r-flexsurv))
    (home-page "https://cran.r-project.org/package=AHSurv")
    (synopsis "Flexible Parametric Accelerated Hazards Models")
    (description
     "Flexible parametric Accelerated Hazards (AH) regression models in overall and
relative survival frameworks with 13 distinct Baseline Distributions.  The AH
Model can also be applied to lifetime data with crossed survival curves.  Any
user-defined parametric distribution can be fitted, given at least an R function
defining the cumulative hazard and hazard rate functions.  See Chen and Wang
(2000) <doi:10.1080/01621459.2000.10474236>, and Lee (2015)
<doi:10.1007/s10985-015-9349-5> for more details.")
    (license license:gpl3)))

(define-public r-ahpwr
  (package
    (name "r-ahpwr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AHPWR" version))
       (sha256
        (base32 "1g7d1vbjxb232fk6wjah73kjm6pj81acls8wqssphgnfiffgrrq6"))))
    (properties `((upstream-name . "AHPWR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xlsx
                             r-tidyr
                             r-tibble
                             r-readxl
                             r-magrittr
                             r-igraph
                             r-ggplot2
                             r-formattable
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AHPWR")
    (synopsis "Compute Analytic Hierarchy Process")
    (description
     "Compute a tree level hierarchy, judgment matrix, consistency index and ratio,
priority vectors, hierarchic synthesis and rank.  Based on the book entitled
\"Models, Methods, Concepts and Applications of the Analytic Hierarchy Process\"
by Saaty and Vargas (2012, ISBN 978-1-4614-3597-6).")
    (license license:gpl3)))

(define-public r-ahptopsis2n
  (package
    (name "r-ahptopsis2n")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ahptopsis2n" version))
       (sha256
        (base32 "0pjxchrjik0d3ydr1hjqrba1p1y9sirwjwzjkmxh2fk803c0b9la"))))
    (properties `((upstream-name . "ahptopsis2n")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ahptopsis2n")
    (synopsis "Hybrid Method for Multiple Criteria Decision-Making (MCDM)")
    (description
     "Implementation of a hybrid MCDM method build from the AHP (Analytic Hierarchy
Process) and TOPSIS-2N (Technique for Order of Preference by Similarity to Ideal
Solution - with two normalizations).  This method is described in Souza et al.
(2018) <doi: 10.1142/S0219622018500207>.")
    (license license:gpl3)))

(define-public r-ahptools
  (package
    (name "r-ahptools")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AHPtools" version))
       (sha256
        (base32 "053lk31xsv4hipah0px5xpxyd0s798pq08qpcynygkf84hjja2x0"))))
    (properties `((upstream-name . "AHPtools")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://CRAN.R-project.org/package=AHPtools")
    (synopsis "Consistency in the Analytic Hierarchy Process")
    (description
     "This package provides a Swiss Army knife of utility functions for users of the
Analytic Hierarchy Process (AHP) which will help you to assess the consistency
of a PCM as well as to improve its consistency ratio, to compute the sensitivity
of a PCM, create a logical (as distinct from a random PCM) from preferences
provided for the alternatives, and a function that helps evaluate the actual
consistency of a PCM based on objective, fair bench marking.  The various
functions in the toolkit additionally provide the flexibility to users to
specify only the upper triangular comparison ratios of the PCM in order to
performs its assigned task.")
    (license license:gpl3)))

(define-public r-ahpsurvey
  (package
    (name "r-ahpsurvey")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ahpsurvey" version))
       (sha256
        (base32 "1r7x4c318nzbx0ppm9272kfpz2bln1cafkv9irnj85nsdcravr33"))))
    (properties `((upstream-name . "ahpsurvey")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rdpack
                             r-randomnames
                             r-magrittr
                             r-knitr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ahpsurvey")
    (synopsis "Analytic Hierarchy Process for Survey Data")
    (description
     "The Analytic Hierarchy Process is a versatile multi-criteria decision-making
tool introduced by Saaty (1987) <doi:10.1016/0270-0255(87)90473-8> that allows
decision-makers to weigh attributes and evaluate alternatives presented to them.
 This package provides a consistent methodology for researchers to reformat data
and run analytic hierarchy process in R on data that are formatted using the
survey data entry mode.  It is optimized for performing the analytic hierarchy
process with many decision-makers, and provides tools and options for
researchers to aggregate individual preferences and test multiple options.  It
also allows researchers to quantify, visualize and correct for inconsistency in
the decision-maker's comparisons.")
    (license license:expat)))

(define-public r-ahphybrid
  (package
    (name "r-ahphybrid")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AHPhybrid" version))
       (sha256
        (base32 "1hf2ba52nim13jwkq857vnmnnb1yhgdz6kipqg3mmqrgz7kg52v1"))))
    (properties `((upstream-name . "AHPhybrid")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=AHPhybrid")
    (synopsis "AHP Hybrid Method")
    (description
     "The AHP method (Analytic Hierarchy Process) is a multi-criteria decision-making
method addressing choice and outranking problems.  The method enables to perform
the analysis of alternatives in each type of criterion and then provides a
global performance of each alternative in the decision context.  The main
difference of this package is the possibility of evaluating the alternatives
using quantitative data, by numerical representation, and qualitative data,
using the Saaty scale, providing preference relation between variables by a
pairwise evaluation.")
    (license license:gpl3)))

(define-public r-ahpgaussian
  (package
    (name "r-ahpgaussian")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AHPGaussian" version))
       (sha256
        (base32 "12sfh4nn4aj3jdga47dcwzf0qvhydgh56kv5kqmwg0bxw7g5r9z7"))))
    (properties `((upstream-name . "AHPGaussian")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2))
    (home-page "https://cran.r-project.org/package=AHPGaussian")
    (synopsis "New Multicriteria Method: AHPGaussian")
    (description
     "This package implements the Analytic Hierarchy Process (AHP) method using
Gaussian normalization (AHPGaussian) to derive the relative weights of the
criteria and alternatives.  It also includes functions for visualizing the
results and generating graphical outputs.  Method as described in: dos Santos,
Marcos (2021) <doi:10.13033/ijahp.v13i1.833>.")
    (license license:gpl2+)))

(define-public r-ahocorasicktrie
  (package
    (name "r-ahocorasicktrie")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AhoCorasickTrie" version))
       (sha256
        (base32 "0zh3y5jd8m0xbj6lqr01zvwj9qd1xr3iq7vd6sgr3g3qh4kqm5pq"))))
    (properties `((upstream-name . "AhoCorasickTrie")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/chambm/AhoCorasickTrie")
    (synopsis "Fast Searching for Multiple Keywords in Multiple Texts")
    (description
     "Aho-Corasick is an optimal algorithm for finding many keywords in a text.  It
can locate all matches in a text in O(N+M) time; i.e., the time needed scales
linearly with the number of keywords (N) and the size of the text (M).  Compare
this to the naive approach which takes O(N*M) time to loop through each pattern
and scan for it in the text.  This implementation builds the trie (the generic
name of the data structure) and runs the search in a single function call.  If
you want to search multiple texts with the same trie, the function will take a
list or vector of texts and return a list of matches to each text.  By default,
all 128 ASCII characters are allowed in both the keywords and the text.  A more
efficient trie is possible if the alphabet size can be reduced.  For example,
DNA sequences use at most 19 distinct characters and usually only 4; protein
sequences use at most 26 distinct characters and usually only 20.  UTF-8
(Unicode) matching is not currently supported.")
    (license license:asl2.0)))

(define-public r-ahnr
  (package
    (name "r-ahnr")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ahnr" version))
       (sha256
        (base32 "1g8m3q108ricfyn4fjjaihpr93xz7fm2sfzg3i0fz1n1i703jwm8"))))
    (properties `((upstream-name . "ahnr")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-purrr
                             r-pracma
                             r-pdist
                             r-matrixcalc
                             r-magrittr
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jroberayalas/ahnr")
    (synopsis "An Implementation of the Artificial Hydrocarbon Networks")
    (description
     "Implementation of the Artificial Hydrocarbon Networks for data modeling.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-ahmle
  (package
    (name "r-ahmle")
    (version "1.20.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ahMLE" version))
       (sha256
        (base32 "1phfzl0kynrq1if12h736jdxrfqc3i4kd32hp7sy2k2z7hkj1dkm"))))
    (properties `((upstream-name . "ahMLE")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-rcpparmadillo r-rcpp r-matrix
                             r-invgauss))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ahMLE")
    (synopsis "Methods for the Additive Hazard Model")
    (description
     "This package provides methods for fitting additive hazards model.  Perform the
maximum likelihood method as well as the traditional Aalen's method for
estimating the additive hazards model.  For details see Chengyuan Lu(2021)
<@code{arXiv:2004.06156>}.")
    (license license:gpl2+)))

(define-public r-ahmbook
  (package
    (name "r-ahmbook")
    (version "0.2.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AHMbook" version))
       (sha256
        (base32 "06qc5fkvrjmalr4sxqn0y75fk0pcy68qx41w2d2sz0xjp4j9v9nd"))))
    (properties `((upstream-name . "AHMbook")))
    (build-system r-build-system)
    (propagated-inputs (list r-unmarked
                             r-spdep
                             r-sp
                             r-raster
                             r-plotrix
                             r-mvtnorm
                             r-fields
                             r-coda))
    (home-page
     "https://sites.google.com/site/appliedhierarchicalmodeling/home")
    (synopsis
     "Functions and Data for the Book 'Applied Hierarchical Modeling in Ecology' Vols 1 and 2")
    (description
     "This package provides functions to simulate data sets from hierarchical
ecological models, including all the simulations described in the two volume
publication Applied Hierarchical Modeling in Ecology: Analysis of distribution,
abundance and species richness in R and BUGS by Marc KÃ©ry and Andy Royle:
volume 1 (2016, ISBN: 978-0-12-801378-6) and volume 2 (2021, ISBN:
978-0-12-809585-0), <https://www.mbr-pwrc.usgs.gov/pubanalysis/keryroylebook/>.
It also has all the utility functions and data sets needed to replicate the
analyses shown in the books.")
    (license license:gpl3+)))

(define-public r-ahm
  (package
    (name "r-ahm")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AHM" version))
       (sha256
        (base32 "00r1rn7d64a18rckbxvla5yapqv00p9ajxv72fx7s6p80kfal89w"))))
    (properties `((upstream-name . "AHM")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-quadprog
                             r-plgp
                             r-mixexp
                             r-matrix
                             r-glmnet
                             r-dplyr
                             r-devtools))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AHM")
    (synopsis
     "Additive Heredity Model: Method for the Mixture-of-Mixtures Experiments")
    (description
     "An implementation of the additive heredity model for the mixture-of-mixtures
experiments of Shen et al. (2019) in Technometrics
<doi:10.1080/00401706.2019.1630010>.  The additive heredity model considers an
additive structure to inherently connect the major components with the minor
components.  The additive heredity model has a meaningful interpretation for the
estimated model because of the hierarchical and heredity principles applied and
the nonnegative garrote technique used for variable selection.")
    (license license:gpl3)))

(define-public r-ahaz
  (package
    (name "r-ahaz")
    (version "1.15")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ahaz" version))
       (sha256
        (base32 "0k6i8s2miic2y1dgwjlpkhmaw6k3phn772p0600gcnjqxbqajznh"))))
    (properties `((upstream-name . "ahaz")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-matrix))
    (home-page "https://cran.r-project.org/package=ahaz")
    (synopsis "Regularization for Semiparametric Additive Hazards Regression")
    (description
     "Computationally efficient procedures for regularized estimation with the
semiparametric additive hazards regression model.")
    (license license:gpl2)))

(define-public r-agvgd
  (package
    (name "r-agvgd")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "agvgd" version))
       (sha256
        (base32 "0b3wvxrp77b180pm8asih88cyh4vf2yjj7rvl0f02x28a0ia0xki"))))
    (properties `((upstream-name . "agvgd")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-seqinr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-grantham
                             r-glue
                             r-dplyr
                             r-crayon))
    (home-page "https://maialab.org/agvgd/")
    (synopsis "An R Implementation of the 'Align-GVGD' Method")
    (description
     "Align-GVGD ('A-GVGD') is a method to predict the impact of missense
substitutions based on the properties of amino acid side chains and protein
multiple sequence alignments <doi:10.1136/jmg.2005.033878>.  A-GVGD is an
extension of the original Grantham distance to multiple sequence alignments.
This package provides an alternative R implementation to the web version found
on <http://agvgd.hci.utah.edu/>.")
    (license license:expat)))

(define-public r-agua
  (package
    (name "r-agua")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "agua" version))
       (sha256
        (base32 "1mq7h2ff3ggqy6xsng1cz0mjdfbdnsp9yl2d2c20ma14k3rdf0q5"))))
    (properties `((upstream-name . "agua")))
    (build-system r-build-system)
    (propagated-inputs (list r-workflows
                             r-vctrs
                             r-tune
                             r-tidyr
                             r-tibble
                             r-rsample
                             r-rlang
                             r-purrr
                             r-pkgconfig
                             r-parsnip
                             r-hardhat
                             r-h2o
                             r-glue
                             r-ggplot2
                             r-generics
                             r-dplyr
                             r-dials
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://agua.tidymodels.org/")
    (synopsis "'tidymodels' Integration with 'h2o'")
    (description
     "Create and evaluate models using tidymodels and h2o <https://h2o.ai/>.  The
package enables users to specify h2o as an engine for several modeling methods.")
    (license license:expat)))

(define-public r-agtboost
  (package
    (name "r-agtboost")
    (version "0.9.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "agtboost" version))
       (sha256
        (base32 "1z2ys4cn859vas3q1if50k46cryn7wwy1pjqbc8n9dhdn5zxn3sk"))))
    (properties `((upstream-name . "agtboost")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp))
    (home-page "https://cran.r-project.org/package=agtboost")
    (synopsis "Adaptive and Automatic Gradient Boosting Computations")
    (description
     "Fast and automatic gradient tree boosting designed to avoid manual tuning and
cross-validation by utilizing an information theoretic approach.  This makes the
algorithm adaptive to the dataset at hand; it is completely automatic, and with
minimal worries of overfitting.  Consequently, the speed-ups relative to
state-of-the-art implementations can be in the thousands while mathematical and
technical knowledge required on the user are minimized.")
    (license license:gpl3)))

(define-public r-ags
  (package
    (name "r-ags")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ags" version))
       (sha256
        (base32 "1g2q5cbpa0iwkwhcng15vqn8jgx5lingjfwakj320jr76x9bx6my"))))
    (properties `((upstream-name . "ags")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rlang r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://sumtxt.github.io/ags/")
    (synopsis "Crosswalk Municipality and District Statistics in Germany")
    (description
     "Construct time series for Germany's municipalities (Gemeinden) and districts
(Kreise) using a annual crosswalk constructed by the Federal Office for Building
and Regional Planning (BBSR).")
    (license license:gpl3)))

(define-public r-agrotech
  (package
    (name "r-agrotech")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AgroTech" version))
       (sha256
        (base32 "0pfw0sps9fbzzyy4d803j9fbg6a23nj18rks0bnrj9hms7a3vwfs"))))
    (properties `((upstream-name . "AgroTech")))
    (build-system r-build-system)
    (propagated-inputs (list r-xlsx
                             r-readxl
                             r-nortest
                             r-lmtest
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-crayon))
    (home-page "https://cran.r-project.org/package=AgroTech")
    (synopsis "Data Analysis of Pesticide Application Technology")
    (description
     "In total it has 7 functions, three for calculating machine calibration, which
determine application rate (L/ha), nozzle flow (L/min) and amount of product (L
or kg) to be added.  to the tank with each sprayer filling.  Two functions for
graphs of the flow distribution of the nozzles (L/min) in the application bar
and, of the temporal variability of the meteorological conditions (air
temperature, relative humidity of the air and wind speed).  Two functions to
determine the spray deposit (@code{uL/cm2}), through the methodology called
spectrophotometry, with the aid of bright blue (Palladini, L.A., Raetano, C.G.,
Velini, E.D. (2005), <doi:10.1590/S0103-90162005000500005>) or metallic markers
(Chaim, A., Castro, V.L.S.S., Correles, F.M., GalvÃ£o, J.A.H., Cabral, O.M.R.,
Nicolella, G. (1999), <doi:10.1590/S0100-204X1999000500003>).  The package
supports the analysis and representation of information, using a single free
software that meets the most diverse areas of activity in application
technology.")
    (license license:gpl2+)))

(define-public r-agrostab
  (package
    (name "r-agrostab")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "agrostab" version))
       (sha256
        (base32 "0mcskv3144j594wqljzn5pwbhkxh6sb76b1c2wabzjvi61zrapiv"))))
    (properties `((upstream-name . "agrostab")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-ggplot2 r-dplyr))
    (home-page "https://cran.r-project.org/package=agrostab")
    (synopsis "Stability Analysis for Agricultural Research")
    (description
     "Statistical procedures to perform stability analysis in plant breeding and to
identify stable genotypes under diverse environments.  It is possible to
calculate coefficient of homeostaticity by Khangildin et al. (1979), variance of
specific adaptive ability by Kilchevsky&Khotyleva (1989), weighted
homeostaticity index by Martynov (1990), steadiness of stability index by
Udachin (1990), superiority measure by Lin&Binn (1988) <doi:10.4141/cjps88-018>,
regression on environmental index by Erberhart&Rassel (1966)
<doi:10.2135/cropsci1966.0011183X000600010011x>, Tai's (1971) stability
parameters <doi:10.2135/cropsci1971.0011183X001100020006x>, stability variance
by Shukla (1972) <doi:10.1038/hdy.1972.87>, ecovalence by Wricke (1962),
nonparametric stability parameters by Nassar&Huehn (1987) <doi:10.2307/2531947>,
Francis&Kannenberg's parameters of stability (1978) <doi:10.4141/cjps78-157>.")
    (license license:gpl2)))

(define-public r-agroreg
  (package
    (name "r-agroreg")
    (version "1.2.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AgroReg" version))
       (sha256
        (base32 "1rvlgir48lhypw7vj23rg2xxi237sgmprp9syfryhmfz59wy6dcv"))))
    (properties `((upstream-name . "AgroReg")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcompanion
                             r-purrr
                             r-minpack-lm
                             r-ggplot2
                             r-egg
                             r-drc
                             r-dplyr
                             r-broom
                             r-boot))
    (home-page "https://fisher.uel.br/AgroReg_shiny/")
    (synopsis "Regression Analysis Linear and Nonlinear for Agriculture")
    (description
     "Linear and nonlinear regression analysis common in agricultural science articles
(Archontoulis & Miguez (2015). <doi:10.2134/agronj2012.0506>).  The package
includes polynomial, exponential, gaussian, logistic, logarithmic, segmented,
non-parametric models, among others.  The functions return the model
coefficients and their respective p values, coefficient of determination, root
mean square error, AIC, BIC, as well as graphs with the equations automatically.")
    (license license:gpl2+)))

(define-public r-agror
  (package
    (name "r-agror")
    (version "1.3.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AgroR" version))
       (sha256
        (base32 "0gbdba18fzk3x32wk1ycbj2ci8y1dpdmcysnmdd2361mp5yhvn7h"))))
    (properties `((upstream-name . "AgroR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer
                             r-nortest
                             r-multcompview
                             r-multcomp
                             r-mass
                             r-lmtest
                             r-lme4
                             r-knitr
                             r-gtools
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-emmeans
                             r-dunn-test
                             r-drc
                             r-crayon
                             r-cowplot))
    (home-page "https://agronomiar.github.io/AgroR_package/index.html")
    (synopsis "Experimental Statistics and Graphics for Agricultural Sciences")
    (description
     "This package performs the analysis of completely randomized experimental designs
(CRD), randomized blocks (RBD) and Latin square (LSD), experiments in double and
triple factorial scheme (in CRD and RBD), experiments in subdivided plot scheme
(in CRD and RBD), subdivided and joint analysis of experiments in CRD and RBD,
linear regression analysis, test for two samples.  The package performs analysis
of variance, ANOVA assumptions and multiple comparison test of means or
regression, according to Pimentel-Gomes (2009, ISBN: 978-85-7133-055-9),
nonparametric test (Conover, 1999, ISBN: 0471160687), test for two samples,
joint analysis of experiments according to Ferreira (2018, ISBN:
978-85-7269-566-4) and generalized linear model (glm) for binomial and Poisson
family in CRD and RBD (Carvalho, FJ (2019), <doi:10.14393/ufu.te.2019.1244>).
It can also be used to obtain descriptive measures and graphics, in addition to
correlations and creative graphics used in agricultural sciences (Agronomy,
Zootechnics, Food Science and related areas).")
    (license license:gpl2+)))

(define-public r-agrmt
  (package
    (name "r-agrmt")
    (version "1.42.12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "agrmt" version))
       (sha256
        (base32 "04bq0ya6nxz97bzcclby1rhhz7fdgkh73lmzlpzfnfnfmwjbd2hd"))))
    (properties `((upstream-name . "agrmt")))
    (build-system r-build-system)
    (home-page "http://agrmt.r-forge.r-project.org")
    (synopsis
     "Calculate Concentration and Dispersion in Ordered Rating Scales")
    (description
     "Calculates concentration and dispersion in ordered rating scales.  It implements
various measures of concentration and dispersion to describe what researchers
variably call agreement, concentration, consensus, dispersion, or polarization
among respondents in ordered data.  It also implements other related measures to
classify distributions.  In addition to a generic city-block based concentration
measure and a generic dispersion measure, the package implements various
measures, including van der Eijk's (2001) <DOI: 10.1023/A:1010374114305> measure
of agreement A, measures of concentration by Leik, Tatsle and Wierman, Blair and
Lacy, Kvalseth, Berry and Mielke, Reardon, and Garcia-Montalvo and
Reynal-Querol.  Furthermore, the package provides an implementation of Galtungs
AJUS-system to classify distributions, as well as a function to identify the
position of multiple modes.")
    (license license:expat)))

(define-public r-agriwater
  (package
    (name "r-agriwater")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "agriwater" version))
       (sha256
        (base32 "14zwpbr9wivnafdrfihvdmbv66cxprz41xgqyifc1nsmgrbr67cz"))))
    (properties `((upstream-name . "agriwater")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=agriwater")
    (synopsis "Evapotranspiration and Energy Fluxes Spatial Analysis")
    (description
     "Spatial modeling of energy balance and actual evapotranspiration using satellite
images and meteorological data.  Options of satellite are: Landsat-8 (with and
without thermal bands), Sentinel-2 and MODIS. Respectively spatial resolutions
are 30, 100, 10 and 250 meters.  User can use data from a single meteorological
station or a grid of meteorological stations (using any spatial interpolation
method).  Silva, Teixeira, and Manzione (2019)
<doi:10.1016/j.envsoft.2019.104497>.")
    (license license:expat)))

(define-public r-agriutilities
  (package
    (name "r-agriutilities")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "agriutilities" version))
       (sha256
        (base32 "17707cdhrzpxcr0xm6kavy3p762yzrjxg4anwgfrhdmrhvygpirf"))))
    (properties `((upstream-name . "agriutilities")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-statgensta
                             r-spats
                             r-rlang
                             r-psych
                             r-matrix
                             r-magrittr
                             r-lmertest
                             r-lme4
                             r-ggrepel
                             r-ggpubr
                             r-ggplot2
                             r-emmeans
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/AparicioJohan/agriutilities")
    (synopsis "Utilities for Data Analysis in Agriculture")
    (description
     "Utilities designed to make the analysis of field trials easier and more
accessible for everyone working in plant breeding.  It provides a simple and
intuitive interface for conducting single and multi-environmental trial
analysis, with minimal coding required.  Whether you're a beginner or an
experienced user, agriutilities will help you quickly and easily carry out
complex analyses with confidence.  With built-in functions for fitting Linear
Mixed Models, agriutilities is the ideal choice for anyone who wants to save
time and focus on interpreting their results.  Some of the functions require the
R package asreml for the ASReml software, this can be obtained upon purchase
from VSN international (<https://vsni.co.uk/software/asreml-r>).")
    (license license:expat)))

(define-public r-agritutorial
  (package
    (name "r-agritutorial")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "agriTutorial" version))
       (sha256
        (base32 "0c0p0bqcrnx34q5brnvgq10wkzahvgyybaz2xfmcghbdvzahd2dx"))))
    (properties `((upstream-name . "agriTutorial")))
    (build-system r-build-system)
    (propagated-inputs (list r-pbkrtest
                             r-nlme
                             r-lmertest
                             r-lattice
                             r-ggplot2
                             r-emmeans))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=agriTutorial")
    (synopsis "Tutorial Analysis of Some Agricultural Experiments")
    (description
     "Example software for the analysis of data from designed experiments, especially
agricultural crop experiments.  The basics of the analysis of designed
experiments are discussed using real examples from agricultural field trials.  A
range of statistical methods using a range of R statistical packages are
exemplified .  The experimental data is made available as separate data sets for
each example and the R analysis code is made available as example code.  The
example code can be readily extended, as required.")
    (license license:gpl2+)))

(define-public r-agrifeature
  (package
    (name "r-agrifeature")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "agrifeature" version))
       (sha256
        (base32 "0zbjmgwajwihgvs1c3swddx09m6954sihnpjdrqlgl5jhh7q2bgs"))))
    (properties `((upstream-name . "agrifeature")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=agrifeature")
    (synopsis "Agriculture Image Feature")
    (description
     "This package provides functions to calculate Gray Level Co-occurrence
Matrix(GLCM), RGB-based Vegetative Index(RGB VI) and Normalized Difference
Vegetation Index(NDVI) family image features.  GLCM calculations are based on
Haralick (1973) <doi:10.1109/TSMC.1973.4309314>.")
    (license license:gpl3)))

(define-public r-agridat
  (package
    (name "r-agridat")
    (version "1.23")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "agridat" version))
       (sha256
        (base32 "17xq0ihjg2z61dy1nrz5vwxwzmwrk3wmc01n2c6rwgyfa5ijfplq"))))
    (properties `((upstream-name . "agridat")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://kwstat.github.io/agridat/")
    (synopsis "Agricultural Datasets")
    (description
     "Datasets from books, papers, and websites related to agriculture.  Example
graphics and analyses are included.  Data come from small-plot trials,
multi-environment trials, uniformity trials, yield monitors, and more.")
    (license license:expat)))

(define-public r-agricolaeplotr
  (package
    (name "r-agricolaeplotr")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "agricolaeplotr" version))
       (sha256
        (base32 "0fy9h4r55dn7yxnjlxhy74sf9lcg22mllcg6nwaivp92w03vkccy"))))
    (properties `((upstream-name . "agricolaeplotr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stplanr
                             r-sp
                             r-sf
                             r-raster
                             r-ggspatial
                             r-ggplot2
                             r-fieldhub
                             r-dplyr
                             r-agricolae))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jensharbers/agricolaeplotr")
    (synopsis
     "Visualization of Design of Experiments from the 'agricolae' Package")
    (description
     "Visualization of Design of Experiments from the agricolae package with ggplot2
framework The user provides an experiment design from the agricolae package,
calls the corresponding function and will receive a visualization with ggplot2
based functions that are specific for each design.  As there are many different
designs, each design is tested on its type.  The output can be modified with
standard ggplot2 commands or with other packages with ggplot2 function
extensions.")
    (license license:gpl3+)))

(define-public r-agricolae
  (package
    (name "r-agricolae")
    (version "1.3-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "agricolae" version))
       (sha256
        (base32 "0zaanfhvlx7c0s9y550hqn9bsffbykchcd7940fxx69jw87fkbf5"))))
    (properties `((upstream-name . "agricolae")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme r-mass r-cluster r-algdesign))
    (home-page "https://cran.r-project.org/package=agricolae")
    (synopsis "Statistical Procedures for Agricultural Research")
    (description
     "Original idea was presented in the thesis \"A statistical analysis tool for
agricultural research\" to obtain the degree of Master on science, National
Engineering University (UNI), Lima-Peru.  Some experimental data for the
examples come from the CIP and others research.  Agricolae offers extensive
functionality on experimental design especially for agricultural and plant
breeding experiments, which can also be useful for other purposes.  It supports
planning of lattice, Alpha, Cyclic, Complete Block, Latin Square, Graeco-Latin
Squares, augmented block, factorial, split and strip plot designs.  There are
also various analysis facilities for experimental data, e.g. treatment
comparison procedures and several non-parametric tests comparison, biodiversity
indexes and consensus cluster.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-agreementinterval
  (package
    (name "r-agreementinterval")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AgreementInterval" version))
       (sha256
        (base32 "1bvinzylvsaipa8mq15f45b6h37znavlrdl0rbrx1pqw52r7z8kv"))))
    (properties `((upstream-name . "AgreementInterval")))
    (build-system r-build-system)
    (propagated-inputs (list r-psych))
    (home-page "https://cran.r-project.org/package=AgreementInterval")
    (synopsis "Agreement Interval of Two Measurement Methods")
    (description
     "This package provides a tool for calculating agreement interval of two
measurement methods (Jason Liao (2015) <DOI:10.1515/ijb-2014-0030>) and present
results in plots with discordance rate and/or clinically meaningful limit to
quantify agreement quality.")
    (license license:expat)))

(define-public r-agree
  (package
    (name "r-agree")
    (version "0.5-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "agRee" version))
       (sha256
        (base32 "1wi8jn14kpsj5z49my6fz8j6zxysddxm8svw86cnzsmnbj6mzq7x"))))
    (properties `((upstream-name . "agRee")))
    (build-system r-build-system)
    (propagated-inputs (list r-r2jags r-miscf r-lme4 r-coda))
    (home-page "https://cran.r-project.org/package=agRee")
    (synopsis "Various Methods for Measuring Agreement")
    (description
     "Bland-Altman plot and scatter plot with identity line for visualization and
point and interval estimates for different metrics related to
reproducibility/repeatability/agreement including the concordance correlation
coefficient, intraclass correlation coefficient, within-subject coefficient of
variation, smallest detectable difference, and mean normalized smallest
detectable difference.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-agpris
  (package
    (name "r-agpris")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AGPRIS" version))
       (sha256
        (base32 "0c6aqrfl0iqpsdk4njzda60a8hcrm2637zwc5cdkrl9p2ayqj00c"))))
    (properties `((upstream-name . "AGPRIS")))
    (build-system r-build-system)
    (propagated-inputs (list r-spdep
                             r-spacetime
                             r-sp
                             r-plyr
                             r-maxlik
                             r-matrixcalc
                             r-matrix))
    (home-page "https://cran.r-project.org/package=AGPRIS")
    (synopsis "AGricultural PRoductivity in Space")
    (description
     "Functionalities to simulate space-time data and to estimate dynamic-spatial
panel data models.  Estimators implemented are the BCML (Elhorst (2010),
<doi:10.1016/j.regsciurbeco.2010.03.003>), the MML (Elhorst (2010)
<doi:10.1016/j.regsciurbeco.2010.03.003>) and the INLA Bayesian estimator
(Lindgren and Rue, (2015) <doi:10.18637/jss.v063.i19>; Bivand, Gomez-Rubio and
Rue, (2015) <doi:10.18637/jss.v063.i20>) adapted to panel data.  The package
contains functions to replicate the analyses of the scientific article entitled
\"Agricultural Productivity in Space\" (Baldoni and Esposti (2021),
<doi:10.1111/ajae.12155>)).")
    (license license:gpl3)))

(define-public r-agop
  (package
    (name "r-agop")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "agop" version))
       (sha256
        (base32 "1bvmwic2xjl36i994pzc0hhl3k2ghxivrq9i96ykxmklp9drlb7j"))))
    (properties `((upstream-name . "agop")))
    (build-system r-build-system)
    (home-page "https://github.com/gagolews/agop/")
    (synopsis "Aggregation Operators and Preordered Sets")
    (description
     "This package provides tools supporting multi-criteria and group decision making,
including variable number of criteria, by means of aggregation operators, spread
measures, fuzzy logic connectives, fusion functions, and preordered sets.
Possible applications include, but are not limited to, quality management,
scientometrics, software engineering, etc.")
    (license license:lgpl3+)))

(define-public r-aglm
  (package
    (name "r-aglm")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aglm" version))
       (sha256
        (base32 "0rcyrzfi3l1k53c9qs1gfrcflnhdnri9sq6py8s6fw4wcn55kf67"))))
    (properties `((upstream-name . "aglm")))
    (build-system r-build-system)
    (propagated-inputs (list r-mathjaxr r-glmnet r-assertthat))
    (home-page "https://github.com/kkondo1981/aglm")
    (synopsis "Accurate Generalized Linear Model")
    (description
     "This package provides functions to fit Accurate Generalized Linear Model (AGLM)
models, visualize them, and predict for new data.  AGLM is defined as a
regularized GLM which applies a sort of feature transformations using a
discretization of numerical features and specific coding methodologies of dummy
variables.  For more information on AGLM, see Suguru Fujita, Toyoto Tanaka,
Kenji Kondo and Hirokazu Iwasawa (2020)
<https://www.institutdesactuaires.com/global/gene/link.php?doc_id=16273&fg=1>.")
    (license license:gpl2)))

(define-public r-aghq
  (package
    (name "r-aghq")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aghq" version))
       (sha256
        (base32 "0hrgxxqzx38r2cfn3rflh8gddva9i6i89vk3jg4g27ywg5v7s41v"))))
    (properties `((upstream-name . "aghq")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-polynom r-numderiv r-mvquad r-matrix))
    (home-page "https://cran.r-project.org/package=aghq")
    (synopsis "Adaptive Gauss Hermite Quadrature for Bayesian Inference")
    (description
     "Adaptive Gauss Hermite Quadrature for Bayesian inference.  The AGHQ method for
normalizing posterior distributions and making Bayesian inferences based on
them.  Functions are provided for doing quadrature and marginal Laplace
approximations, and summary methods are provided for making inferences based on
the results.  See Stringer (2021). \"Implementing Adaptive Quadrature for
Bayesian Inference: the aghq Package\" <@code{arXiv:2101.04468>}.")
    (license license:gpl3+)))

(define-public r-aghmatrix
  (package
    (name "r-aghmatrix")
    (version "2.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AGHmatrix" version))
       (sha256
        (base32 "1ji022h11ijfjicbvc5hgxpf6rfs7mm07nxrjlk7lrl699gi1xh2"))))
    (properties `((upstream-name . "AGHmatrix")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rramadeu/AGHmatrix")
    (synopsis "Relationship Matrices for Diploid and Autopolyploid Species")
    (description
     "Computation of A (pedigree), G (genomic-base), and H (A corrected by G)
relationship matrices for diploid and autopolyploid species.  Several methods
are implemented considering additive and non-additive models.")
    (license license:gpl3)))

(define-public r-aggutils
  (package
    (name "r-aggutils")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aggutils" version))
       (sha256
        (base32 "0q4ly4wra1nj6zn733a0kvikcbjijailrbiyljyiz61ax4w0v5g6"))))
    (properties `((upstream-name . "aggutils")))
    (build-system r-build-system)
    (propagated-inputs (list r-docstring))
    (home-page "https://github.com/forecastingresearch/aggutils")
    (synopsis "Utilities for Aggregating Probabilistic Forecasts")
    (description
     "This package provides several methods for aggregating probabilistic forecasts.
You have a group of people who have made probabilistic forecasts for the same
event.  You want to take advantage of the \"wisdom of the crowd\" and combine
these forecasts in some sensible way.  This package provides implementations of
several strategies, including geometric mean of odds, an extremized aggregate
(Neyman, Roughgarden (2021) <doi:10.1145/3490486.3538243>), and \"high-density
trimmed mean\" (Powell et al. (2022) <doi:10.1037/dec0000191>).")
    (license license:expat)))

(define-public r-aggtrees
  (package
    (name "r-aggtrees")
    (version "2.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aggTrees" version))
       (sha256
        (base32 "15dz96g8vyyijbv7nm9wwzwwsm0kzv8mwhrirnm14219cx4z2r76"))))
    (properties `((upstream-name . "aggTrees")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rpart-plot
                             r-rpart
                             r-grf
                             r-estimatr
                             r-caret
                             r-car
                             r-broom
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://riccardo-df.github.io/aggTrees/")
    (synopsis "Aggregation Trees")
    (description
     "Nonparametric data-driven approach to discovering heterogeneous subgroups in a
selection-on-observables framework. @code{aggTrees} allows researchers to assess
whether there exists relevant heterogeneity in treatment effects by generating a
sequence of optimal groupings, one for each level of granularity.  For each
grouping, we obtain point estimation and inference about the Group Average
Treatment Effects.  Please reference the use as Di Francesco (2022)
<doi:10.2139/ssrn.4304256>.")
    (license license:expat)))

(define-public r-aggregater
  (package
    (name "r-aggregater")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AggregateR" version))
       (sha256
        (base32 "1s2q888bqx6ilisv5s4g8ryja97nz6cz4ycm4sw1i63l5wjrwljc"))))
    (properties `((upstream-name . "AggregateR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-ncmisc r-data-table))
    (home-page "https://cran.r-project.org/package=AggregateR")
    (synopsis "Aggregate Numeric, Date and Categorical Variables")
    (description
     "Convenience functions for aggregating a data frame or data table.  Currently
mean, sum and variance are supported.  For Date variables, the recency and
duration are supported.  There is also support for dummy variables in predictive
contexts.  Code has been completely re-written in data.table for computational
speed.")
    (license license:gpl2+)))

(define-public r-agghoo
  (package
    (name "r-agghoo")
    (version "0.1-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "agghoo" version))
       (sha256
        (base32 "0vaqmydww494ql6xbhhjkpap3lqkhf8hkbcrr1pk81qpszs0pndm"))))
    (properties `((upstream-name . "agghoo")))
    (build-system r-build-system)
    (propagated-inputs (list r-rpart r-r6 r-fnn r-class))
    (home-page "https://git.auder.net/?p=agghoo.git")
    (synopsis "Aggregated Hold-Out Cross Validation")
    (description
     "The agghoo procedure is an alternative to usual cross-validation.  Instead of
choosing the best model trained on V subsamples, it determines a winner model
for each subsample, and then aggregates the V outputs.  For the details, see
\"Aggregated hold-out\" by Guillaume Maillard, Sylvain Arlot, Matthieu Lerasle
(2021) <@code{arXiv:1909.04890>} published in Journal of Machine Learning
Research 22(20):1--55.")
    (license license:expat)))

(define-public r-agfh
  (package
    (name "r-agfh")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "agfh" version))
       (sha256
        (base32 "0wkagdhbf4hgl1vrb6bxyan5ryp42xd8w7kbyspahqx8agzbn8zg"))))
    (properties `((upstream-name . "agfh")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-ks r-goftest r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=agfh")
    (synopsis "Agnostic Fay-Herriot Model for Small Area Statistics")
    (description
     "This package implements the Agnostic Fay-Herriot model, an extension of the
traditional small area model.  In place of normal sampling errors, the sampling
error distribution is estimated with a Gaussian process to accommodate a broader
class of distributions.  This flexibility is most useful in the presence of
bounded, multi-modal, or heavily skewed sampling errors.")
    (license license:gpl3+)))

(define-public r-ageutils
  (package
    (name "r-ageutils")
    (version "0.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ageutils" version))
       (sha256
        (base32 "1l25f0qq5lqc5jpcwvvnl6qysrgyz1g8wgqqw10d8z38jks2mrg3"))))
    (properties `((upstream-name . "ageutils")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://timtaylor.github.io/ageutils/")
    (synopsis "Collection of Functions for Working with Age Intervals")
    (description
     "This package provides a collection of efficient functions for working with
individual ages and corresponding intervals.  These include functions for
conversion from an age to an interval, aggregation of ages with associated
counts in to intervals and the splitting of interval counts based on specified
age distributions.")
    (license license:gpl2)))

(define-public r-agena-ai
  (package
    (name "r-agena-ai")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "agena.ai" version))
       (sha256
        (base32 "1nn2634r93gg3nwqnlg8c44zajl5jadx0cszah8nq502qby5y36j"))))
    (properties `((upstream-name . "agena.ai")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjson r-rgraphviz r-openxlsx r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=agena.ai")
    (synopsis "R Wrapper for 'agena.ai' API")
    (description
     "An R wrapper for agena.ai <https://www.agena.ai> which provides users
capabilities to work with agena.ai using the R environment.  Users can create
Bayesian network models from scratch or import existing models in R and export
to agena.ai cloud or local API for calculations.  Note: running calculations
requires a valid agena.ai API license (past the initial trial period of the
local API).")
    (license license:expat)))

(define-public r-ageg
  (package
    (name "r-ageg")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ageg" version))
       (sha256
        (base32 "0dcmwgznxf1jjsifpm3nn3jk25mm27l6f6f6jfi2n3crxgqfizyv"))))
    (properties `((upstream-name . "ageg")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ageg")
    (synopsis "Age Grouping Functions")
    (description
     "Pair of simple convenience functions to convert a vector of birth dates to age
and age distributions.  These functions may be helpful when related age and
custom age distributions are desired given a vector of birth dates.")
    (license license:expat)))

(define-public r-agd
  (package
    (name "r-agd")
    (version "0.45.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AGD" version))
       (sha256
        (base32 "02dvbqyym3l642vxhlx7ay6dj1sf1ns207ig81h3fz1w3gy9wn20"))))
    (properties `((upstream-name . "AGD")))
    (build-system r-build-system)
    (propagated-inputs (list r-gamlss-dist r-gamlss))
    (home-page "https://stefvanbuuren.name/AGD/")
    (synopsis "Analysis of Growth Data")
    (description
     "This package provides tools for the analysis of growth data: to extract an LMS
table from a gamlss object, to calculate the standard deviation scores and its
inverse, and to superpose two wormplots from different models.  The package
contains a some varieties of reference tables, especially for The Netherlands.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-agcounts
  (package
    (name "r-agcounts")
    (version "0.6.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "agcounts" version))
       (sha256
        (base32 "1q993a7m639zn5cl8lv300qbqgh8wycqckaynvv9lc6a6j60ygjv"))))
    (properties `((upstream-name . "agcounts")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-stringr
                             r-shiny
                             r-rsqlite
                             r-reticulate
                             r-read-gt3x
                             r-reactable
                             r-rcpparmadillo
                             r-rcpp
                             r-magrittr
                             r-lubridate
                             r-gsignal
                             r-ggplot2
                             r-ggir
                             r-dplyr
                             r-dbi
                             r-data-table
                             r-bslib))
    (home-page "https://cran.r-project.org/package=agcounts")
    (synopsis "Calculate 'ActiGraph' Counts from Accelerometer Data")
    (description
     "Calculate @code{ActiGraph} counts from the X, Y, and Z axes of a triaxial
accelerometer.  This work was inspired by Neishabouri et al.  who published the
article \"Quantification of Acceleration as Activity Counts in @code{ActiGraph}
Wearables\" on February 24, 2022.  The link to the article
(<https://pubmed.ncbi.nlm.nih.gov/35831446>) and python implementation of this
code (<https://github.com/actigraph/agcounts>).")
    (license license:expat)))

(define-public r-ag5tools
  (package
    (name "r-ag5tools")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ag5Tools" version))
       (sha256
        (base32 "0kqya0iaxcz7m1i69ckcm0z3g3q31x2jasxlip7jpp7czdi9rr07"))))
    (properties `((upstream-name . "ag5Tools")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra r-reticulate r-fs r-foreach r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://agrdatasci.github.io/ag5Tools/")
    (synopsis "Toolbox for Downloading and Extracting Copernicus AgERA5 Data")
    (description
     "This package provides tools for downloading and extracting data from the
Copernicus \"Agrometeorological indicators from 1979 to present derived from
reanalysis\"
<https://cds.climate.copernicus.eu/cdsapp#!/dataset/sis-agrometeorological-indicators?tab=overview>
(@code{AgERA5}).")
    (license license:expat)))

(define-public r-afttest
  (package
    (name "r-afttest")
    (version "4.3.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "afttest" version))
       (sha256
        (base32 "1jk8xs4mcayaij5rjl891mzg3dq9qs0lyi5gfzi6sjar6apmwsfb"))))
    (properties `((upstream-name . "afttest")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-rcpparmadillo
                             r-rcpp
                             r-gridextra
                             r-ggplot2
                             r-aftgee))
    (home-page "https://github.com/WooJungBae/afttest")
    (synopsis "Model Diagnostics for Accelerated Failure Time Models")
    (description
     "This package provides a collection of model checking methods for semiparametric
accelerated failure time (AFT) models under the rank-based approach.  For the
(computational) efficiency, Gehan's weight is used.  It provides functions to
verify whether the observed data fit the specific model assumptions such as a
functional form of each covariate, a link function, and an omnibus test.  The
p-value offered in this package is based on the Kolmogorov-type supremum test
and the variance of the proposed test statistics is estimated through the
re-sampling method.  Furthermore, a graphical technique to compare the shape of
the observed residual to a number of the approximated realizations is provided.")
    (license license:gpl3+)))

(define-public r-aftr2
  (package
    (name "r-aftr2")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aftR2" version))
       (sha256
        (base32 "1ff8khq9b8hjflkhfc1shx5k7sadcl0ahnsbx9c557b6sm0kqfr6"))))
    (properties `((upstream-name . "aftR2")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=aftR2")
    (synopsis "R-Squared Measure under Accelerated Failure Time (AFT) Models")
    (description
     "Compute the R-squared measure under the accelerated failure time (AFT) models
proposed in Chan et.  al. (2018) <doi:10.1080/03610918.2016.1177072>.")
    (license license:gpl3)))

(define-public r-afthd
  (package
    (name "r-afthd")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "afthd" version))
       (sha256
        (base32 "0gg2cp3sj28f3pi5rqh737hna3imwarwas01jacm0m2h27587k7y"))))
    (properties `((upstream-name . "afthd")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-rstpm2 r-r2jags r-photobiology
                             r-glmnet))
    (home-page "https://cran.r-project.org/package=afthd")
    (synopsis "Accelerated Failure Time for High Dimensional Data with MCMC")
    (description
     "This package provides functions for Posterior estimates of Accelerated Failure
Time(AFT) model with MCMC and Maximum likelihood estimates of AFT model without
MCMC for univariate and multivariate analysis in high dimensional gene
expression data are available in this afthd package.  AFT model with Bayesian
framework for multivariate in high dimensional data has been proposed by
Prabhash et al.(2016) <doi:10.21307/stattrans-2016-046>.")
    (license license:gpl3)))

(define-public r-aftgee
  (package
    (name "r-aftgee")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aftgee" version))
       (sha256
        (base32 "01mjgahs6wfd47imnw0zni57ilcy76gh5lpsihxyd3grwd9jkki7"))))
    (properties `((upstream-name . "aftgee")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-rcpparmadillo
                             r-rcpp
                             r-mass
                             r-geepack
                             r-bb))
    (home-page "https://github.com/stc04003/aftgee")
    (synopsis
     "Accelerated Failure Time Model with Generalized Estimating Equations")
    (description
     "This package provides a collection of methods for both the rank-based estimates
and least-square estimates to the Accelerated Failure Time (AFT) model.  For
rank-based estimation, it provides approaches that include the computationally
efficient Gehan's weight and the general's weight such as the logrank weight.
Details of the rank-based estimation can be found in Chiou et al. (2014)
<doi:10.1007/s11222-013-9388-2> and Chiou et al. (2015) <doi:10.1002/sim.6415>.
For the least-square estimation, the estimating equation is solved with
generalized estimating equations (GEE).  Moreover, in multivariate cases, the
dependence working correlation structure can be specified in GEE's setting.
Details on the least-squares estimation can be found in Chiou et al. (2014)
<doi:10.1007/s10985-014-9292-x>.")
    (license license:gpl3+)))

(define-public r-africamonitor
  (package
    (name "r-africamonitor")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "africamonitor" version))
       (sha256
        (base32 "0nqxvyv6hipadyfzc6mvr2pns3m7n7h3i87lzvgx8fj2rlcigqkq"))))
    (properties `((upstream-name . "africamonitor")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmysql r-dbi r-data-table r-collapse))
    (home-page "https://africamonitor.ifw-kiel.de/")
    (synopsis "Africa Macroeconomic Monitor Database API")
    (description
     "An R API providing access to a relational database with macroeconomic data for
Africa.  The database contains >700 macroeconomic time series from mostly
international sources, grouped into 50 macroeconomic and development-related
topics.  Series are carefully selected on the basis of data coverage for Africa,
frequency, and relevance to the macro-development context.  The project is part
of the Kiel Institute Africa Initiative
<https://www.ifw-kiel.de/institute/initiatives/kiel-institute-africa-initiative/>,
which, amongst other things, aims to develop a parsimonious database with highly
relevant indicators to monitor macroeconomic developments in Africa, accessible
through a fast API and a web-based platform at
<https://africamonitor.ifw-kiel.de/>.  The database is maintained at the Kiel
Institute for the World Economy <https://www.ifw-kiel.de/>.")
    (license license:gpl3)))

(define-public r-afr
  (package
    (name "r-afr")
    (version "0.3.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AFR" version))
       (sha256
        (base32 "07i6slw5ksw6s1n0i9p2x6898k4fqx5n13qycshfllczrp0pwwyf"))))
    (properties `((upstream-name . "AFR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-writexl
                             r-tseries
                             r-rlang
                             r-regclass
                             r-olsrr
                             r-nortest
                             r-nlme
                             r-mfilter
                             r-lmtest
                             r-gridextra
                             r-goftest
                             r-ggplot2
                             r-forecast
                             r-cli
                             r-car))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AFR")
    (synopsis
     "Toolkit for Regression Analysis of Kazakhstan Banking Sector Data")
    (description
     "Tool is created for regression, prediction and forecast analysis of
macroeconomic and credit data.  The package includes functions from existing R
packages adapted for banking sector of Kazakhstan.  The purpose of the package
is to optimize statistical functions for easier interpretation for bank analysts
and non-statisticians.")
    (license license:gpl2)))

(define-public r-afmtoolkit
  (package
    (name "r-afmtoolkit")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "afmToolkit" version))
       (sha256
        (base32 "1pm3xyh9vq10mmfgknlvlfr9f027xprrgy1dvbbxpi7f111hv1gl"))))
    (properties `((upstream-name . "afmToolkit")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-scales
                             r-minpack-lm
                             r-gridextra
                             r-ggplot2
                             r-dplyr
                             r-dbi
                             r-assertthat))
    (home-page "https://cran.r-project.org/package=afmToolkit")
    (synopsis
     "Functions for Atomic Force Microscope Force-Distance Curves Analysis")
    (description
     "Set of functions for analyzing Atomic Force Microscope (AFM) force-distance
curves.  It allows to obtain the contact and unbinding points, perform the
baseline correction, estimate the Young's modulus, fit up to two exponential
decay function to a stress-relaxation / creep experiment, obtain adhesion
energies.  These operations can be done either over a single F-d curve or over a
set of F-d curves in batch mode.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-afm
  (package
    (name "r-afm")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AFM" version))
       (sha256
        (base32 "1l0yd68h8vlii1437zhyrxj6fq1ghfaqclk860c25q2d055ajnqd"))))
    (properties `((upstream-name . "AFM")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-sp
                             r-shinyjs
                             r-shiny
                             r-scales
                             r-rgl
                             r-pracma
                             r-png
                             r-plyr
                             r-moments
                             r-mixtools
                             r-igraph
                             r-gstat
                             r-gridextra
                             r-ggplot2
                             r-fractaldim
                             r-fftwtools
                             r-dbscan
                             r-data-table))
    (home-page "https://cran.r-project.org/package=AFM")
    (synopsis "Atomic Force Microscope Image Analysis")
    (description
     "This package provides Atomic Force Microscope images analysis such as Gaussian
mixes identification, Power Spectral Density, roughness against lengthscale,
experimental variogram and variogram models, fractal dimension and scale, 2D
network analysis.  The AFM images can be exported to STL format for 3D printing.")
    (license license:agpl3)))

(define-public r-afheritability
  (package
    (name "r-afheritability")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AFheritability" version))
       (sha256
        (base32 "03w0a4z2x539ykyzdxm1mfqkhzz03cg0aqvgi062jrrm5m6f57ix"))))
    (properties `((upstream-name . "AFheritability")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-reshape2 r-mvtnorm r-ggplot2))
    (home-page "https://cran.r-project.org/package=AFheritability")
    (synopsis
     "The Attributable Fraction (AF) Described as a Function of Disease Heritability, Prevalence and Intervention Specific Factors")
    (description
     "The AFfunction() is a function which returns an estimate of the Attributable
Fraction (AF) and a plot of the AF as a function of heritability, disease
prevalence, size of target group and intervention effect.  Since the AF is a
function of several factors, a shiny app is used to better illustrate how the
relationship between the AF and heritability depends on several other factors.
The app is ran by the function @code{runShinyApp}().  For more information see
Dahlqwist E et al. (2019) <doi:10.1007/s00439-019-02006-8>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-affinitymatrix
  (package
    (name "r-affinitymatrix")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "affinitymatrix" version))
       (sha256
        (base32 "10i7wzl4xiphj5f466ga7c4ha3mkyqn63x1z0jyx50m0b84sggq1"))))
    (properties `((upstream-name . "affinitymatrix")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-hmisc r-ggrepel r-ggplot2 r-expm))
    (home-page "https://cran.r-project.org/package=affinitymatrix")
    (synopsis "Estimation of Affinity Matrix")
    (description
     "This package provides tools to study sorting patterns in matching markets and to
estimate the affinity matrix of both the bipartite one-to-one matching model
without frictions and with Transferable Utility by Dupuy and Galichon (2014)
<doi:10.1086/677191> and its unipartite variant by Ciscato', Galichon and Gousse
(2020) <doi:10.1086/704611>.  It also contains all the necessary tools to
implement the saliency analysis, to run rank tests of the affinity matrix and to
build tables and plots summarizing the findings.")
    (license license:gpl3)))

(define-public r-affinity
  (package
    (name "r-affinity")
    (version "0.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "affinity" version))
       (sha256
        (base32 "0nfh3g8nifv5773pihgzxh62wa837i2dk1kgf15z28cb5xfj2y8h"))))
    (properties `((upstream-name . "affinity")))
    (build-system r-build-system)
    (propagated-inputs (list r-reproj r-raster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hypertidy/affinity")
    (synopsis
     "Raster Georeferencing, Grid Affine Transforms, Cell Abstraction")
    (description
     "This package provides tools for raster georeferencing, grid affine transforms,
and general raster logic.  These functions provide converters between raster
specifications, world vector, geotransform, @code{RasterIO} window, and
@code{RasterIO} window in sf package list format.  There are functions to offset
a matrix by padding any of four corners (useful for vectorizing neighbourhood
operations), and helper functions to harvesting user clicks on a graphics device
to use for simple georeferencing of images.  Methods used are available from
<https://en.wikipedia.org/wiki/World_file> and
<https://gdal.org/user/raster_data_model.html>.")
    (license license:gpl3)))

(define-public r-affect
  (package
    (name "r-affect")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AFFECT" version))
       (sha256
        (base32 "0ri0wllf87nxma9i51j89yd4yhkgjnjj5kls3768bi0h9wlyvxmp"))))
    (properties `((upstream-name . "AFFECT")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (home-page "https://cran.r-project.org/package=AFFECT")
    (synopsis
     "Accelerated Functional Failure Time Model with Error-Contaminated Survival Times")
    (description
     "We aim to deal with data with measurement error in the response and
misclassification censoring status under an AFT model.  This package primarily
contains three functions, which are used to generate artificial data, correction
for error-prone data and estimate the functional covariates for an AFT model.")
    (license license:gpl3)))

(define-public r-afdx
  (package
    (name "r-afdx")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "afdx" version))
       (sha256
        (base32 "1654vxakdd11b5zhwy1vcv127xk5rifan6fs1k6w1qsk74j4drqv"))))
    (properties `((upstream-name . "afdx")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-maxlik r-magrittr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/johnaponte/afdx")
    (synopsis "Diagnosis Performance Using Attributable Fraction")
    (description
     "Estimate diagnosis performance (Sensitivity, Specificity, Positive predictive
value, Negative predicted value) of a diagnostic test where can not measure the
golden standard but can estimate it using the attributable fraction.")
    (license license:gpl3+)))

(define-public r-afcolours
  (package
    (name "r-afcolours")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "afcolours" version))
       (sha256
        (base32 "04hmkcn4zmcp34mwav0wngld45a3pyrdb4cmnwg5ba7i0jk4z91y"))))
    (properties `((upstream-name . "afcolours")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr))
    (home-page "https://cran.r-project.org/package=afcolours")
    (synopsis
     "Government Analysis Function Recommended Accessible Colour Palette")
    (description
     "Government Analysis Function recommended colours for use in charts on gov.uk to
help meet accessibility guidance.")
    (license license:expat)))

(define-public r-afc
  (package
    (name "r-afc")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "afc" version))
       (sha256
        (base32 "1iy1wa88kf6zi6x7lbd0jdir653cvzvdraliqpxbac413wwb5gwl"))))
    (properties `((upstream-name . "afc")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=afc")
    (synopsis "Generalized Discrimination Score")
    (description
     "This is an implementation of the Generalized Discrimination Score (also known as
Two Alternatives Forced Choice Score, 2AFC) for various representations of
forecasts and verifying observations.  The Generalized Discrimination Score is a
generic forecast verification framework which can be applied to any of the
following verification contexts: dichotomous, polychotomous (ordinal and
nominal), continuous, probabilistic, and ensemble.  A comprehensive description
of the Generalized Discrimination Score, including all equations used in this
package, is provided by Mason and Weigel (2009) <doi:10.1175/MWR-D-10-05069.1>.")
    (license license:gpl3)))

(define-public r-af
  (package
    (name "r-af")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AF" version))
       (sha256
        (base32 "1r87ra55g0qm2s8cgsmdwck93ia2vr8zfab3in45mxm5xc501xgk"))))
    (properties `((upstream-name . "AF")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-stdreg r-ivtools r-drgee
                             r-data-table))
    (home-page "https://cran.r-project.org/package=AF")
    (synopsis
     "Model-Based Estimation of Confounder-Adjusted Attributable Fractions")
    (description
     "Estimates the attributable fraction in different sampling designs adjusted for
measured confounders using logistic regression (cross-sectional and case-control
designs), conditional logistic regression (matched case-control design), Cox
proportional hazard regression (cohort design with time-to- event outcome),
gamma-frailty model with a Weibull baseline hazard and instrumental variables
analysis.  An exploration of the AF with a genetic exposure can be found in the
package AFheritability Dahlqwist E et al. (2019)
<doi:10.1007/s00439-019-02006-8>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-aerosampler
  (package
    (name "r-aerosampler")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AeroSampleR" version))
       (sha256
        (base32 "0prdw8yjdrcyc8msk2a8ia5cjd4gm88isg8dqp9yj2aqbfz6pin7"))))
    (properties `((upstream-name . "AeroSampleR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-stringr
                             r-purrr
                             r-ggthemes
                             r-ggplot2
                             r-flextable
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AeroSampleR")
    (synopsis "Estimate Aerosol Particle Collection Through Sample Lines")
    (description
     "Estimate ideal efficiencies of aerosol sampling through sample lines.  Functions
were developed consistent with the approach described in Hogue, Mark; Thompson,
Martha; Farfan, Eduardo; Hadlock, Dennis, (2014), \"Hand Calculations for
Transport of Radioactive Aerosols through Sampling Systems\" Health Phys 106, 5,
S78-S87, <doi:10.1097/HP.0000000000000092>.")
    (license license:gpl3)))

(define-public r-aerobiology
  (package
    (name "r-aerobiology")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AeRobiology" version))
       (sha256
        (base32 "14d5gjx53v2wfij8m4br0k7lfi6x2frc8ny1li4g8c05qv2dvnbb"))))
    (properties `((upstream-name . "AeRobiology")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-writexl
                             r-tidyr
                             r-scales
                             r-plotly
                             r-lubridate
                             r-ggvis
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-circular))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AeRobiology")
    (synopsis "Computational Tool for Aerobiological Data")
    (description
     "Different tools for managing databases of airborne particles, elaborating the
main calculations and visualization of results.  In a first step, data are
checked using tools for quality control and all missing gaps are completed.
Then, the main parameters of the pollen season are calculated and represented
graphically.  Multiple graphical tools are available: pollen calendars,
phenological plots, time series, tendencies, interactive plots, abundance
plots...")
    (license license:gpl3)))

(define-public r-aep
  (package
    (name "r-aep")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AEP" version))
       (sha256
        (base32 "15b48vbl36b6wmjszm28p0mawg5kwsjglbrb8cndf3zsvx95zdq1"))))
    (properties `((upstream-name . "AEP")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=AEP")
    (synopsis
     "Statistical Modelling for Asymmetric Exponential Power Distribution")
    (description
     "Developed for Computing the probability density function, cumulative
distribution function, random generation, estimating the parameters of
asymmetric exponential power distribution, and robust regression analysis with
error term that follows asymmetric exponential power distribution.  The
asymmetric exponential power distribution studied here is a special case of that
introduced by Dongming and Zinde-Walsh (2009)
<doi:10.1016/j.jeconom.2008.09.038>.")
    (license license:gpl2+)))

(define-public r-aelab
  (package
    (name "r-aelab")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aelab" version))
       (sha256
        (base32 "0v4mm9nq5l7hm3mh421xw5rnc0ibhc9jy5pqfqhcw3brygffdhbf"))))
    (properties `((upstream-name . "aelab")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-readxl
                             r-readr
                             r-openxlsx
                             r-lubridate
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=aelab")
    (synopsis "Calculation of Greenhouse Gas Flux")
    (description
     "Facilitate the analysis of data related to ecology, specifically the
establishment of carbon budget.  Currently, the package allows the below
analysis. (i) the calculation of greenhouse gas flux based on data obtained from
trace gas analyzer using the method described in Lin et al. (2024). (ii) the
calculation of Dissolved Oxygen (DO) metabolism based on data obtained from
dissolved oxygen data logger using the method described in Staehr et al. (2010).
 Lin et al. (2024) <doi:10.1016/j.scitotenv.2024.170768>.  Staehr et al. (2024)
<doi:10.4319/lom.2010.8.0628>.")
    (license license:gpl3+)))

(define-public r-aeenrich
  (package
    (name "r-aeenrich")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AEenrich" version))
       (sha256
        (base32 "049z696mkwha90w84l60r11q12r3jlam6kyh8abiy0zk2k425san"))))
    (properties `((upstream-name . "AEenrich")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-qvalue
                             r-modelr
                             r-magrittr
                             r-foreach
                             r-dplyr
                             r-doparallel))
    (home-page "https://github.com/umich-biostatistics/AEenrich")
    (synopsis "Adverse Event Enrichment Tests")
    (description
     "We extend existing gene enrichment tests to perform adverse event enrichment
analysis.  Unlike the continuous gene expression data, adverse event data are
counts.  Therefore, adverse event data has many zeros and ties.  We propose two
enrichment tests.  One is a modified Fisher's exact test based on pre-selected
significant adverse events, while the other is based on a modified
Kolmogorov-Smirnov statistic.  We add Covariate adjustment to improve the
analysis.\"Adverse event enrichment tests using VAERS\" Shuoran Li, Lili Zhao
(2020) <@code{arXiv:2007.02266>}.")
    (license license:gpl2)))

(define-public r-aedseo
  (package
    (name "r-aedseo")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aedseo" version))
       (sha256
        (base32 "1sy3j78lawa10rf22fa3wsbal2mv64hs1k5v7yqf9hx11jib26sz"))))
    (properties `((upstream-name . "aedseo")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lifecycle
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ssi-dk/aedseo")
    (synopsis "Automated and Early Detection of Seasonal Epidemic Onset")
    (description
     "This package provides a powerful tool for automating the early detection of
seasonal epidemic onsets in time series data.  It offers the ability to estimate
growth rates for consecutive time intervals and calculate the sum of cases
(@code{SoC}) within those intervals.  It is particularly useful for
epidemiologists, public health professionals, and researchers seeking to
identify and respond to seasonal epidemics in a timely fashion.  For reference
on growth rate estimation, see Walling and Lipstich (2007)
<doi:10.1098/rspb.2006.3754> and Obadia et al. (2012)
<doi:10.1186/1472-6947-12-147>.")
    (license license:expat)))

(define-public r-aedforecasting
  (package
    (name "r-aedforecasting")
    (version "0.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AEDForecasting" version))
       (sha256
        (base32 "16q2sn5zzvysyy3r32jnr21pbdkkn0k0sbarni6fdkx7pj27yijn"))))
    (properties `((upstream-name . "AEDForecasting")))
    (build-system r-build-system)
    (propagated-inputs (list r-signal r-forecast r-changepoint))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=AEDForecasting")
    (synopsis "Change Point Analysis in ARIMA Forecasting")
    (description
     "Package to incorporate change point analysis in ARIMA forecasting.")
    (license license:gpl3)))

(define-public r-aeddo
  (package
    (name "r-aeddo")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aeddo" version))
       (sha256
        (base32 "005l1cxpk30m1krdkrr62i7d1gp8j1v5f9r8j81v6r3w3iwzr449"))))
    (properties `((upstream-name . "aeddo")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lifecycle
                             r-ggplot2
                             r-dplyr
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://ssi-dk.github.io/aeddo/")
    (synopsis "Automated and Early Detection of Disease Outbreaks")
    (description
     "This package provides a powerful tool for automating the early detection of
disease outbreaks in time series data.  aeddo employs advanced statistical
methods, including hierarchical models, in an innovative manner to effectively
characterize outbreak signals.  It is particularly useful for epidemiologists,
public health professionals, and researchers seeking to identify and respond to
disease outbreaks in a timely fashion.  For a detailed reference on hierarchical
models, consult Henrik Madsen and Poul Thyregod's book (2011), ISBN:
9781420091557.")
    (license license:expat)))

(define-public r-aebdata
  (package
    (name "r-aebdata")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aebdata" version))
       (sha256
        (base32 "1l49ldz2qgdcw66q221g2k0kny77px807337cj96zbll8cic4lxa"))))
    (properties `((upstream-name . "aebdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-rvest r-readr r-httr2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hhmacedo/aebdata")
    (synopsis "Access Data from the Atlas do Estado Brasileiro")
    (description
     "Facilitates access to the data from the Atlas do Estado Brasileiro
(<https://www.ipea.gov.br/atlasestado/>), maintained by the Instituto de
Pesquisa EconÃ´mica Aplicada (Ipea).  It allows users to search for specific
series, list series or themes, and download data when available.")
    (license license:gpl3+)))

(define-public r-adwordsr
  (package
    (name "r-adwordsr")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adwordsR" version))
       (sha256
        (base32 "1w5qg4psm8pj89f09pz7in8zkafaimik1n6hx29y55jpmbxbk2gn"))))
    (properties `((upstream-name . "adwordsR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjson r-rcurl))
    (home-page "https://www.branded3.com/")
    (synopsis "Access the 'Google Adwords' API")
    (description
     "Allows access to selected services that are part of the Google Adwords API
<https://developers.google.com/adwords/api/docs/guides/start>.  Google Adwords
is an online advertising service by Google', that delivers Ads to users.  This
package offers a authentication process using OAUTH2'.  Currently, there are two
methods of data of accessing the API, depending on the type of request.  One
method uses SOAP requests which require building an XML structure and then sent
to the API. These are used for the @code{ManagedCustomerService} and the
@code{TargetingIdeaService}'.  The second method is by building AWQL queries for
the reporting side of the Google Adwords API.")
    (license license:expat)))

(define-public r-adwave
  (package
    (name "r-adwave")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adwave" version))
       (sha256
        (base32 "11iy50ng0zxvwsvdsvx262j8zgqaai308lp5is47az7xzvk57mx7"))))
    (properties `((upstream-name . "adwave")))
    (build-system r-build-system)
    (propagated-inputs (list r-waveslim))
    (home-page "https://doi.org/10.1534/genetics.115.176842")
    (synopsis "Wavelet Analysis of Genomic Data from Admixed Populations")
    (description
     "This package implements wavelet-based approaches for describing population
admixture.  Principal Components Analysis (PCA) is used to define the population
structure and produce a localized admixture signal for each individual.  Wavelet
summaries of the PCA output describe variation present in the data and can be
related to population-level demographic processes.  For more details, see J
Sanderson, H Sudoyo, TM Karafet, MF Hammer and MP Cox.  2015.  Reconstructing
past admixture processes from local genomic ancestry using wavelet
transformation.  Genetics 200:469-481 <doi:10.1534/genetics.115.176842>.")
    (license license:gpl2+)))

(define-public r-adw
  (package
    (name "r-adw")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adw" version))
       (sha256
        (base32 "0ng9iabxh15xaj10mi6xdggmx6fcvdmmx1c9nlyfkbnb4f1qzlxp"))))
    (properties `((upstream-name . "adw")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra r-sf r-cnmap))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/PanfengZhang/adw")
    (synopsis "Angular Distance Weighting Interpolation")
    (description
     "The irregularly-spaced data are interpolated onto regular latitude-longitude
grids by weighting each station according to its distance and angle from the
center of a search radius.  In addition to this, we also provide a simple way
(Jones and Hulme, 1996) to grid the irregularly-spaced data points onto regular
latitude-longitude grids by averaging all stations in grid-boxes.")
    (license license:gpl3)))

(define-public r-advice
  (package
    (name "r-advice")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ADVICE" version))
       (sha256
        (base32 "1p8186715lzk4prxaw5v0np9z1zfj9zbp124jrch0yygvkxksy7r"))))
    (properties `((upstream-name . "ADVICE")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ADVICE")
    (synopsis
     "Automatic Direct Variable Selection via Interrupted Coefficient Estimation")
    (description
     "Accurate point and interval estimation methods for multiple linear regression
coefficients, under classical normal and independent error assumptions, taking
into account variable selection.")
    (license (license:fsdg-compatible "Unlimited"))))

(define-public r-adventr
  (package
    (name "r-adventr")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adventr" version))
       (sha256
        (base32 "0nja1a2xhaimz1fg2bb838x9a37sswjqjc68mp59gbdwkfpdii37"))))
    (properties `((upstream-name . "adventr")))
    (build-system r-build-system)
    (propagated-inputs (list r-wrs2
                             r-tidyr
                             r-sjstats
                             r-sandwich
                             r-robust
                             r-readr
                             r-nlme
                             r-lm-beta
                             r-learnr
                             r-hmisc
                             r-ggplot2
                             r-ggally
                             r-forcats
                             r-effsize
                             r-effects
                             r-dplyr
                             r-car
                             r-boot
                             r-bayesfactor))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=adventr")
    (synopsis
     "Interactive R Tutorials to Accompany Field (2016), \"An Adventure in Statistics\"")
    (description
     "Interactive R tutorials written using learnr for Field (2016), \"An Adventure in
Statistics\", <ISBN:9781446210451>.  Topics include general workflow in R and
Rstudio', the R environment and tidyverse', summarizing data, model fitting,
central tendency, visualising data using ggplot2', inferential statistics and
robust estimation, hypothesis testing, the general linear model, comparing
means, repeated measures designs, factorial designs, multilevel models, growth
models, and generalized linear models (logistic regression).")
    (license license:gpl3)))

(define-public r-advdif4
  (package
    (name "r-advdif4")
    (version "0.7.18")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AdvDif4" version))
       (sha256
        (base32 "1xdbk7w55cb2fh0mqlyrkdpnglrs55kyvvp32anvf2nw3ssrfmy7"))))
    (properties `((upstream-name . "AdvDif4")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=AdvDif4")
    (synopsis "Solving 1D Advection Bi-Flux Diffusion Equation")
    (description
     "This software solves an Advection Bi-Flux Diffusive Problem using the Finite
Difference Method FDM. Vasconcellos, J.F.V., Marinho, G.M., Zanni, J.H., 2016,
Numerical analysis of an anomalous diffusion with a bimodal flux distribution.
<doi:10.1016/j.rimni.2016.05.001>.  Silva, L.G., Knupp, D.C., Bevilacqua, L.,
Galeao, A.C.N.R., Silva Neto, A.J., 2014, Formulation and solution of an Inverse
Anomalous Diffusion Problem with Stochastic Techniques.
<doi:10.5902/2179460X13184>.  In this version, it is possible to include a
source as a function depending on space and time, that is, s(x,t).")
    (license license:gpl3)))

(define-public r-advbinomapps
  (package
    (name "r-advbinomapps")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AdvBinomApps" version))
       (sha256
        (base32 "1cnmn6c2dyl8qfl7g5sqwbjb52psqxzrj1mbm06zak2y1j7j8f49"))))
    (properties `((upstream-name . "AdvBinomApps")))
    (build-system r-build-system)
    (propagated-inputs (list r-rootsolve r-genbinomapps))
    (home-page "https://cran.r-project.org/package=AdvBinomApps")
    (synopsis
     "Upper Clopper-Pearson Confidence Limits for Burn-in Studies under Additional Available Information")
    (description
     "This package provides functions to compute upper Clopper-Pearson confidence
limits of early life failure probabilities and required sample sizes of burn-in
studies under further available information, e.g. from other products or
technologies.")
    (license license:gpl3)))

(define-public r-advancedbasketballstats
  (package
    (name "r-advancedbasketballstats")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AdvancedBasketballStats" version))
       (sha256
        (base32 "0wwqnijhz2sa3pcf8mjidw7m4awqgbsn4sgly93zyspb5fv7yblk"))))
    (properties `((upstream-name . "AdvancedBasketballStats")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AdvancedBasketballStats")
    (synopsis "Advanced Basketball Statistics")
    (description
     "This package provides different functionalities and calculations used in the
world of basketball to analyze the statistics of the players, the statistics of
the teams, the statistics of the quintets and the statistics of the plays.  For
more details of the calculations included in the package can be found in the
book Basketball on Paper written by Dean Oliver.")
    (license license:gpl2+)))

(define-public r-adtsa
  (package
    (name "r-adtsa")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ADTSA" version))
       (sha256
        (base32 "1qaxb7xja7zqdz5pwy5ad8jah3cvqpial2isjwqndhlmsvfysl5n"))))
    (properties `((upstream-name . "ADTSA")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ADTSA")
    (synopsis "Time Series Analysis")
    (description
     "Analyzes autocorrelation and partial autocorrelation using surrogate methods and
bootstrapping, and computes the acceleration constants for the vectorized moving
block bootstrap provided by this package.  It generates percentile,
bias-corrected, and accelerated intervals and estimates partial autocorrelations
using Durbin-Levinson.  This package calculates the autocorrelation power
spectrum, computes cross-correlations between two time series, computes
bandwidth for any time series, and performs autocorrelation frequency analysis.
It also calculates the periodicity of a time series.")
    (license license:gpl3)))

(define-public r-adsdatahubr
  (package
    (name "r-adsdatahubr")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adsDataHubR" version))
       (sha256
        (base32 "19csivbg3f0g2r11l7jrciqq2lhg50km7qv29xfs6ba5cf678hb9"))))
    (properties `((upstream-name . "adsDataHubR")))
    (build-system r-build-system)
    (propagated-inputs (list r-lubridate r-jsonlite r-httr))
    (home-page "https://cran.r-project.org/package=adsDataHubR")
    (synopsis "Google Ads Data Hub API Client")
    (description
     "Interact with Google Ads Data Hub API
<https://developers.google.com/ads-data-hub/reference/rest>.  The functionality
allows to fetch customer details, submit queries to ADH.")
    (license license:gpl2)))

(define-public r-ads
  (package
    (name "r-ads")
    (version "1.5-10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ads" version))
       (sha256
        (base32 "0arxwjy13fijf5w5491hyr7l4cbmp83aa4hckjxx43zbrdyvvrpz"))))
    (properties `((upstream-name . "ads")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatstat-geom r-ade4))
    (home-page "https://forge.ird.fr/amap/ads")
    (synopsis "Spatial Point Patterns Analysis")
    (description
     "Perform first- and second-order multi-scale analyses derived from Ripley
K-function (Ripley B. D. (1977) <doi:10.1111/j.2517-6161.1977.tb01615.x>), for
univariate, multivariate and marked mapped data in rectangular, circular or
irregular shaped sampling windows, with tests of statistical significance based
on Monte Carlo simulations.")
    (license license:gpl2)))

(define-public r-adpss
  (package
    (name "r-adpss")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adpss" version))
       (sha256
        (base32 "1nk12yn1n483scnphf8pab8w633dk64c8n17zlq851zywbncs0gk"))))
    (properties `((upstream-name . "adpss")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ca4wa/R-adpss")
    (synopsis
     "Design and Analysis of Locally or Globally Efficient Adaptive Designs")
    (description
     "This package provides the functions for planning and conducting a clinical trial
with adaptive sample size determination.  Maximal statistical efficiency will be
exploited even when dramatic or multiple adaptations are made.  Such a trial
consists of adaptive determination of sample size at an interim analysis and
implementation of frequentist statistical test at the interim and final analysis
with a prefixed significance level.  The required assumptions for the stage-wise
test statistics are independent and stationary increments and normality.
Predetermination of adaptation rule is not required.")
    (license license:gpl2+)))

(define-public r-adproclus
  (package
    (name "r-adproclus")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adproclus" version))
       (sha256
        (base32 "00n7nc11c47vcjz8zlx855dw9lq9d12qghx42hz1xy0ah0iqjh3q"))))
    (properties `((upstream-name . "adproclus")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tidyr
                             r-scales
                             r-rlang
                             r-readr
                             r-qgraph
                             r-nmfn
                             r-multichull
                             r-matrixstats
                             r-igraph
                             r-gtools
                             r-ggrepel
                             r-ggplot2
                             r-corrplot
                             r-checkmate))
    (home-page "https://github.com/henry-heppe/adproclus")
    (synopsis "Additive Profile Clustering Algorithms")
    (description
     "Obtain overlapping clustering models for object-by-variable data matrices using
the Additive Profile Clustering (ADPROCLUS) method.  Also contains the low
dimensional ADPROCLUS method for simultaneous dimension reduction and
overlapping clustering.  For reference see Depril, Van Mechelen, Mirkin (2008)
<doi:10.1016/j.csda.2008.04.014> and Depril, Van Mechelen, Wilderjans (2012)
<doi:10.1007/s00357-012-9112-5>.")
    (license license:gpl3+)))

(define-public r-adpf
  (package
    (name "r-adpf")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ADPF" version))
       (sha256
        (base32 "1n7302xx77ngvp9i2h582i1mqslzllcdr0bn3pl2zk9jd8k97p7n"))))
    (properties `((upstream-name . "ADPF")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ADPF")
    (synopsis
     "Use Least Squares Polynomial Regression and Statistical Testing to Improve Savitzky-Golay")
    (description
     "This function takes a vector or matrix of data and smooths the data with an
improved Savitzky Golay transform.  The Savitzky-Golay method for data smoothing
and differentiation calculates convolution weights using Gram polynomials that
exactly reproduce the results of least-squares polynomial regression.  Use of
the Savitzky-Golay method requires specification of both filter length and
polynomial degree to calculate convolution weights.  For maximum smoothing of
statistical noise in data, polynomials with low degrees are desirable, while a
high polynomial degree is necessary for accurate reproduction of peaks in the
data.  Extension of the least-squares regression formalism with statistical
testing of additional terms of polynomial degree to a heuristically chosen
minimum for each data window leads to an adaptive-degree polynomial filter
(ADPF).  Based on noise reduction for data that consist of pure noise and on
signal reproduction for data that is purely signal, ADPF performed nearly as
well as the optimally chosen fixed-degree Savitzky-Golay filter and outperformed
sub-optimally chosen Savitzky-Golay filters.  For synthetic data consisting of
noise and signal, ADPF outperformed both optimally chosen and sub-optimally
chosen fixed-degree Savitzky-Golay filters.  See Barak, P. (1995)
<doi:10.1021/ac00113a006> for more information.")
    (license license:gpl3)))

(define-public r-adpclust
  (package
    (name "r-adpclust")
    (version "0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ADPclust" version))
       (sha256
        (base32 "0s47cpsjykn7imsssa9w9b6g9d1sz2yah78yqzxmh0i3lqd757c1"))))
    (properties `((upstream-name . "ADPclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-knitr r-fields r-dplyr r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ethanyxu/ADPclust")
    (synopsis "Fast Clustering Using Adaptive Density Peak Detection")
    (description
     "An implementation of ADPclust clustering procedures (Fast Clustering Using
Adaptive Density Peak Detection).  The work is built and improved upon the idea
of Rodriguez and Laio (2014)<DOI:10.1126/science.1242072>.  ADPclust clusters
data by finding density peaks in a density-distance plot generated from local
multivariate Gaussian density estimation.  It includes an automatic centroids
selection and parameter optimization algorithm, which finds the number of
clusters and cluster centroids by comparing average silhouettes on a grid of
testing clustering results; It also includes a user interactive algorithm that
allows the user to manually selects cluster centroids from a two dimensional
\"density-distance plot\".  Here is the research article associated with this
package: \"Wang, Xiao-Feng, and Yifan Xu (2015)<DOI:10.1177/0962280215609948>
Fast clustering using adaptive density peak detection.\" Statistical methods in
medical research\".  url:
http://smm.sagepub.com/content/early/2015/10/15/0962280215609948.abstract.")
    (license license:gpl2+)))

(define-public r-adp
  (package
    (name "r-adp")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ADP" version))
       (sha256
        (base32 "1ljm4bri3b96r544x3n37qrfm6krmij8yjfr8n5acllqp6jnf2d5"))))
    (properties `((upstream-name . "ADP")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ADP")
    (synopsis "Adoption Probability, Triers and Users Rate of a New Product")
    (description
     "Calculate users prevalence of a product based on the prevalence of triers in the
population.  The measurement of triers is relatively easy.  It is just a
question of whether a person tried a product even once in his life or not.  On
the other hand, The measurement of people who also adopt it as part of their
life is more complicated since adopting an innovative product is a subjective
view of the individual.  Mickey Kislev and Shira Kislev developed a formula to
calculate the prevalence of a product's users to overcome this difficulty.  The
current package assists in calculating the users prevalence of a product based
on the prevalence of triers in the population.  See for: Kislev, M. M., and S.
Kislev (2020) <doi:10.5539/ijms.v12n4p63>.")
    (license license:gpl3)))

(define-public r-adoptr
  (package
    (name "r-adoptr")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adoptr" version))
       (sha256
        (base32 "12ihlvnnpnkc6w12bhrppf6cc9y5qb3x9k21n558i9h929l7052i"))))
    (properties `((upstream-name . "adoptr")))
    (build-system r-build-system)
    (propagated-inputs (list r-nloptr r-glue))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/optad/adoptr")
    (synopsis "Adaptive Optimal Two-Stage Designs")
    (description
     "Optimize one or two-arm, two-stage designs for clinical trials with respect to
several implemented objective criteria or custom objectives.  Optimization under
uncertainty and conditional (given stage-one outcome) constraints are supported.
 See Pilz et al. (2019) <doi:10.1002/sim.8291> and Kunzmann et al. (2021)
<doi:10.18637/jss.v098.i09> for details.")
    (license license:expat)))

(define-public r-adobeanalyticsr
  (package
    (name "r-adobeanalyticsr")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adobeanalyticsr" version))
       (sha256
        (base32 "1cbr86ssnd0bl6pvqziz16nvh3gzmd170pkk8wr2rkhm0rryh2l4"))))
    (properties `((upstream-name . "adobeanalyticsr")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tidyr
                             r-stringr
                             r-scales
                             r-rlang
                             r-r6
                             r-purrr
                             r-progress
                             r-openssl
                             r-memoise
                             r-lubridate
                             r-lifecycle
                             r-jsonlite
                             r-jose
                             r-httr
                             r-glue
                             r-ggplot2
                             r-dplyr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/benrwoodard/adobeanalyticsr")
    (synopsis "R Client for 'Adobe Analytics' API 2.0")
    (description
     "Connect to the Adobe Analytics API v2.0
<https://github.com/@code{AdobeDocs/analytics-2.0-apis>} which powers Analysis
Workspace'.  The package was developed with the analyst in mind, and it will
continue to be developed with the guiding principles of iterative, repeatable,
timely analysis.")
    (license license:expat)))

(define-public r-adnuts
  (package
    (name "r-adnuts")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adnuts" version))
       (sha256
        (base32 "0nkciv5sfj3bws6kpgrnaq4ziasibaz44w64mb86zmr8420nyc1q"))))
    (properties `((upstream-name . "adnuts")))
    (build-system r-build-system)
    (propagated-inputs (list r-snowfall
                             r-rstan
                             r-rlang
                             r-r2admb
                             r-ggplot2
                             r-ellipse))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Cole-Monnahan-NOAA/adnuts")
    (synopsis "No-U-Turn MCMC Sampling for 'ADMB' Models")
    (description
     "Bayesian inference using the no-U-turn (NUTS) algorithm by Hoffman and Gelman
(2014) <https://www.jmlr.org/papers/v15/hoffman14a.html>.  Designed for AD Model
Builder ('ADMB') models, or when R functions for log-density and log-density
gradient are available, such as Template Model Builder models and other special
cases.  Functionality is similar to Stan', and the rstan and shinystan packages
are used for diagnostics and inference.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-admur
  (package
    (name "r-admur")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ADMUR" version))
       (sha256
        (base32 "1wv5frav8vjkvsqwng9zddajmb7rdm4iqrikw9cjpqdpk7njl8ph"))))
    (properties `((upstream-name . "ADMUR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-scales r-mathjaxr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/UCL/ADMUR")
    (synopsis "Ancient Demographic Modelling Using Radiocarbon")
    (description
     "This package provides tools to directly model underlying population dynamics
using date datasets (radiocarbon and other) with a Continuous Piecewise Linear
(CPL) model framework.  Various other model types included.  Taphonomic loss
included optionally as a power function.  Model comparison framework using BIC.
Package also calibrates 14C samples, generates Summed Probability Distributions
(SPD), and performs SPD simulation analysis to generate a Goodness-of-fit test
for the best selected model.  Details about the method can be found in Timpson
A., Barberena R., Thomas M. G., Mendez C., Manning K. (2020)
<doi:10.1098/rstb.2019.0723>.")
    (license license:gpl3)))

(define-public r-admtools
  (package
    (name "r-admtools")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "admtools" version))
       (sha256
        (base32 "1dh1bgzq5z3xjcxwy6szkf5rh4pfvj2ynw7yrz7llbc3rvczr1kx"))))
    (properties `((upstream-name . "admtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MindTheGap-ERC/admtools")
    (synopsis "Estimate and Manipulate Age-Depth Models")
    (description
     "Estimate age-depth models from stratigraphic and sedimentological data, and
transform data between the time and stratigraphic domain.")
    (license license:gpl3+)))

(define-public r-admmsigma
  (package
    (name "r-admmsigma")
    (version "2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ADMMsigma" version))
       (sha256
        (base32 "1943dza086s22pr0yz41wzn9cdg11x7fl9zr3w012865yj219m7l"))))
    (properties `((upstream-name . "ADMMsigma")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppprogress
                             r-rcpparmadillo
                             r-rcpp
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MGallow/ADMMsigma")
    (synopsis "Penalized Precision Matrix Estimation via ADMM")
    (description
     "Estimates a penalized precision matrix via the alternating direction method of
multipliers (ADMM) algorithm.  It currently supports a general elastic-net
penalty that allows for both ridge and lasso-type penalties as special cases.
This package is an alternative to the glasso package.  See Boyd et al (2010)
<doi:10.1561/2200000016> for details regarding the estimation method.")
    (license license:gpl2+)))

(define-public r-admmdensestsubmatrix
  (package
    (name "r-admmdensestsubmatrix")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "admmDensestSubmatrix" version))
       (sha256
        (base32 "1a5lfm10aj6wdjibdnmffn75zvy6x69w8nqcx2i23gxg6v0xlqcl"))))
    (properties `((upstream-name . "admmDensestSubmatrix")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=admmDensestSubmatrix")
    (synopsis
     "Alternating Direction Method of Multipliers to Solve Dense Dubmatrix Problem")
    (description
     "Solves the problem of identifying the densest submatrix in a given or sampled
binary matrix, Bombina et al. (2019) <@code{arXiv:1904.03272>}.")
    (license license:cc0)))

(define-public r-admm
  (package
    (name "r-admm")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ADMM" version))
       (sha256
        (base32 "04biinzr0x3jkwss00q6zxfnzk62dafc6386z5vfqs4ch0ifh60n"))))
    (properties `((upstream-name . "ADMM")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack
                             r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-foreach
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=ADMM")
    (synopsis "Algorithms using Alternating Direction Method of Multipliers")
    (description
     "This package provides algorithms to solve popular optimization problems in
statistics such as regression or denoising based on Alternating Direction Method
of Multipliers (ADMM).  See Boyd et al (2010) <doi:10.1561/2200000016> for
complete introduction to the method.")
    (license license:gpl3+)))

(define-public r-admixr
  (package
    (name "r-admixr")
    (version "0.9.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "admixr" version))
       (sha256
        (base32 "0wszpzs53cbnha13g2ldpq6z5ndw2v2xgrzadqkjm3hsp6akv4bl"))))
    (properties `((upstream-name . "admixr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-rlang
                             r-readr
                             r-magrittr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bodkan/admixr")
    (synopsis "An Interface for Running 'ADMIXTOOLS' Analyses")
    (description
     "An interface for performing all stages of ADMIXTOOLS analyses
(<https://reich.hms.harvard.edu/software>) entirely from R. Wrapper functions
(D, f4, f3, etc.) completely automate the generation of intermediate
configuration files, run ADMIXTOOLS programs on the command-line, and parse
output files to extract values of interest.  This allows users to focus on the
analysis itself instead of worrying about low-level technical details.  A set of
complementary functions for processing and filtering of data in the EIGENSTRAT
format is also provided.")
    (license license:expat)))

(define-public r-admix
  (package
    (name "r-admix")
    (version "2.1-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "admix" version))
       (sha256
        (base32 "0h6saazz2p8pliznn2ggbi6zj5ib00ylghfxj5i9nk21p4y0s59s"))))
    (properties `((upstream-name . "admix")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp
                             r-pracma
                             r-orthopolynom
                             r-mass
                             r-iso
                             r-fdrtool
                             r-cubature))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/XavierMilhaud/admix")
    (synopsis "Package Admix for Admixture (aka Contamination) Models")
    (description
     "This package implements techniques to estimate the unknown quantities related to
two-component admixture models, where the two components can belong to any
distribution (note that in the case of multinomial mixtures, the two components
must belong to the same family).  Estimation methods depend on the assumptions
made on the unknown component density (see Bordes and Vandekerkhove (2010)
<doi:10.3103/S1066530710010023>; Patra and Sen (2016) <doi:10.1111/rssb.12148>);
Milhaud, Pommeret, Salhi and Vandekerkhove (2022)
<doi:10.1016/j.jspi.2021.05.010>).  In practice, one can estimate both the
mixture weight and the unknown component density in a wide variety of
frameworks.  On top of that, hypothesis tests can be performed in one and
two-sample contexts to test the unknown component density (see Milhaud,
Pommeret, Salhi, Vandekerkhove (2023)).  Finally, clustering of unknown mixture
components is also feasible in a K-samples setting.")
    (license license:gpl3+)))

(define-public r-admit
  (package
    (name "r-admit")
    (version "2.1.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AdMit" version))
       (sha256
        (base32 "0dlmqpwqfhhc4z2xr44f00xsg0hbmw2c5z2d4pbifv36jlrdxbip"))))
    (properties `((upstream-name . "AdMit")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://github.com/ArdiaD/AdMit")
    (synopsis "Adaptive Mixture of Student-t Distributions")
    (description
     "This package provides functions to perform the fitting of an adaptive mixture of
Student-t distributions to a target density through its kernel function as
described in Ardia et al. (2009) <doi:10.18637/jss.v029.i03>.  The mixture
approximation can then be used as the importance density in importance sampling
or as the candidate density in the Metropolis-Hastings algorithm to obtain
quantities of interest for the target density itself.")
    (license license:gpl2+)))

(define-public r-admiralvaccine
  (package
    (name "r-admiralvaccine")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "admiralvaccine" version))
       (sha256
        (base32 "17p7l8rx40zjaxc2ap1n1pi1025qn1cw17m26haw6d5vr1p9sk1k"))))
    (properties `((upstream-name . "admiralvaccine")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-lifecycle
                             r-hms
                             r-dplyr
                             r-assertthat
                             r-admiraldev
                             r-admiral))
    (native-inputs (list r-knitr))
    (home-page "https://pharmaverse.github.io/admiralvaccine/")
    (synopsis "Vaccine Extension Package for ADaM in 'R' Asset Library")
    (description
     "Programming vaccine specific Clinical Data Interchange Standards Consortium
(CDISC) compliant Analysis Data Model (A@code{DaM}) datasets in R'.  Flat model
is followed as per Center for Biologics Evaluation and Research (CBER)
guidelines for creating vaccine specific domains.  A@code{DaM} datasets are a
mandatory part of any New Drug or Biologics License Application submitted to the
United States Food and Drug Administration (FDA).  Analysis derivations are
implemented in accordance with the \"Analysis Data Model Implementation Guide\"
(CDISC Analysis Data Model Team (2021),
<https://www.cdisc.org/standards/foundational/adam/adamig-v1-3-release-package>).
 The package is an extension package of the admiral package.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-admiralpeds
  (package
    (name "r-admiralpeds")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "admiralpeds" version))
       (sha256
        (base32 "06821f08f7mgl20p1i90h6bwzhhcnb6clmqxrygxn9fs9iza4ha0"))))
    (properties `((upstream-name . "admiralpeds")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tidyselect
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-dplyr
                             r-cli
                             r-admiraldev
                             r-admiral))
    (native-inputs (list r-knitr))
    (home-page "https://pharmaverse.github.io/admiralpeds/")
    (synopsis "Pediatrics Extension Package for ADaM in 'R' Asset Library")
    (description
     "This package provides a toolbox for programming Clinical Data Standards
Interchange Consortium (CDISC) compliant Analysis Data Model (A@code{DaM})
datasets in R. A@code{DaM} datasets are a mandatory part of any New Drug or
Biologics License Application submitted to the United States Food and Drug
Administration (FDA).  Analysis derivations are implemented in accordance with
the \"Analysis Data Model Implementation Guide\" (CDISC Analysis Data Model Team,
2021, <https://www.cdisc.org/standards/foundational/adam>).  The package is an
extension package of the admiral package for pediatric clinical trials.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-admiralophtha
  (package
    (name "r-admiralophtha")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "admiralophtha" version))
       (sha256
        (base32 "1690id6s5633r47av68wivg436h5s13a5qlg9a1dyfghd6wfa79f"))))
    (properties `((upstream-name . "admiralophtha")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-lifecycle
                             r-hms
                             r-dplyr
                             r-admiraldev
                             r-admiral))
    (native-inputs (list r-knitr))
    (home-page "https://pharmaverse.github.io/admiralophtha/")
    (synopsis "ADaM in R Asset Library - Ophthalmology")
    (description
     "Aids the programming of Clinical Data Standards Interchange Consortium (CDISC)
compliant Ophthalmology Analysis Data Model (A@code{DaM}) datasets in R.
A@code{DaM} datasets are a mandatory part of any New Drug or Biologics License
Application submitted to the United States Food and Drug Administration (FDA).
Analysis derivations are implemented in accordance with the \"Analysis Data Model
Implementation Guide\" (CDISC Analysis Data Model Team, 2021,
<https://www.cdisc.org/standards/foundational/adam/adamig-v1-3-release-package>).")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-admiralonco
  (package
    (name "r-admiralonco")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "admiralonco" version))
       (sha256
        (base32 "022cjygxyq40fg66bdky0pdffyv6dafq77s6g7skxmyqrp6wqhqd"))))
    (properties `((upstream-name . "admiralonco")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-rlang
                             r-magrittr
                             r-lubridate
                             r-lifecycle
                             r-dplyr
                             r-admiraldev
                             r-admiral))
    (native-inputs (list r-knitr))
    (home-page "https://pharmaverse.github.io/admiralonco/")
    (synopsis "Oncology Extension Package for ADaM in 'R' Asset Library")
    (description
     "Programming oncology specific Clinical Data Interchange Standards Consortium
(CDISC) compliant Analysis Data Model (A@code{DaM}) datasets in R'.  A@code{DaM}
datasets are a mandatory part of any New Drug or Biologics License Application
submitted to the United States Food and Drug Administration (FDA).  Analysis
derivations are implemented in accordance with the \"Analysis Data Model
Implementation Guide\" (CDISC Analysis Data Model Team (2021),
<https://www.cdisc.org/standards/foundational/adam>).  The package is an
extension package of the admiral package.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-admiraldev
  (package
    (name "r-admiraldev")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "admiraldev" version))
       (sha256
        (base32 "0cpdhyiis0mwd219h3y4l1scy49bl3qjd9sy2kln4ymy0xsbasyg"))))
    (properties `((upstream-name . "admiraldev")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-stringr
                             r-rlang
                             r-purrr
                             r-lubridate
                             r-lifecycle
                             r-glue
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://pharmaverse.github.io/admiraldev/")
    (synopsis
     "Utility Functions and Development Tools for the Admiral Package Family")
    (description
     "Utility functions to check data, variables and conditions for functions used in
admiral and admiral extension packages.  Additional utility helper functions to
assist developers with maintaining documentation, testing and general upkeep of
admiral and admiral extension packages.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-admiral-test
  (package
    (name "r-admiral-test")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "admiral.test" version))
       (sha256
        (base32 "1bmzj9r6nbyk4wd63ps6qwrj35lpj4s4jj4dvlg0p7yyssig68pb"))))
    (properties `((upstream-name . "admiral.test")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=admiral.test")
    (synopsis "Test Data for the 'admiral' Package")
    (description
     "This package provides a set of Study Data Tabulation Model (SDTM) datasets from
the Clinical Data Interchange Standards Consortium (CDISC) pilot project used
for testing and developing Analysis Data Model (A@code{DaM}) derivations inside
the admiral package.")
    (license license:asl2.0)))

(define-public r-admiral
  (package
    (name "r-admiral")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "admiral" version))
       (sha256
        (base32 "0g669is6kj6hqpi2i6ik6c0c5mrx3750dd8dsnjmv25aiy60hnzp"))))
    (properties `((upstream-name . "admiral")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-lifecycle
                             r-hms
                             r-dplyr
                             r-cli
                             r-admiraldev))
    (native-inputs (list r-knitr))
    (home-page "https://pharmaverse.github.io/admiral/")
    (synopsis "ADaM in R Asset Library")
    (description
     "This package provides a toolbox for programming Clinical Data Interchange
Standards Consortium (CDISC) compliant Analysis Data Model (A@code{DaM})
datasets in R. A@code{DaM} datasets are a mandatory part of any New Drug or
Biologics License Application submitted to the United States Food and Drug
Administration (FDA).  Analysis derivations are implemented in accordance with
the \"Analysis Data Model Implementation Guide\" (CDISC Analysis Data Model Team,
2021, <https://www.cdisc.org/standards/foundational/adam>).")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-adlp
  (package
    (name "r-adlp")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ADLP" version))
       (sha256
        (base32 "12h9x1bfxispjz5ybwmz7vyf6jaj8wmdpd2crrx0vlivwx11ryxa"))))
    (properties `((upstream-name . "ADLP")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/agi-lab/ADLP")
    (synopsis
     "Accident and Development Period Adjusted Linear Pools for Actuarial Stochastic Reserving")
    (description
     "Loss reserving generally focuses on identifying a single model that can generate
superior predictive performance.  However, different loss reserving models
specialise in capturing different aspects of loss data.  This is recognised in
practice in the sense that results from different models are often considered,
and sometimes combined.  For instance, actuaries may take a weighted average of
the prediction outcomes from various loss reserving models, often based on
subjective assessments.  This package allows for the use of a systematic
framework to objectively combine (i.e.  ensemble) multiple stochastic loss
reserving models such that the strengths offered by different models can be
utilised effectively.  Our framework is developed in Avanzi et al. (2023).
Firstly, our criteria model combination considers the full distributional
properties of the ensemble and not just the central estimate - which is of
particular importance in the reserving context.  Secondly, our framework is that
it is tailored for the features inherent to reserving data.  These include, for
instance, accident, development, calendar, and claim maturity effects.
Crucially, the relative importance and scarcity of data across accident periods
renders the problem distinct from the traditional ensemble techniques in
statistical learning.  Our framework is illustrated with a complex synthetic
dataset.  In the results, the optimised ensemble outperforms both (i)
traditional model selection strategies, and (ii) an equally weighted ensemble.
In particular, the improvement occurs not only with central estimates but also
relevant quantiles, such as the 75th percentile of reserves (typically of
interest to both insurers and regulators).  Reference: Avanzi B, Li Y, Wong B,
Xian A (2023) \"Ensemble distributional forecasting for insurance loss reserving\"
<doi:10.48550/@code{arXiv.2206.08541>}.")
    (license license:gpl3)))

(define-public r-adlift
  (package
    (name "r-adlift")
    (version "1.4-5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adlift" version))
       (sha256
        (base32 "0kf1akx5c4c7mdy9ysfdik2xi810jcysw9ynmvxlgw2zykqxvqdk"))))
    (properties `((upstream-name . "adlift")))
    (build-system r-build-system)
    (propagated-inputs (list r-ebayesthresh))
    (home-page "https://cran.r-project.org/package=adlift")
    (synopsis "An Adaptive Lifting Scheme Algorithm")
    (description
     "Adaptive wavelet lifting transforms for signal denoising using optimal local
neighbourhood regression, from Nunes et al. (2006)
<doi:10.1007/s11222-006-6560-y>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-adklakedata
  (package
    (name "r-adklakedata")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adklakedata" version))
       (sha256
        (base32 "1lzj3ib4bgfkq5lq12n47pwc52h7k35xbbwj6brwsgx1gd4fx3x6"))))
    (properties `((upstream-name . "adklakedata")))
    (build-system r-build-system)
    (propagated-inputs (list r-rappdirs r-httr))
    (home-page "https://cran.r-project.org/package=adklakedata")
    (synopsis "Adirondack Long-Term Lake Data")
    (description
     "Package for the access and distribution of Long-term lake datasets from lakes in
the Adirondack Park, northern New York state.  Includes a wide variety of
physical, chemical, and biological parameters from 28 lakes.  Data are from
multiple collection organizations and have been harmonized in both time and
space for ease of reuse.")
    (license license:expat)))

(define-public r-adjustedcurves
  (package
    (name "r-adjustedcurves")
    (version "0.11.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adjustedCurves" version))
       (sha256
        (base32 "11bc2hrxr65i1rk2zv7r7daqm7m5v9xhhgk1fwr0jbs6c4dk2niw"))))
    (properties `((upstream-name . "adjustedCurves")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-rlang
                             r-r-utils
                             r-foreach
                             r-dplyr
                             r-dorng
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RobinDenz1/adjustedCurves")
    (synopsis
     "Confounder-Adjusted Survival Curves and Cumulative Incidence Functions")
    (description
     "Estimate and plot confounder-adjusted survival curves using either Direct
Adjustment', Direct Adjustment with Pseudo-Values', various forms of Inverse
Probability of Treatment Weighting', two forms of Augmented Inverse Probability
of Treatment Weighting', Empirical Likelihood Estimation or Targeted Maximum
Likelihood Estimation'.  Also includes a significance test for the difference
between two adjusted survival curves and the calculation of adjusted restricted
mean survival times.  Additionally enables the user to estimate and plot
cause-specific confounder-adjusted cumulative incidence functions in the
competing risks setting using the same methods (with some exceptions).  For
details, see Denz et.  al (2023) <doi:10.1002/sim.9681>.")
    (license license:gpl3+)))

(define-public r-adjustedcranlogs
  (package
    (name "r-adjustedcranlogs")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adjustedcranlogs" version))
       (sha256
        (base32 "08apfvpqvnnalx230p4qf5ckrwm1sgzras4zfrysgym5d4map9ci"))))
    (properties `((upstream-name . "adjustedcranlogs")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-rvest r-lubridate r-dplyr r-cranlogs))
    (home-page "https://github.com/tylermorganwall/adjustedcranlogs")
    (synopsis
     "Remove Automated and Repeated Downloads from 'RStudio' 'CRAN' Download Logs")
    (description
     "Adjusts output of cranlogs package to account for CRAN'-wide daily automated
downloads and re-downloads caused by package updates.")
    (license license:expat)))

(define-public r-adjsurvci
  (package
    (name "r-adjsurvci")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adjSURVCI" version))
       (sha256
        (base32 "0nv6m7ds57d0h44d745s0424ssrgn39ihd294dgrzrpmh8gxhq95"))))
    (properties `((upstream-name . "adjSURVCI")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=adjSURVCI")
    (synopsis
     "Parameter and Adjusted Probability Estimation for Right-Censored Data")
    (description
     "This package provides functions in this package fit a stratified Cox
proportional hazards and a proportional subdistribution hazards model by
extending Zhang et al., (2007) <doi: 10.1016/j.cmpb.2007.07.010> and Zhang et
al., (2011) <doi: 10.1016/j.cmpb.2010.07.005> respectively to clustered
right-censored data.  The functions also provide the estimates of the cumulative
baseline hazard along with their standard errors.  Furthermore, the adjusted
survival and cumulative incidence probabilities are also provided along with
their standard errors.  Finally, the estimate of cumulative incidence and
survival probabilities given a vector of covariates along with their standard
errors are also provided.")
    (license license:gpl2+)))

(define-public r-adjroc
  (package
    (name "r-adjroc")
    (version "0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adjROC" version))
       (sha256
        (base32 "0bf7vvhllpl8irqw1ahfhbhqq67v6jxblapv91ddkgpk2dl0sp03"))))
    (properties `((upstream-name . "adjROC")))
    (build-system r-build-system)
    (propagated-inputs (list r-yardstick r-rocit r-ggplot2 r-boot))
    (home-page "https://github.com/haghish/adjROC")
    (synopsis
     "Computing Sensitivity at a Fix Value of Specificity and Vice Versa as Well as Bootstrap Metrics for ROC Curves")
    (description
     "For a binary classification the adjusted sensitivity and specificity are
measured for a given fixed threshold.  If the threshold for either sensitivity
or specificity is not given, the crossing point between the sensitivity and
specificity curves are returned.  For bootstrap procedures, mean and CI
bootstrap values of sensitivity, specificity, crossing point between specificity
and specificity as well as AUC and AUCPR can be evaluated.")
    (license license:expat)))

(define-public r-adjclust
  (package
    (name "r-adjclust")
    (version "0.6.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adjclust" version))
       (sha256
        (base32 "1iq0pfw0kdi792iigpj4vq8phbcs9bid09bdvpxwwxcq65djni41"))))
    (properties `((upstream-name . "adjclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparsematrixstats
                             r-rlang
                             r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-ggplot2
                             r-dendextend
                             r-capushe))
    (native-inputs (list r-knitr))
    (home-page "https://pneuvial.github.io/adjclust/")
    (synopsis
     "Adjacency-Constrained Clustering of a Block-Diagonal Similarity Matrix")
    (description
     "This package implements a constrained version of hierarchical agglomerative
clustering, in which each observation is associated to a position, and only
adjacent clusters can be merged.  Typical application fields in bioinformatics
include Genome-Wide Association Studies or Hi-C data analysis, where the
similarity between items is a decreasing function of their genomic distance.
Taking advantage of this feature, the implemented algorithm is time and memory
efficient.  This algorithm is described in Ambroise et al (2019)
<doi:10.1186/s13015-019-0157-4>.")
    (license license:gpl3)))

(define-public r-adiv
  (package
    (name "r-adiv")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adiv" version))
       (sha256
        (base32 "0wq54nyjpcqxlvhv98yxxqv1vvnmgyzg3qzhw37r18l6xwvz5pk4"))))
    (properties `((upstream-name . "adiv")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl
                             r-phytools
                             r-phylobase
                             r-lpsolve
                             r-cluster
                             r-ape
                             r-adegraphics
                             r-ade4))
    (home-page "https://cran.r-project.org/package=adiv")
    (synopsis "Analysis of Diversity")
    (description
     "Functions, data sets and examples for the calculation of various indices of
biodiversity including species, functional and phylogenetic diversity.  Part of
the indices are expressed in terms of equivalent numbers of species.  The
package also provides ways to partition biodiversity across spatial or temporal
scales (alpha, beta, gamma diversities).  In addition to the quantification of
biodiversity, ordination approaches are available which rely on diversity
indices and allow the detailed identification of species, functional or
phylogenetic differences between communities.")
    (license license:gpl2+)))

(define-public r-adismf
  (package
    (name "r-adismf")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AdIsMF" version))
       (sha256
        (base32 "1ddwnn6jmj0sm1b9mxdaa88rngn4vfw59malqqg5whq0hnl4mhwx"))))
    (properties `((upstream-name . "AdIsMF")))
    (build-system r-build-system)
    (propagated-inputs (list r-nls2 r-ggplot2 r-aiccmodavg))
    (home-page "https://cran.r-project.org/package=AdIsMF")
    (synopsis "Adsorption Isotherm Model Fitting")
    (description
     "The Langmuir and Freundlich adsorption isotherms are pivotal in characterizing
adsorption processes, essential across various scientific disciplines.  Proper
interpretation of adsorption isotherms involves robust fitting of data to the
models, accurate estimation of parameters, and efficiency evaluation of the
models, both in linear and non-linear forms.  For researchers and practitioners
in the fields of chemistry, environmental science, soil science, and
engineering, a comprehensive package that satisfies all these requirements would
be ideal for accurate and efficient analysis of adsorption data, precise model
selection and validation for rigorous scientific inquiry and real-world
applications.  Details can be found in Langmuir (1918) <doi:10.1021/ja02242a004>
and Giles (1973) <doi:10.1111/j.1478-4408.1973.tb03158.x>.")
    (license license:gpl3)))

(define-public r-adhererviz
  (package
    (name "r-adhererviz")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AdhereRViz" version))
       (sha256
        (base32 "1jc5mfdydw9s515zi7lsmns79919vrdhh6lvh9z2bq0lrn9g1yci"))))
    (properties `((upstream-name . "AdhereRViz")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridislite
                             r-v8
                             r-shinywidgets
                             r-shinyjs
                             r-shiny
                             r-rsqlite
                             r-rmariadb
                             r-manipulate
                             r-knitr
                             r-highlight
                             r-dbi
                             r-data-table
                             r-colourpicker
                             r-clipr
                             r-adherer))
    (native-inputs (list r-r-rsp r-knitr))
    (home-page "https://github.com/ddediu/AdhereR")
    (synopsis "Adherence to Medications")
    (description
     "Interactive graphical user interface (GUI) for the package @code{AdhereR}',
allowing the user to access different data sources, to explore the patterns of
medication use therein, and the computation of various measures of adherence.
It is implemented using Shiny and HTML/CSS/@code{JavaScript}.")
    (license license:gpl2+)))

(define-public r-adherer
  (package
    (name "r-adherer")
    (version "0.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AdhereR" version))
       (sha256
        (base32 "0b98yz2msg30ch3n85yzi42rlnyj5ggkz1fsysh95gd5qk4c8vg2"))))
    (properties `((upstream-name . "AdhereR")))
    (build-system r-build-system)
    (propagated-inputs (list r-webp
                             r-rsvg
                             r-png
                             r-lubridate
                             r-jpeg
                             r-data-table))
    (native-inputs (list r-r-rsp r-knitr))
    (home-page "https://github.com/ddediu/AdhereR")
    (synopsis "Adherence to Medications")
    (description
     "Computation of adherence to medications from Electronic Health care Data and
visualization of individual medication histories and adherence patterns.  The
package implements a set of S3 classes and functions consistent with current
adherence guidelines and definitions.  It allows the computation of different
measures of adherence (as defined in the literature, but also several original
ones), their publication-quality plotting, the estimation of event duration and
time to initiation, the interactive exploration of patient medication history
and the real-time estimation of adherence given various parameter settings.  It
scales from very small datasets stored in flat CSV files to very large databases
and from single-thread processing on mid-range consumer laptops to parallel
processing on large heterogeneous computing clusters.  It exposes a standardized
interface allowing it to be used from other programming languages and platforms,
such as Python.")
    (license license:gpl2+)))

(define-public r-adherencerx
  (package
    (name "r-adherencerx")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adheRenceRX" version))
       (sha256
        (base32 "19kimj88dmcc8mq3s4l7pph9jz8p57gbjyn0pn5zkrcjdrwncslm"))))
    (properties `((upstream-name . "adheRenceRX")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-rcpp
                             r-purrr
                             r-lubridate
                             r-dplyr
                             r-anytime))
    (home-page "https://github.com/btbeal/adheRenceRX")
    (synopsis "Assess Medication Adherence from Pharmaceutical Claims Data")
    (description
     "This package provides a (mildly) opinionated set of functions to help assess
medication adherence for researchers working with medication claims data.
Medication adherence analyses have several complex steps that are often
convoluted and can be time-intensive.  The focus is to create a set of functions
using \"tidy principles\" geared towards transparency, speed, and flexibility
while working with adherence metrics.  All functions perform exactly one task
with an intuitive name so that a researcher can handle details (often achieved
with vectorized solutions) while we handle non-vectorized tasks common to most
adherence calculations such as adjusting fill dates and determining episodes of
care.  The methodologies in referenced in this package come from Canfield SL, et
al (2019) \"Navigating the Wild West of Medication Adherence Reporting in
Specialty Pharmacy\" <doi:10.18553/jmcp.2019.25.10.1073>.")
    (license license:gpl2+)))

(define-public r-adformr
  (package
    (name "r-adformr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adformR" version))
       (sha256
        (base32 "02krkpqsj53j4mprbw25bycbb2xlhcgnglcp0dl24zw44mfxy9n7"))))
    (properties `((upstream-name . "adformR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://windsor.ai/")
    (synopsis "Get Adform Ads Data via the 'Windsor.ai' API")
    (description
     "Collect your data on digital marketing campaigns from Adform Ads using the
Windsor.ai API <https://windsor.ai/api-fields/>.")
    (license license:gpl3)))

(define-public r-adfexplorer
  (package
    (name "r-adfexplorer")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adfExplorer" version))
       (sha256
        (base32 "0lpabd2gvcl0nja6q3d2hcxmam0gclnw21q1mxjf2idhqxcwscaj"))))
    (properties `((upstream-name . "adfExplorer")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pepijn-devries/adfExplorer")
    (synopsis "Import from and Export to Amiga Disk Files")
    (description
     "Amiga Disk Files (ADF) are virtual representations of 3.5 inch floppy disks for
the Commodore Amiga.  Most disk drives from other systems (including modern
drives) are not able to read these disks.  To be able to emulate this system,
the ADF format was created.  This package enables you to read ADF files and
import and export files from and to such virtual DOS-formatted disks.")
    (license license:gpl3+)))

(define-public r-adestr
  (package
    (name "r-adestr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adestr" version))
       (sha256
        (base32 "1inzp6ar5mg08cq2mmh7f0m87yvmf2cihv2zysn9v00x1g5zcb48"))))
    (properties `((upstream-name . "adestr")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-rdpack
                             r-progressr
                             r-latex2exp
                             r-ggpubr
                             r-ggplot2
                             r-future-apply
                             r-forcats
                             r-cubature
                             r-adoptr))
    (native-inputs (list r-knitr))
    (home-page "https://jan-imbi.github.io/adestr/")
    (synopsis "Estimation in Optimal Adaptive Two-Stage Designs")
    (description
     "This package provides methods to evaluate the performance characteristics of
various point and interval estimators for optimal adaptive two-stage designs as
described in Meis et al. (2024) <doi:10.1002/sim.10020>.  Specifically, this
package is written to work with trial designs created by the adoptr package
(Kunzmann et al. (2021) <doi:10.18637/jss.v098.i09>; Pilz et al. (2021)
<doi:10.1002/sim.8953>)).  Apart from the a priori evaluation of performance
characteristics, this package also allows for the evaluation of the implemented
estimators on real datasets, and it implements methods to calculate p-values.")
    (license license:gpl2+)))

(define-public r-adespatial
  (package
    (name "r-adespatial")
    (version "0.3-24")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adespatial" version))
       (sha256
        (base32 "0lrjm3hb6jn30w7kg1lcx1jk66cciyxq7gayhl2jvp6xipg10b8y"))))
    (properties `((upstream-name . "adespatial")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-spdep
                             r-sp
                             r-shiny
                             r-mass
                             r-lattice
                             r-adephylo
                             r-adegraphics
                             r-ade4))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/adeverse/adespatial")
    (synopsis "Multivariate Multiscale Spatial Analysis")
    (description
     "This package provides tools for the multiscale spatial analysis of multivariate
data.  Several methods are based on the use of a spatial weighting matrix and
its eigenvector decomposition (Moran's Eigenvectors Maps, MEM).  Several
approaches are described in the review Dray et al (2012)
<doi:10.1890/11-1183.1>.")
    (license license:gpl2+)))

(define-public r-ader
  (package
    (name "r-ader")
    (version "1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ADER" version))
       (sha256
        (base32 "1zby06fw171inlri2k0k4n5lggsr9zxzad2pv08882md1klqwkpw"))))
    (properties `((upstream-name . "ADER")))
    (build-system r-build-system)
    (home-page "https://www.paraninfo.es/catalogo/9788484768333/")
    (synopsis "Data Analysis in Ecology")
    (description
     "Data sets used in Cayuela and De la Cruz (2022, ISBN:978-84-8476-833-3).")
    (license license:gpl2+)))

(define-public r-adequacymodel
  (package
    (name "r-adequacymodel")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AdequacyModel" version))
       (sha256
        (base32 "0amp6ic1wylk24sp9wpx3ci38njj7b9qjqfp89j39hkl6kc1q7sq"))))
    (properties `((upstream-name . "AdequacyModel")))
    (build-system r-build-system)
    (home-page "http://www.r-project.org")
    (synopsis
     "Adequacy of Probabilistic Models and General Purpose Optimization")
    (description
     "The main application concerns to a new robust optimization package with two
major contributions.  The first contribution refers to the assessment of the
adequacy of probabilistic models through a combination of several statistics,
which measure the relative quality of statistical models for a given data set.
The second one provides a general purpose optimization method based on
meta-heuristics functions for maximizing or minimizing an arbitrary objective
function.")
    (license license:gpl2+)))

(define-public r-adeptdata
  (package
    (name "r-adeptdata")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adeptdata" version))
       (sha256
        (base32 "0wzavbwc1slyr3wh5jkapghpa748rc86pbw5b4gcxki73r08r7j2"))))
    (properties `((upstream-name . "adeptdata")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=adeptdata")
    (synopsis "Accelerometry Data Sets")
    (description
     "Created to host raw accelerometry data sets and their derivatives which are used
in the corresponding adept package.")
    (license license:gpl3)))

(define-public r-adept
  (package
    (name "r-adept")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adept" version))
       (sha256
        (base32 "1dpfmfnqzci6p7wqwpp8y0cisx11r8kdsqjm85skb512n35m0i3a"))))
    (properties `((upstream-name . "adept")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma r-magrittr r-dvmisc r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/martakarass/adept")
    (synopsis "Adaptive Empirical Pattern Transformation")
    (description
     "Designed for optimal use in performing fast, accurate walking strides
segmentation from high-density data collected from a wearable accelerometer worn
during continuous walking activity.")
    (license license:gpl3)))

(define-public r-adepro
  (package
    (name "r-adepro")
    (version "4.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adepro" version))
       (sha256
        (base32 "06zj8vq7py41g0bjpnd4fczwxcr4k1lb1cxjxfc92fhj0wk51k36"))))
    (properties `((upstream-name . "adepro")))
    (build-system r-build-system)
    (propagated-inputs (list r-v8
                             r-tidyr
                             r-shinywidgets
                             r-shinyjs
                             r-shinybs
                             r-shiny
                             r-shape
                             r-seriation
                             r-rlang
                             r-readr
                             r-mass
                             r-here
                             r-haven
                             r-forcats
                             r-dplyr
                             r-cairo
                             r-audio))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Bayer-Group/BIC-AdEPro")
    (synopsis
     "'shiny' Application for the (Audio-)Visualization of Adverse Event Profiles")
    (description
     "This package contains a shiny application called @code{AdEPro} (Animation of
Adverse Event Profiles) which (audio-)visualizes adverse events occurring in
clinical trials.  As this data is usually considered sensitive, this tool is
provided as a stand-alone application that can be launched from any local
machine on which the data is stored.")
    (license license:gpl3)))

(define-public r-adephylo
  (package
    (name "r-adephylo")
    (version "1.1-16")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adephylo" version))
       (sha256
        (base32 "0n6f2v287gkbdrfxq50b1lbya4znqg50lrah0v540vmydgi5vkmm"))))
    (properties `((upstream-name . "adephylo")))
    (build-system r-build-system)
    (propagated-inputs (list r-phylobase r-ape r-adegenet r-ade4))
    (home-page "https://cran.r-project.org/package=adephylo")
    (synopsis "Exploratory Analyses for the Phylogenetic Comparative Method")
    (description
     "Multivariate tools to analyze comparative data, i.e.  a phylogeny and some
traits measured for each taxa.  The package contains functions to represent
comparative data, compute phylogenetic proximities, perform multivariate
analysis with phylogenetic constraints and test for the presence of phylogenetic
autocorrelation.  The package is described in Jombart et al (2010)
<doi:10.1093/bioinformatics/btq292>.")
    (license license:gpl2+)))

(define-public r-adelie
  (package
    (name "r-adelie")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adelie" version))
       (sha256
        (base32 "10sjpdp990jhzypkyywywl3hqrwnp0srdn2zgijm5g80w1420s52"))))
    (properties `((upstream-name . "adelie")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rcppeigen r-rcpp r-r2r r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/JamesYang007/adelie-r")
    (synopsis
     "Group Lasso and Elastic Net Solver for Generalized Linear Models")
    (description
     "Extremely efficient procedures for fitting the entire group lasso and group
elastic net regularization path for GLMs, multinomial, the Cox model and
multi-task Gaussian models.  Similar to the R package glmnet in scope of models,
and in computational speed.  This package provides R bindings to the C++ code
underlying the corresponding Python package adelie'.  These bindings offer a
general purpose group elastic net solver, a wide range of matrix classes that
can exploit special structure to allow large-scale inputs, and an assortment of
generalized linear model classes for fitting various types of data.  The package
includes The package is an implementation of Yang, J. and Hastie, T. (2024)
<doi:10.48550/@code{arXiv.2405.08631>}.")
    (license license:expat)))

(define-public r-adehabitatma
  (package
    (name "r-adehabitatma")
    (version "0.3.17")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adehabitatMA" version))
       (sha256
        (base32 "10ynrw4w00ai303i39ciip810h6wj0iqmwk0qrb1p1g6jc5jvjmb"))))
    (properties `((upstream-name . "adehabitatMA")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp))
    (native-inputs (list))
    (home-page "https://cran.r-project.org/package=adehabitatMA")
    (synopsis "Tools to Deal with Raster Maps")
    (description
     "This package provides a collection of tools to deal with raster maps.")
    (license license:gpl2+)))

(define-public r-adehabitatlt
  (package
    (name "r-adehabitatlt")
    (version "0.3.28")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adehabitatLT" version))
       (sha256
        (base32 "1hixi29v6p2479hy5y907mfz3ij01dkiyxd62mx348pnh5nkn8bc"))))
    (properties `((upstream-name . "adehabitatLT")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-circstats r-adehabitatma r-ade4))
    (native-inputs (list))
    (home-page "https://cran.r-project.org/package=adehabitatLT")
    (synopsis "Analysis of Animal Movements")
    (description
     "This package provides a collection of tools for the analysis of animal
movements.")
    (license license:gpl2+)))

(define-public r-adehabitaths
  (package
    (name "r-adehabitaths")
    (version "0.3.18")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adehabitatHS" version))
       (sha256
        (base32 "06k2ch6khn4g068n9fchbqkr3yr15jqax1zksdqaz566513ky6n8"))))
    (properties `((upstream-name . "adehabitatHS")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-adehabitatma r-adehabitathr r-ade4))
    (native-inputs (list))
    (home-page "https://cran.r-project.org/package=adehabitatHS")
    (synopsis "Analysis of Habitat Selection by Animals")
    (description
     "This package provides a collection of tools for the analysis of habitat
selection.")
    (license license:gpl2+)))

(define-public r-adehabitathr
  (package
    (name "r-adehabitathr")
    (version "0.4.22")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adehabitatHR" version))
       (sha256
        (base32 "09nllgkbpkcv9p6314216lal2937ffhiaahrx8319wkk4f1d9wvw"))))
    (properties `((upstream-name . "adehabitatHR")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-adehabitatma r-adehabitatlt r-ade4))
    (native-inputs (list))
    (home-page "https://cran.r-project.org/package=adehabitatHR")
    (synopsis "Home Range Estimation")
    (description
     "This package provides a collection of tools for the estimation of animals home
range.")
    (license license:gpl2+)))

(define-public r-adegraphics
  (package
    (name "r-adegraphics")
    (version "1.0-21")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adegraphics" version))
       (sha256
        (base32 "1a7bz9j06sc09kvynzss71dxffp40vsl35azj0gzs81jl2rr4ap0"))))
    (properties `((upstream-name . "adegraphics")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp
                             r-rcolorbrewer
                             r-latticeextra
                             r-lattice
                             r-kernsmooth
                             r-ade4))
    (native-inputs (list r-knitr))
    (home-page "http://pbil.univ-lyon1.fr/ADE-4/")
    (synopsis
     "An S4 Lattice-Based Package for the Representation of Multivariate Data")
    (description
     "Graphical functionalities for the representation of multivariate data.  It is a
complete re-implementation of the functions available in the ade4 package.")
    (license license:gpl2+)))

(define-public r-adea
  (package
    (name "r-adea")
    (version "1.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adea" version))
       (sha256
        (base32 "0wjklmd1r5vhp32syn9dpn5j05y9nfb0c8cnrdc2xcdsi8dzdkap"))))
    (properties `((upstream-name . "adea")))
    (build-system r-build-system)
    (propagated-inputs (list r-slam
                             r-roi-plugin-symphony
                             r-roi-plugin-lpsolve
                             r-roi-plugin-glpk
                             r-roi
                             r-rmarkdown
                             r-parallelly
                             r-lpsolveapi
                             r-knitr
                             r-combinat))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=adea")
    (synopsis "Alternate DEA Package")
    (description
     "The meaning of adea is \"alternate DEA\".  This package is devoted to provide the
alternative method of DEA described in the paper entitled \"Stepwise Selection of
Variables in DEA Using Contribution Load\", by F. Fernandez-Palacin, M. A.
Lopez-Sanchez and M. Munoz-Marquez.  Pesquisa Operacional 38 (1), pg.  1-24,
2018. <doi:10.1590/0101-7438.2018.038.01.0031>.  A full functional on-line and
interactive version is available at <https://knuth.uca.es/shiny/DEA/>.")
    (license license:gpl3+)))

(define-public r-ade4tkgui
  (package
    (name "r-ade4tkgui")
    (version "0.3-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ade4TkGUI" version))
       (sha256
        (base32 "1y0f62n8iv002ayd1nyl3bmszw558niwnfzjpvk0a7cbvfdyvwcg"))))
    (properties `((upstream-name . "ade4TkGUI")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice r-adegraphics r-ade4))
    (home-page "http://pbil.univ-lyon1.fr/ade4TkGUI/")
    (synopsis "'ade4' Tcl/Tk Graphical User Interface")
    (description
     "This package provides a Tcl/Tk GUI for some basic functions in the ade4 package.")
    (license license:gpl2+)))

(define-public r-addt
  (package
    (name "r-addt")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ADDT" version))
       (sha256
        (base32 "044bb1jw2m8vwk5q8l7rlz4kqphjvy8i9d59rjg0k5q5l9vczfrp"))))
    (properties `((upstream-name . "ADDT")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme r-matrix r-coneproj))
    (home-page "https://cran.r-project.org/package=ADDT")
    (synopsis "Analysis of Accelerated Destructive Degradation Test Data")
    (description
     "Accelerated destructive degradation tests (ADDT) are often used to collect
necessary data for assessing the long-term properties of polymeric materials.
Based on the collected data, a thermal index (TI) is estimated.  The TI can be
useful for material rating and comparison.  This package implements the
traditional method based on the least-squares method, the parametric method
based on maximum likelihood estimation, and the semiparametric method based on
spline methods, and the corresponding methods for estimating TI for polymeric
materials.  The traditional approach is a two-step approach that is currently
used in industrial standards, while the parametric method is widely used in the
statistical literature.  The semiparametric method is newly developed.  Both the
parametric and semiparametric approaches allow one to do statistical inference
such as quantifying uncertainties in estimation, hypothesis testing, and
predictions.  Publicly available datasets are provided illustrations.  More
details can be found in Jin et al. (2017).")
    (license license:gpl2)))

(define-public r-addscales
  (package
    (name "r-addscales")
    (version "1.0-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "addScales" version))
       (sha256
        (base32 "1bw4ljyyswdhqyir9i6lj0mg9lm6ry4zpqp2h6w2bpk37rvs1w38"))))
    (properties `((upstream-name . "addScales")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=addScales")
    (synopsis
     "Adds Labeled Center Line and Scale Lines/Regions to Trellis Plots")
    (description
     "Modifies trellis objects by adding horizontal and/or vertical reference lines or
shaded regions that provide visual scaling information.  This is mostly useful
in multi-panel plots that use the relation = free option in their scales
argument list.")
    (license license:expat)))

(define-public r-addreg
  (package
    (name "r-addreg")
    (version "3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "addreg" version))
       (sha256
        (base32 "13bwmgxylwi02g60j1rr51cr5jvvkl2nvf2lnnhnq46fhvs2ma7s"))))
    (properties `((upstream-name . "addreg")))
    (build-system r-build-system)
    (propagated-inputs (list r-turboem r-glm2 r-combinat))
    (home-page "https://github.com/mdonoghoe/addreg")
    (synopsis "Additive Regression for Discrete Data")
    (description
     "This package provides methods for fitting identity-link GLMs and GAMs to
discrete data, using EM-type algorithms with more stable convergence properties
than standard methods.")
    (license license:gpl2+)))

(define-public r-additivedea
  (package
    (name "r-additivedea")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "additiveDEA" version))
       (sha256
        (base32 "15nxpdybsda6yhjk23bpafr8v1zdx8332pcxf26k795q3ypjpiy2"))))
    (properties `((upstream-name . "additiveDEA")))
    (build-system r-build-system)
    (propagated-inputs (list r-lpsolveapi r-benchmarking))
    (home-page "https://www.r-project.org")
    (synopsis "Additive Data Envelopment Analysis Models")
    (description
     "This package provides functions for calculating efficiency with two types of
additive Data Envelopment Analysis models: (i) Generalized Efficiency Measures:
unweighted additive model (Cooper et al., 2007 <doi:10.1007/978-0-387-45283-8>),
Range Adjusted Measure (Cooper et al., 1999, <doi:10.1023/A:1007701304281>),
Bounded Adjusted Measure (Cooper et al., 2011 <doi:10.1007/s11123-010-0190-2>),
Measure of Inefficiency Proportions (Cooper et al., 1999
<doi:10.1023/A:1007701304281>), and the Lovell-Pastor Measure (Lovell and
Pastor, 1995 <doi:10.1016/0167-6377(95)00044-5>); and (ii) the Slacks-Based
Measure (Tone, 2001 <doi:10.1016/S0377-2217(99)00407-5>).  The functions provide
several options: (i) constant and variable returns to scale; (ii) fixed
(non-controllable) inputs and/or outputs; (iii) bounding the slacks so that
unrealistically large slack values are avoided; and (iv) calculating the
efficiency of specific Decision-Making Units (DMUs), rather than of the whole
sample.  Package @code{additiveDEA} also provides a function for reducing
computation time when datasets are large.")
    (license license:gpl2)))

(define-public r-additive
  (package
    (name "r-additive")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "additive" version))
       (sha256
        (base32 "1w81vapv5xpxl8nl2gjr01z0jkanapn5152b1xxvil1n8byls5vq"))))
    (properties `((upstream-name . "additive")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rlang
                             r-purrr
                             r-parsnip
                             r-mgcv
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://hsbadr.github.io/additive/")
    (synopsis "Bindings for Additive TidyModels")
    (description
     "Fit Generalized Additive Models (GAM) using mgcv with parsnip'/'tidymodels via
additive <doi:10.5281/zenodo.4784245>.  tidymodels is a collection of packages
for machine learning; see Kuhn and Wickham (2020) <https://www.tidymodels.org>).
 The technical details of mgcv are described in Wood (2017)
<doi:10.1201/9781315370279>.")
    (license license:expat)))

(define-public r-addinsoutline
  (package
    (name "r-addinsoutline")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "addinsOutline" version))
       (sha256
        (base32 "125qfqbpv5xflw8qlyh8m3iyd6biyp3arls3z7y8bqkbghifl730"))))
    (properties `((upstream-name . "addinsOutline")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-tibble
                             r-stringr
                             r-shinyfiles
                             r-shiny
                             r-rstudioapi
                             r-rmarkdown
                             r-miniui
                             r-fs
                             r-dt
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/calote/addinsOutline")
    (synopsis
     "'RStudio' Addins for Show Outline of a R Markdown/'LaTeX' Project")
    (description
     "RStudio allows to show and navigate for the outline of a R Markdown file, but
not for R Markdown projects with multiple files.  For this reason, I have
developed several RStudio addins capable of show project outline.  Each addin is
specialized in showing projects of different types: R Markdown project, bookdown
package project and @code{LaTeX} project.  There is a configuration file that
allows you to customize additional searches.")
    (license license:gpl3)))

(define-public r-addinslist
  (package
    (name "r-addinslist")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "addinslist" version))
       (sha256
        (base32 "0gis7485m7gz3xz5wfxxm3136cg2j9i6f6zq8gbv206w261y1nfb"))))
    (properties `((upstream-name . "addinslist")))
    (build-system r-build-system)
    (arguments
     (list
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
    (propagated-inputs (list r-xml2
                             r-shinyjs
                             r-shiny
                             r-rvest
                             r-rmarkdown
                             r-remotes
                             r-rappdirs
                             r-miniui
                             r-dt
                             r-curl))
    (native-inputs (list esbuild))
    (home-page "https://github.com/daattali/addinslist")
    (synopsis "Discover and Install Useful RStudio Addins")
    (description
     "Browse through a continuously updated list of existing RStudio addins and
install/uninstall their corresponding packages.")
    (license license:expat)))

(define-public r-addinsjoaomelo
  (package
    (name "r-addinsjoaomelo")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "addinsJoaoMelo" version))
       (sha256
        (base32 "1slx9vfcpb468asvgcj0vh7djc5rndzdpcp96qmnis77fx67xj5s"))))
    (properties `((upstream-name . "addinsJoaoMelo")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rstudioapi r-purrr r-dplyr))
    (home-page "https://cran.r-project.org/package=addinsJoaoMelo")
    (synopsis "Addins Made of Joao Melo")
    (description
     "Provide addins for RStudio'.  It currently contains 3 addins.  The first to add
a shortcut for the double pipe.  The second is to add a shortcut for the same
operator.  And the third to simplify the creation of vectors from texts pasted
from the computer transfer area.")
    (license license:cc0)))

(define-public r-addhazard
  (package
    (name "r-addhazard")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "addhazard" version))
       (sha256
        (base32 "0hk7br52wjmq605xgslv8lspr35aqpdgkiz2yljz31khy3y3vi8c"))))
    (properties `((upstream-name . "addhazard")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-rootsolve r-ahaz))
    (home-page "https://cran.r-project.org/package=addhazard")
    (synopsis "Fit Additive Hazards Models for Survival Analysis")
    (description
     "This package contains tools to fit the additive hazards model to data from a
cohort, random sampling, two-phase Bernoulli sampling and two-phase finite
population sampling, as well as calibration tool to incorporate phase I
auxiliary information into the two-phase data model fitting.  This package
provides regression parameter estimates and their model-based and robust
standard errors.  It also offers tools to make prediction of individual specific
hazards.")
    (license license:gpl2)))

(define-public r-addhaz
  (package
    (name "r-addhaz")
    (version "0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "addhaz" version))
       (sha256
        (base32 "1709jq9rp5lhqk0qpk8zkdwzhcv1bcach8mm7yiz7hzcc1mgxb12"))))
    (properties `((upstream-name . "addhaz")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-mass r-boot))
    (home-page "https://cran.r-project.org/package=addhaz")
    (synopsis "Binomial and Multinomial Additive Hazard Models")
    (description
     "This package provides functions to fit the binomial and multinomial additive
hazard models and to estimate the contribution of diseases/conditions to the
disability prevalence, as proposed by Nusselder and Looman (2004) and extended
by Yokota et al (2017).")
    (license license:gpl3)))

(define-public r-adct
  (package
    (name "r-adct")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ADCT" version))
       (sha256
        (base32 "1glf83ydx4v3ld8c4gb9h3jk6srd054bis5l8k57p1ba4fnqnnpp"))))
    (properties `((upstream-name . "ADCT")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://cran.r-project.org/package=ADCT")
    (synopsis "Adaptive Design in Clinical Trials")
    (description
     "Existing adaptive design methods in clinical trials.  The package includes
power, stopping boundaries (sample size) calculation functions for two-group
group sequential designs, adaptive design with coprimary endpoints,
biomarker-informed adaptive design, etc.")
    (license license:gpl2+)))

(define-public r-adc
  (package
    (name "r-adc")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adc" version))
       (sha256
        (base32 "152j863rfrmjpaambxy6hc57zcpp0wlyd6kl7miryk3z0yvngcw9"))))
    (properties `((upstream-name . "adc")))
    (build-system r-build-system)
    (propagated-inputs (list r-runner))
    (home-page "https://github.com/TxWRI/adc")
    (synopsis "Calculate Antecedent Discharge Conditions")
    (description
     "Calculates some antecedent discharge conditions useful in water quality
modeling.  Includes methods for calculating flow anomalies, base flow, and
smooth discounted flows from daily flow measurements.  Antecedent discharge
algorithms are described and reviewed in Zhang and Ball (2017)
<doi:10.1016/j.jhydrol.2016.12.052>.")
    (license license:gpl3+)))

(define-public r-adbi
  (package
    (name "r-adbi")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adbi" version))
       (sha256
        (base32 "17w74ggng77yvpqn0vw1s1gylmchrv2dq6s19fl56dl6nqp6bfpa"))))
    (properties `((upstream-name . "adbi")))
    (build-system r-build-system)
    (propagated-inputs (list r-nanoarrow r-dbi r-adbcdrivermanager))
    (home-page "https://adbi.r-dbi.org")
    (synopsis "'DBI' Compliant Database Access Using 'ADBC'")
    (description
     "In order to make Arrow Database Connectivity ('ADBC
<https://arrow.apache.org/adbc/>) accessible from R, an interface compliant with
the DBI package is provided, using driver back-ends that are implemented in the
adbcdrivermanager framework.  This enables interacting with database systems
using the Arrow data format, thereby offering an efficient alternative to ODBC
for analytical applications.")
    (license license:lgpl2.1+)))

(define-public r-adbcsqlite
  (package
    (name "r-adbcsqlite")
    (version "0.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adbcsqlite" version))
       (sha256
        (base32 "1xda25z4dmli07bi6kfzda0zhb4nkma98n19206qmgvjbb6klf18"))))
    (properties `((upstream-name . "adbcsqlite")))
    (build-system r-build-system)
    (inputs (list sqlite))
    (propagated-inputs (list r-adbcdrivermanager))
    (home-page "https://github.com/apache/arrow-adbc")
    (synopsis "'Arrow' Database Connectivity ('ADBC') 'SQLite' Driver")
    (description
     "This package provides a developer-facing interface to the Arrow Database
Connectivity ('ADBC') SQLite driver for the purposes of building high-level
database interfaces for users.  ADBC <https://arrow.apache.org/adbc/> is an API
standard for database access libraries that uses Arrow for result sets and query
parameters.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-adbcpostgresql
  (package
    (name "r-adbcpostgresql")
    (version "0.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adbcpostgresql" version))
       (sha256
        (base32 "1lfvn7gcx5g84rqh400zbs7qlc39r2nz7nw7s1dij7yh9hdysdj0"))))
    (properties `((upstream-name . "adbcpostgresql")))
    (build-system r-build-system)
    (inputs (list zlib openssl))
    (propagated-inputs (list r-adbcdrivermanager))
    (native-inputs (list pkg-config))
    (home-page "https://github.com/apache/arrow-adbc")
    (synopsis "'Arrow' Database Connectivity ('ADBC') 'PostgreSQL' Driver")
    (description
     "This package provides a developer-facing interface to the Arrow Database
Connectivity ('ADBC') @code{PostgreSQL} driver for the purposes of building
high-level database interfaces for users.  ADBC <https://arrow.apache.org/adbc/>
is an API standard for database access libraries that uses Arrow for result sets
and query parameters.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-adbcdrivermanager
  (package
    (name "r-adbcdrivermanager")
    (version "0.14.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adbcdrivermanager" version))
       (sha256
        (base32 "1qhwx1ywqyr0arladcyh58xq69mgvqj35a4pcq0i0mf048xpsly3"))))
    (properties `((upstream-name . "adbcdrivermanager")))
    (build-system r-build-system)
    (propagated-inputs (list r-nanoarrow))
    (home-page "https://github.com/apache/arrow-adbc")
    (synopsis "'Arrow' Database Connectivity ('ADBC') Driver Manager")
    (description
     "This package provides a developer-facing interface to Arrow Database
Connectivity ('ADBC') for the purposes of driver development, driver testing,
and building high-level database interfaces for users.  ADBC
<https://arrow.apache.org/adbc/> is an API standard for database access
libraries that uses Arrow for result sets and query parameters.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-adass
  (package
    (name "r-adass")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adass" version))
       (sha256
        (base32 "1shp1yja5zqikl29j2xi4jlwsbkrlg593isnclhy7bwaqyn3qm14"))))
    (properties `((upstream-name . "adass")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparsem
                             r-rfast
                             r-plot3d
                             r-mvtnorm
                             r-matrixcalc
                             r-fda))
    (home-page "https://github.com/unina-sfere/adass")
    (synopsis
     "Adaptive Smoothing Spline (AdaSS) Estimator for the Function-on-Function Linear Regression")
    (description
     "This package implements the adaptive smoothing spline estimator for the
function-on-function linear regression model described in Centofanti et al.
(2023) <doi:10.1007/s00180-022-01223-6>.")
    (license license:gpl3+)))

(define-public r-adasampling
  (package
    (name "r-adasampling")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AdaSampling" version))
       (sha256
        (base32 "1c8dh8lxyb076317n4qk2g3qv5j4mc1dszbh3k1p2b0nxiprqk5i"))))
    (properties `((upstream-name . "AdaSampling")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-e1071 r-class r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/PengyiYang/AdaSampling/")
    (synopsis
     "Adaptive Sampling for Positive Unlabeled and Label Noise Learning")
    (description
     "This package implements the adaptive sampling procedure, a framework for both
positive unlabeled learning and learning with class label noise.  Yang, P.,
Ormerod, J., Liu, W., Ma, C., Zomaya, A., Yang, J. (2018)
<doi:10.1109/TCYB.2018.2816984>.")
    (license license:gpl3)))

(define-public r-adar
  (package
    (name "r-adar")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adaR" version))
       (sha256
        (base32 "0vd79id211n1w8hqr3jpncdf3x8rg80gkdwfg4618hkadzdf2a2h"))))
    (properties `((upstream-name . "adaR")))
    (build-system r-build-system)
    (propagated-inputs (list r-triebeard r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://gesistsa.github.io/adaR/")
    (synopsis "Fast 'WHATWG' Compliant URL Parser")
    (description
     "This package provides a wrapper for ada-url', a WHATWG compliant and fast URL
parser written in modern C++'.  Also contains auxiliary functions such as a
public suffix extractor.")
    (license license:expat)))

(define-public r-adapttest
  (package
    (name "r-adapttest")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adaptTest" version))
       (sha256
        (base32 "0wb21mac5h683qgjdic29kpncr22ri93iwq8w4b7hywaxkv0zj2p"))))
    (properties `((upstream-name . "adaptTest")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice))
    (home-page "https://cran.r-project.org/package=adaptTest")
    (synopsis "Adaptive Two-Stage Tests")
    (description
     "The functions defined in this program serve for implementing adaptive two-stage
tests.  Currently, four tests are included: Bauer and Koehne (1994), Lehmacher
and Wassmer (1999), Vandemeulebroecke (2006), and the horizontal conditional
error function.  User-defined tests can also be implemented.  Reference:
Vandemeulebroecke, An investigation of two-stage tests, Statistica Sinica 2006.")
    (license license:gpl2+)))

(define-public r-adaptsmofmri
  (package
    (name "r-adaptsmofmri")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adaptsmoFMRI" version))
       (sha256
        (base32 "00npcl2js9vj5r3l66cp5d2l807klia581pig1gsyjjq4rvmfa7v"))))
    (properties `((upstream-name . "adaptsmoFMRI")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatstat-geom
                             r-spatstat
                             r-mvtnorm
                             r-mcmcpack
                             r-matrix
                             r-coda))
    (home-page "https://cran.r-project.org/package=adaptsmoFMRI")
    (synopsis "Adaptive Smoothing of FMRI Data")
    (description
     "Adaptive smoothing functions for estimating the blood oxygenation level
dependent (BOLD) effect by using functional Magnetic Resonance Imaging
(@code{fMRI}) data, based on adaptive Gauss Markov random fields, for real as
well as simulated data.  The implemented models make use of efficient Markov
Chain Monte Carlo methods.  Implemented methods are based on the research
developed by A. Brezger, L. Fahrmeir, A. Hennerfeind (2007)
<https://www.jstor.org/stable/4626770>.")
    (license license:gpl2)))

(define-public r-adapts
  (package
    (name "r-adapts")
    (version "1.0.22")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ADAPTS" version))
       (sha256
        (base32 "0hsignjfq2kbsygpip0fkbncjil8lxryhlhavin09x4xb41kbsva"))))
    (properties `((upstream-name . "ADAPTS")))
    (build-system r-build-system)
    (propagated-inputs (list r-ranger
                             r-quantmod
                             r-preprocesscore
                             r-pheatmap
                             r-pcamethods
                             r-nnls
                             r-missforest
                             r-foreach
                             r-e1071
                             r-doparallel
                             r-comics))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=ADAPTS")
    (synopsis
     "Automated Deconvolution Augmentation of Profiles for Tissue Specific Cells")
    (description
     "This package provides tools to construct (or add to) cell-type signature
matrices using flow sorted or single cell samples and deconvolve bulk gene
expression data.  Useful for assessing the quality of single cell RNAseq
experiments, estimating the accuracy of signature matrices, and determining
cell-type spillover.  Please cite: Danziger SA et al. (2019) ADAPTS: Automated
Deconvolution Augmentation of Profiles for Tissue Specific cells
<doi:10.1371/journal.pone.0224693>.")
    (license license:expat)))

(define-public r-adaptr
  (package
    (name "r-adaptr")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adaptr" version))
       (sha256
        (base32 "0a0rrqhb1nyx5m0647ljnmy8ffc78swsx8jh8p8hzh0s45kxrg5y"))))
    (properties `((upstream-name . "adaptr")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://inceptdk.github.io/adaptr/")
    (synopsis "Adaptive Trial Simulator")
    (description
     "Package that simulates adaptive (multi-arm, multi-stage) clinical trials using
adaptive stopping, adaptive arm dropping, and/or adaptive randomisation.
Developed as part of the INCEPT (Intensive Care Platform Trial) project
(<https://incept.dk/>), primarily supported by a grant from Sygeforsikringen
\"danmark\" (<https://www.sygeforsikring.dk/>).")
    (license license:gpl3+)))

(define-public r-adaptmt
  (package
    (name "r-adaptmt")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adaptMT" version))
       (sha256
        (base32 "1yllz1zd4cryf5bj8b2lcrj6zl79yjkllyh9p02ikryy5qmg419b"))))
    (properties `((upstream-name . "adaptMT")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://arxiv.org/abs/1609.06035")
    (synopsis
     "Adaptive P-Value Thresholding for Multiple Hypothesis Testing with Side Information")
    (description
     "Implementation of adaptive p-value thresholding (@code{AdaPT}), including both a
framework that allows the user to specify any algorithm to learn local false
discovery rate and a pool of convenient functions that implement specific
algorithms.  See Lei, Lihua and Fithian, William (2016)
<@code{arXiv:1609.06035>}.")
    (license license:expat)))

(define-public r-adaptmcmc
  (package
    (name "r-adaptmcmc")
    (version "1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adaptMCMC" version))
       (sha256
        (base32 "1inw339n2rb1g2n9zkmv8gp43lifil3plv82x9sxrq468ihzng4f"))))
    (properties `((upstream-name . "adaptMCMC")))
    (build-system r-build-system)
    (propagated-inputs (list r-ramcmc r-matrix r-coda))
    (home-page "https://github.com/scheidan/adaptMCMC")
    (synopsis
     "Implementation of a Generic Adaptive Monte Carlo Markov Chain Sampler")
    (description
     "Enables sampling from arbitrary distributions if the log density is known up to
a constant; a common situation in the context of Bayesian inference.  The
implemented sampling algorithm was proposed by Vihola (2012)
<DOI:10.1007/s11222-011-9269-5> and achieves often a high efficiency by tuning
the proposal distributions to a user defined acceptance rate.")
    (license license:gpl2+)))

(define-public r-adaptivpt
  (package
    (name "r-adaptivpt")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adaptIVPT" version))
       (sha256
        (base32 "1gw0608452cbyfcsf3950vxg960k297qxhbxp6s11hz8f190bxmy"))))
    (properties `((upstream-name . "adaptIVPT")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl r-rcppprogress r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=adaptIVPT")
    (synopsis "Adaptive Bioequivalence Design for In-Vitro Permeation Tests")
    (description
     "This package contains functions carrying out adaptive procedures using mixed
scaling approach to establish bioequivalence for in-vitro permeation test (IVPT)
data.  Currently, the package provides procedures based on parallel replicate
design and balanced data, according to the U.S. Food and Drug Administration's
\"Draft Guidance on Acyclovir\"
<https://www.accessdata.fda.gov/drugsatfda_docs/psg/Acyclovir_topical%20cream_RLD%2021478_RV12-16.pdf>.
 Potvin et al. (2008) <doi:10.1002/pst.294> provides the basis for our adaptive
design (see Method B).  For a comprehensive overview of the method, refer to Lim
et al. (2023) <doi:10.1002/pst.2333>.  This package reflects the views of the
authors and should not be construed to represent the views or policies of the
U.S. Food and Drug Administration.")
    (license license:gpl3+)))

(define-public r-adaptivetau
  (package
    (name "r-adaptivetau")
    (version "2.3-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adaptivetau" version))
       (sha256
        (base32 "0krv2pw7gg0nch96h0ffy6wli1cjscfl424jy04q0zvvqfghkvqd"))))
    (properties `((upstream-name . "adaptivetau")))
    (build-system r-build-system)
    (home-page "https://github.com/plfjohnson/adaptivetau")
    (synopsis "Tau-Leaping Stochastic Simulation")
    (description
     "This package implements adaptive tau leaping to approximate the trajectory of a
continuous-time stochastic process as described by Cao et al. (2007) The Journal
of Chemical Physics <doi:10.1063/1.2745299> (aka.  the Gillespie stochastic
simulation algorithm).  This package is based upon work supported by NSF
DBI-0906041 and NIH K99-GM104158 to Philip Johnson and NIH R01-AI049334 to
Rustom Antia.")
    (license license:gpl3+)))

(define-public r-adaptivegpca
  (package
    (name "r-adaptivegpca")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adaptiveGPCA" version))
       (sha256
        (base32 "1766b3d9ysa9axfxqwy6gzj0z8hsl34pic6l63nbidqas55vnjqa"))))
    (properties `((upstream-name . "adaptiveGPCA")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-phyloseq r-ggplot2 r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=adaptiveGPCA")
    (synopsis "Adaptive Generalized PCA")
    (description
     "This package implements adaptive @code{gPCA}, as described in: Fukuyama, J.
(2017) <@code{arXiv:1702.00501>}.  The package also includes functionality for
applying the method to phyloseq objects so that the method can be easily applied
to microbiome data and a shiny app for interactive visualization.")
    (license license:agpl3)))

(define-public r-adaptgauss
  (package
    (name "r-adaptgauss")
    (version "1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AdaptGauss" version))
       (sha256
        (base32 "04w0v2fv9ixfz148d8f5vv7w5ypdywwf1qysk2ypc7a7md4vv9qz"))))
    (properties `((upstream-name . "AdaptGauss")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-rcpp r-pracma r-plotly
                             r-datavisualizations))
    (native-inputs (list r-knitr))
    (home-page "https://www.deepbionics.org")
    (synopsis "Gaussian Mixture Models (GMM)")
    (description
     "Multimodal distributions can be modelled as a mixture of components.  The model
is derived using the Pareto Density Estimation (PDE) for an estimation of the
pdf.  PDE has been designed in particular to identify groups/classes in a
dataset.  Precise limits for the classes can be calculated using the theorem of
Bayes.  Verification of the model is possible by QQ plot, Chi-squared test and
Kolmogorov-Smirnov test.  The package is based on the publication of Ultsch, A.,
Thrun, M.C., Hansen-Goos, O., Lotsch, J. (2015) <DOI:10.3390/ijms161025897>.")
    (license license:gpl3)))

(define-public r-adaptdiag
  (package
    (name "r-adaptdiag")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adaptDiag" version))
       (sha256
        (base32 "02xpphdhvryc06yji89mn7m2djgkpy19ph4sd52rhfsma7xn6hyf"))))
    (properties `((upstream-name . "adaptDiag")))
    (build-system r-build-system)
    (propagated-inputs (list r-pbmcapply r-foreach r-extradistr r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/graemeleehickey/adaptDiag")
    (synopsis "Bayesian Adaptive Designs for Diagnostic Trials")
    (description
     "Simulate clinical trials for diagnostic test devices and evaluate the operating
characteristics under an adaptive design with futility assessment determined via
the posterior predictive probabilities.")
    (license license:gpl3)))

(define-public r-adapt4pv
  (package
    (name "r-adapt4pv")
    (version "0.2-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adapt4pv" version))
       (sha256
        (base32 "05z3dwcx7pyysf0ghz8m6ij3lj53qkqll50b0gd2yi7ffp9m9601"))))
    (properties `((upstream-name . "adapt4pv")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost
                             r-speedglm
                             r-matrix
                             r-glmnet
                             r-foreach
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=adapt4pv")
    (synopsis "Adaptive Approaches for Signal Detection in Pharmacovigilance")
    (description
     "This package provides a collection of several pharmacovigilance signal detection
methods based on adaptive lasso.  Additional lasso-based and propensity
score-based signal detection approaches are also supplied.  See Courtois et al
<doi:10.1186/s12874-021-01450-3>.")
    (license license:gpl2)))

(define-public r-adana
  (package
    (name "r-adana")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adana" version))
       (sha256
        (base32 "0zi3a17rapc1z074k3yzgjv2b6ba6c9d54b1hm0ivvgfd335981f"))))
    (properties `((upstream-name . "adana")))
    (build-system r-build-system)
    (propagated-inputs (list r-roi-plugin-optimx r-roi r-optimx))
    (home-page "https://cran.r-project.org/package=adana")
    (synopsis
     "Adaptive Nature-Inspired Algorithms for Hybrid Genetic Optimization")
    (description
     "The Genetic Algorithm (GA) is a type of optimization method of Evolutionary
Algorithms.  It uses the biologically inspired operators such as mutation,
crossover, selection and replacement.Because of their global search and
robustness abilities, GAs have been widely utilized in machine learning, expert
systems, data science, engineering, life sciences and many other areas of
research and business.  However, the regular GAs need the techniques to improve
their efficiency in computing time and performance in finding global optimum
using some adaptation and hybridization strategies.  The adaptive GAs (AGA)
increase the convergence speed and success of regular GAs by setting the
parameters crossover and mutation probabilities dynamically.  The hybrid GAs
combine the exploration strength of a stochastic GAs with the exact convergence
ability of any type of deterministic local search algorithms such as
simulated-annealing, in addition to other nature-inspired algorithms such as ant
colony optimization, particle swarm optimization etc.  The package adana
includes a rich working environment with its many functions that make possible
to build and work regular GA, adaptive GA, hybrid GA and hybrid adaptive GA for
any kind of optimization problems.  Cebeci, Z. (2021, ISBN: 9786254397448).")
    (license license:gpl3)))

(define-public r-adahuber
  (package
    (name "r-adahuber")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adaHuber" version))
       (sha256
        (base32 "0giypz04m9anssa2r3hlf95lnj74i3ir48p5j898i2z1gmf8m14w"))))
    (properties `((upstream-name . "adaHuber")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://github.com/XiaoouPan/adaHuber")
    (synopsis "Adaptive Huber Estimation and Regression")
    (description
     "Huber-type estimation for mean, covariance and (regularized) regression.  For
all the methods, the robustification parameter tau is chosen by a tuning-free
principle.")
    (license license:gpl3)))

(define-public r-adace
  (package
    (name "r-adace")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "adace" version))
       (sha256
        (base32 "06hfizzaff6fsr8j8bag7avc1inqx2xs52gidacpyahxh6wvj3pz"))))
    (properties `((upstream-name . "adace")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-pracma))
    (home-page "https://cran.r-project.org/package=adace")
    (synopsis "Estimator of the Adherer Average Causal Effect")
    (description
     "Estimate the causal treatment effect for subjects that can adhere to one or both
of the treatments.  Given longitudinal data with missing observations,
consistent causal effects are calculated.  Unobserved potential outcomes are
estimated through direct integration as described in: Qu et al., (2019)
<doi:10.1080/19466315.2019.1700157> and Zhang et.  al., (2021)
<doi:10.1080/19466315.2021.1891965>.")
    (license license:gpl3+)))

(define-public r-acwr
  (package
    (name "r-acwr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ACWR" version))
       (sha256
        (base32 "19q8m5swp7ivrxi8rbkpp37d6fwr35zd8xs4ygpfgd07axc9451s"))))
    (properties `((upstream-name . "ACWR")))
    (build-system r-build-system)
    (propagated-inputs (list r-r2d3))
    (home-page "https://github.com/JorgeDelro/ACWR")
    (synopsis "Acute Chronic Workload Ratio Calculation")
    (description
     "This package provides functions for calculating the acute chronic workload ratio
using three different methods: exponentially weighted moving average (EWMA),
rolling average coupled (RAC) and rolling averaged uncoupled (RAU).  Examples of
this methods can be found in Williams et al. (2017)
<doi:10.1136/bjsports-2016-096589> for EWMA and Windt & Gabbet (2018) for RAC
and RAU <doi: 10.1136/bjsports-2017-098925>.")
    (license license:expat)))

(define-public r-acv
  (package
    (name "r-acv")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ACV" version))
       (sha256
        (base32 "078n1if2rkbdhivrzp3lsq35a8awrf5y3s7fi3f5l21a9dmrk4d1"))))
    (properties `((upstream-name . "ACV")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-forecast))
    (home-page "https://cran.r-project.org/package=ACV")
    (synopsis
     "Optimal Out-of-Sample Forecast Evaluation and Testing under Stationarity")
    (description
     "Package ACV (short for Affine Cross-Validation) offers an improved time-series
cross-validation loss estimator which utilizes both in-sample and out-of-sample
forecasting performance via a carefully constructed affine weighting scheme.
Under the assumption of stationarity, the estimator is the best linear unbiased
estimator of the out-of-sample loss.  Besides that, the package also offers
improved versions of Diebold-Mariano and Ibragimov-Muller tests of equal
predictive ability which deliver more power relative to their conventional
counterparts.  For more information, see the accompanying article Stanek (2021)
<doi:10.2139/ssrn.3996166>.")
    (license license:gpl3+)))

(define-public r-acumos
  (package
    (name "r-acumos")
    (version "0.4-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "acumos" version))
       (sha256
        (base32 "15i4xbcdk5vxjrgac32zh4439v0vmabnw3jvsmxiipap5frp7rpi"))))
    (properties `((upstream-name . "acumos")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-rserve
                             r-rprotobuf
                             r-restrserve
                             r-jsonlite
                             r-httr))
    (home-page
     "https://www.acumos.orghttps://gerrit.acumos.org/r/gitweb?p=acumos-r-client.githttps://github.com/acumos/acumos-r-clienthttps://docs.acumos.org/en/latest/submodules/acumos-r-client/docs")
    (synopsis "'Acumos' R Interface")
    (description
     "Create, upload and run Acumos R models.  Acumos (<https://www.acumos.org>) is a
platform and open source framework intended to make it easy to build, share, and
deploy AI apps.  Acumos is part of the LF AI Foundation', an umbrella
organization within The Linux Foundation'.  With this package, user can create a
component, and push it to an Acumos platform.")
    (license license:asl2.0)))

(define-public r-actxps
  (package
    (name "r-actxps")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "actxps" version))
       (sha256
        (base32 "1mabhbv5mg4afcxwv4fn2f7847scmddmyfqzzhypypj4pll61nr3"))))
    (properties `((upstream-name . "actxps")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tidyr
                             r-tibble
                             r-scales
                             r-rlang
                             r-recipes
                             r-readr
                             r-purrr
                             r-paletteer
                             r-gt
                             r-glue
                             r-ggplot2
                             r-generics
                             r-dplyr
                             r-clock))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mattheaphy/actxps/")
    (synopsis
     "Create Actuarial Experience Studies: Prepare Data, Summarize Results, and Create Reports")
    (description
     "Experience studies are used by actuaries to explore historical experience across
blocks of business and to inform assumption setting activities.  This package
provides functions for preparing data, creating studies, visualizing results,
and beginning assumption development.  Experience study methods, including
exposure calculations, are described in: Atkinson & @code{McGarry} (2016)
\"Experience Study Calculations\"
<https://www.soa.org/49378a/globalassets/assets/files/research/experience-study-calculations.pdf>.
 The limited fluctuation credibility method used by the exp_stats() function is
described in: Herzog (1999, ISBN:1-56698-374-6) \"Introduction to Credibility
Theory\".")
    (license license:expat)))

(define-public r-actuaryr
  (package
    (name "r-actuaryr")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "actuaryr" version))
       (sha256
        (base32 "08dzn565ax2l2hrn2m32k6magjbskybywl0hsgkg11nrjvkznwnx"))))
    (properties `((upstream-name . "actuaryr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-dplyr
                             r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=actuaryr")
    (synopsis "Develop Actuarial Models")
    (description
     "Actuarial reports are prepared for the last day of a specific period, such as a
month, a quarter or a year.  Actuarial models assume that certain events happen
at the beginning or end of periods.  The package contains functions to easily
refer to the first or last (working) day within a specific period relative to a
base date to facilitate actuarial reporting and to compare results.")
    (license license:expat)))

(define-public r-actuarialm
  (package
    (name "r-actuarialm")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ActuarialM" version))
       (sha256
        (base32 "1545jmbbisw5fxk07xl86jw7sw4kysa2crjm57mq2qk4qg9hh5rb"))))
    (properties `((upstream-name . "ActuarialM")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ActuarialM")
    (synopsis "Computation of Actuarial Measures Using Bell G Family")
    (description
     "It computes two frequently applied actuarial measures, the expected shortfall
and the value at risk.  Seven well-known classical distributions in connection
to the Bell generalized family are used as follows: Bell-exponential
distribution, Bell-extended exponential distribution, Bell-Weibull distribution,
Bell-extended Weibull distribution, Bell-Lomax distribution, Bell-Burr-12
distribution, and Bell-Burr-X distribution.  Related works include: a) Fayomi,
A., Tahir, M. H., Algarni, A., Imran, M., & Jamal, F. (2022). \"A new useful
exponential model with applications to quality control and actuarial data\".
Computational Intelligence and Neuroscience, 2022. <doi:10.1155/2022/2489998>.
b) Alsadat, N., Imran, M., Tahir, M. H., Jamal, F., Ahmad, H., & Elgarhy, M.
(2023). \"Compounded Bell-G class of statistical models with applications to
COVID-19 and actuarial data\".  Open Physics, 21(1), 20220242.
<doi:10.1515/phys-2022-0242>.")
    (license license:gpl2+)))

(define-public r-actuare
  (package
    (name "r-actuare")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "actuaRE" version))
       (sha256
        (base32 "02f90vdbfz6shsw4ndhqbqjsrwiwmi1jp66bsl897cb8fnywnzs4"))))
    (properties `((upstream-name . "actuaRE")))
    (build-system r-build-system)
    (propagated-inputs (list r-statmod
                             r-nlme
                             r-magrittr
                             r-lme4
                             r-knitr
                             r-ggplot2
                             r-data-table
                             r-cplm))
    (native-inputs (list r-knitr))
    (home-page "https://bavodc.github.io/websiteactuaRE/")
    (synopsis
     "Handling Hierarchically Structured Risk Factors using Random Effects Models")
    (description
     "Using this package, you can fit a random effects model using either the
hierarchical credibility model, a combination of the hierarchical credibility
model with a generalized linear model or a Tweedie generalized linear mixed
model.  See Campo, B.D.C. and Antonio, K. (2023)
<doi:10.1080/03461238.2022.2161413>.")
    (license license:gpl3+)))

(define-public r-actlifer
  (package
    (name "r-actlifer")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "actLifer" version))
       (sha256
        (base32 "1nqlsdywrfvq94zi2xk90m9m768x18fk6p6jrds8mpv63w2y3frc"))))
    (properties `((upstream-name . "actLifer")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=actLifer")
    (synopsis "Creating Actuarial Life Tables")
    (description
     "This package contains data and functions that can be used to make actuarial life
tables.  Each function adds a column to the inputted dataset for each
intermediate calculation between mortality rate and life expectancy.  Users can
run any of our functions to complete the life table until that step, or run
lifetable() to output a full life table that can be customized to remove
optional columns.  Methods for creating lifetables are as described in
Zedstatistics (2021) <https://www.youtube.com/watch?v=Dfe59@code{glNXAQ>}.")
    (license license:expat)))

(define-public r-activegp
  (package
    (name "r-activegp")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "activegp" version))
       (sha256
        (base32 "1b64k0k6l9dgvyqhd6j9plabaibjayfm5maa4bpwxxgwkp122r3c"))))
    (properties `((upstream-name . "activegp")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppprogress
                             r-rcpparmadillo
                             r-rcpp
                             r-numderiv
                             r-mass
                             r-lhs
                             r-hetgp))
    (home-page "https://cran.r-project.org/package=activegp")
    (synopsis
     "Gaussian Process Based Design and Analysis for the Active Subspace Method")
    (description
     "The active subspace method is a sensitivity analysis technique that finds
important linear combinations of input variables for a simulator.  This package
provides functions allowing estimation of the active subspace without gradient
information using Gaussian processes as well as sequential experimental design
tools to minimize the amount of data required to do so.  Implements Wycoff et
al. (JCGS, 2021) <doi:10.48550/@code{arXiv.1907.11572>}.")
    (license license:bsd-3)))

(define-public r-activatr
  (package
    (name "r-activatr")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "activatr" version))
       (sha256
        (base32 "1lga186jfymbs9padvv3zb25ccrfqhriszql3bbh0pb5ilqf3qdy"))))
    (properties `((upstream-name . "activatr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tibble
                             r-slider
                             r-rlang
                             r-lubridate
                             r-httr
                             r-glue
                             r-ggmap
                             r-geosphere
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dschafer/activatr")
    (synopsis "Utilities for Parsing and Plotting Activities")
    (description
     "This contains helpful functions for parsing, managing, plotting, and visualizing
activities, most often from GPX (GPS Exchange Format) files recorded by GPS
devices.  It allows easy parsing of the source files into standard R data
formats, along with functions to compute derived data for the activity, and to
plot the activity in a variety of ways.")
    (license license:expat)))

(define-public r-activanalyzer
  (package
    (name "r-activanalyzer")
    (version "2.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "activAnalyzer" version))
       (sha256
        (base32 "0jbzbn9y9lwhy4003ym4w680glj9mdq3gwkk64hfsh94c52xihk3"))))
    (properties `((upstream-name . "activAnalyzer")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tidyr
                             r-stringr
                             r-shinyjs
                             r-shinyfeedback
                             r-shinydashboardplus
                             r-shinydashboard
                             r-shinycssloaders
                             r-shiny
                             r-rsqlite
                             r-rmarkdown
                             r-reactable
                             r-plyr
                             r-physicalactivity
                             r-patchwork
                             r-modelr
                             r-magrittr
                             r-lubridate
                             r-hms
                             r-golem
                             r-ggplot2
                             r-forcats
                             r-flextable
                             r-dplyr
                             r-dbplyr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://pydemull.github.io/activAnalyzer/")
    (synopsis
     "'Shiny' App to Analyze Accelerometer-Measured Daily Physical Behavior Data")
    (description
     "This package provides a tool to analyse @code{ActiGraph} accelerometer data and
to implement the use of the PROactive Physical Activity in COPD (chronic
obstructive pulmonary disease) instruments.  Once analysis is completed, the app
allows to export results to .csv files and to generate a report of the
measurement.  All the configured inputs relevant for interpreting the results
are recorded in the report.  In addition to the existing R packages that are
fully integrated with the app, the app uses some functions from the
actigraph.sleepr package developed by Petkova (2021)
<https://github.com/dipetkov/actigraph.sleepr/>.")
    (license license:gpl3+)))

(define-public r-actisleep
  (package
    (name "r-actisleep")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ActiSleep" version))
       (sha256
        (base32 "0byms52rk9snsr6z400qidbvpnfxxn0idv1hr9k3whbadr3nxyxi"))))
    (properties `((upstream-name . "ActiSleep")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-rsqlite
                             r-lubridate
                             r-lazyeval
                             r-dplyr
                             r-dbi
                             r-accelerometry))
    (home-page "https://cran.r-project.org/package=ActiSleep")
    (synopsis "Sleep Duration Estimate Algorithm")
    (description
     "This package provides sleep duration estimates using a Pruned Dynamic
Programming (PDP) algorithm that efficiently identifies change-points.  PDP
applied to physical activity data can identify transitions from wakefulness to
sleep and vice versa.  Baek, Jonggyu, Banker, Margaret, Jansen, Erica C., She,
Xichen, Peterson, Karen E., Pitchford, E. Andrew, Song, Peter X. K. (2021) An
Efficient Segmentation Algorithm to Estimate Sleep Duration from Actigraphy Data
<doi:10.1007/s12561-021-09309-3>.")
    (license license:gpl3)))

(define-public r-actilifecounts
  (package
    (name "r-actilifecounts")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "actilifecounts" version))
       (sha256
        (base32 "0p65j7l8d8503nil34faz7jashv5rw327xlpphwhwa4x5wga5z01"))))
    (properties `((upstream-name . "actilifecounts")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma r-gsignal r-ggirread))
    (home-page "https://github.com/jhmigueles/actilifecounts")
    (synopsis "Generate Activity Counts from Raw Accelerometer Data")
    (description
     "This package provides a tool to obtain activity counts, originally a translation
of the python package agcounts <https://github.com/actigraph/agcounts>.  This
tool allows the processing of data from any accelerometer brand, with a more
flexible approach to handle different sampling frequencies.")
    (license license:lgpl3+)))

(define-public r-actel
  (package
    (name "r-actel")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "actel" version))
       (sha256
        (base32 "0hd1mkshywszswnllcx1lvlghnfk92438r57v6r7w8p5i9m04z9x"))))
    (properties `((upstream-name . "actel")))
    (build-system r-build-system)
    (propagated-inputs (list r-svglite
                             r-stringr
                             r-stringi
                             r-scales
                             r-rsvg
                             r-rmarkdown
                             r-reshape2
                             r-readr
                             r-knitr
                             r-ggplot2
                             r-fasttime
                             r-diagrammersvg
                             r-diagrammer
                             r-data-table
                             r-circular))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hugomflavio/actel")
    (synopsis "Acoustic Telemetry Data Analysis")
    (description
     "Designed for studies where animals tagged with acoustic tags are expected to
move through receiver arrays.  This package combines the advantages of automatic
sorting and checking of animal movements with the possibility for user
intervention on tags that deviate from expected behaviour.  The three analysis
functions (explore(), migration() and residency()) allow the users to analyse
their data in a systematic way, making it easy to compare results from different
studies.  CJS calculations are based on Perry et al. (2012)
<https://www.researchgate.net/publication/256443823_Using_mark-recapture_models_to_estimate_survival_from_telemetry_data>.")
    (license license:gpl3)))

(define-public r-actcr
  (package
    (name "r-actcr")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ActCR" version))
       (sha256
        (base32 "1w3xkq3wanpa2j3rfzzdvad2r3vzzvp76kp56mh2s07p3xql6rv0"))))
    (properties `((upstream-name . "ActCR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-minpack-lm r-dplyr r-cosinor2 r-cosinor))
    (home-page "https://github.com/junruidi/ActCR")
    (synopsis "Extract Circadian Rhythms Metrics from Actigraphy Data")
    (description
     "Circadian rhythms are rhythms that oscillate about every 24 h, which has been
observed in multiple physiological processes including core body temperature,
hormone secretion, heart rate, blood pressure, and many others.  Measuring
circadian rhythm with wearables is based on a principle that there is increased
movement during wake periods and reduced movement during sleep periods, and has
been shown to be reliable and valid.  This package can be used to extract
nonparametric circadian metrics like intradaily variability (IV), interdaily
stability (IS), and relative amplitude (RA); and parametric cosinor model and
extended cosinor model coefficient.  Details can be found in Junrui Di et al
(2019) <doi:10.1007/s12561-019-09236-4>.")
    (license license:gpl3)))

(define-public r-act
  (package
    (name "r-act")
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "act" version))
       (sha256
        (base32 "0c5515mxw2ghdwmnqz1www84v3dn7wlvij47wankb4ak285ak30i"))))
    (properties `((upstream-name . "act")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-xml
                             r-textutils
                             r-stringr
                             r-stringi
                             r-progress
                             r-openxlsx))
    (native-inputs (list r-knitr))
    (home-page "http://www.oliverehmer.de")
    (synopsis "Aligned Corpus Toolkit")
    (description
     "The Aligned Corpus Toolkit (act) is designed for linguists that work with time
aligned transcription data.  It offers functions to import and export various
annotation file formats ('ELAN .eaf, EXMA@code{RaLDA} .exb and Praat
.@code{TextGrid} files), create print transcripts in the style of conversation
analysis, search transcripts (span searches across multiple annotations, search
in normalized annotations, make concordances etc.), export and re-import search
results (.csv and Excel .xlsx format), create cuts for the search results (print
transcripts, audio/video cuts using FFmpeg and video sub titles in Subrib title
.srt format), modify the data in a corpus (search/replace, delete, filter etc.),
interact with Praat using Praat'-scripts, and exchange data with the
@code{rPraat} package.  The package is itself written in R and may be expanded
by other users.")
    (license license:gpl3)))

(define-public r-acsspack
  (package
    (name "r-acsspack")
    (version "0.0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ACSSpack" version))
       (sha256
        (base32 "18xj0svysm9qm6dyhx7ib2krwcfds8i3rrcd03ph3kz597vf41zi"))))
    (properties `((upstream-name . "ACSSpack")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-mass r-hdci r-extradistr))
    (home-page "https://cran.r-project.org/package=ACSSpack")
    (synopsis "ACSS, Corresponding ACSS, and GLP Algorithm")
    (description
     "Allow user to run the Adaptive Correlated Spike and Slab (ACSS) algorithm,
corresponding INdependent Spike and Slab (INSS) algorithm, and Giannone, Lenza
and Primiceri (GLP) algorithm with adaptive burn-in.  All of the three
algorithms are used to fit high dimensional data set with either sparse
structure, or dense structure with smaller contributions from all predictors.
The state-of-the-art GLP algorithm is in Giannone, D., Lenza, M., & Primiceri,
G. E. (2021, ISBN:978-92-899-4542-4) \"Economic predictions with big data: The
illusion of sparsity\".  The two new algorithms, ACSS algorithm and INSS
algorithm, and the discussion on their performance can be seen in Yang, Z.,
Khare, K., & Michailidis, G. (2024, preprint) \"Bayesian methodology for adaptive
sparsity and shrinkage in regression\".")
    (license license:gpl3)))

(define-public r-acroname
  (package
    (name "r-acroname")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "acroname" version))
       (sha256
        (base32 "0fff7z3i8h30v7bsyq240h8ws5ld04n6c5r2iizd2icp8dk9xs9x"))))
    (properties `((upstream-name . "acroname")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-readr
                             r-r-utils
                             r-purrr
                             r-magrittr
                             r-hunspell
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=acroname")
    (synopsis "Engine for Acronyms and Initialisms")
    (description
     "This package provides a tool for generating acronyms and initialisms from
arbitrary text input.")
    (license license:gpl3)))

(define-public r-acro
  (package
    (name "r-acro")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "acro" version))
       (sha256
        (base32 "1mipd7p47b3m2klmxfpdy04dm3sk5yaiyz0wgmd5zmci5ha2jvp8"))))
    (properties `((upstream-name . "acro")))
    (build-system r-build-system)
    (inputs (list python))
    (propagated-inputs (list r-reticulate r-png r-admiraldev))
    (home-page "https://github.com/AI-SDC/ACRO-R")
    (synopsis
     "Tool for Automating the Statistical Disclosure Control of Research Outputs")
    (description
     "Assists researchers and output checkers by distinguishing between research
output that is safe to publish, output that requires further analysis, and
output that cannot be published because of substantial disclosure risk.  A paper
about the tool was presented at the UNECE Expert Meeting on Statistical Data
Confidentiality 2023; see
<https://uwe-repository.worktribe.com/output/11060964>.")
    (license license:expat)))

(define-public r-acne
  (package
    (name "r-acne")
    (version "0.9.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ACNE" version))
       (sha256
        (base32 "12i1b5bbdn4wz80p8v6xygap7pkgdvidxmsd927ks7qf1yvaq93k"))))
    (properties `((upstream-name . "ACNE")))
    (build-system r-build-system)
    (propagated-inputs (list r-r-utils
                             r-r-oo
                             r-r-methodss3
                             r-r-filesets
                             r-matrixstats
                             r-mass
                             r-aroma-core
                             r-aroma-affymetrix))
    (home-page "https://github.com/HenrikBengtsson/ACNE")
    (synopsis
     "Affymetrix SNP Probe-Summarization using Non-Negative Matrix Factorization")
    (description
     "This package provides a summarization method to estimate allele-specific copy
number signals for Affymetrix SNP microarrays using non-negative matrix
factorization (NMF).")
    (license license:lgpl2.1+)))

(define-public r-acled-api
  (package
    (name "r-acled-api")
    (version "1.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "acled.api" version))
       (sha256
        (base32 "02xc32yqg0vdv8anbfqydnrkc79yj51xyy63skinm5dzxpswbq8k"))))
    (properties `((upstream-name . "acled.api")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (home-page "<https://gitlab.com/chris-dworschak/acled.api>")
    (synopsis "Automated Retrieval of ACLED Conflict Event Data")
    (description
     "Access and manage the application programming interface (API) of the Armed
Conflict Location & Event Data Project (ACLED) at <https://acleddata.com/>.  The
package makes it easy to retrieve a user-defined sample (or all of the available
data) of ACLED, enabling a seamless integration of regular data updates into the
research work flow.  It requires a minimal number of dependencies.  See the
package's README file for a note on replicability when drawing on ACLED data.
When using this package, you acknowledge that you have read ACLED's terms and
conditions of use, and that you agree with their attribution requirements.")
    (license (license:fsdg-compatible "CC BY-NC 4.0"))))

(define-public r-achilles
  (package
    (name "r-achilles")
    (version "1.7.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Achilles" version))
       (sha256
        (base32 "1xkhplw7jpz7y86nac2z5vk2xs898kfv6apmk3rahjr0rmdijdqg"))))
    (properties `((upstream-name . "Achilles")))
    (build-system r-build-system)
    (propagated-inputs (list r-tseries
                             r-sqlrender
                             r-rlang
                             r-readr
                             r-parallellogger
                             r-lubridate
                             r-jsonlite
                             r-dplyr
                             r-databaseconnector
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=Achilles")
    (synopsis "Achilles Data Source Characterization")
    (description
     "Automated Characterization of Health Information at Large-Scale Longitudinal
Evidence Systems.  Creates a descriptive statistics summary for an Observational
Medical Outcomes Partnership Common Data Model standardized data source.  This
package includes functions for executing summary queries on the specified data
source and exporting reporting content for use across a variety of Observational
Health Data Sciences and Informatics community applications.")
    (license (license:fsdg-compatible "Apache License"))))

(define-public r-acesimfit
  (package
    (name "r-acesimfit")
    (version "0.0.0.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ACEsimFit" version))
       (sha256
        (base32 "0ifwgpnql14z1qzw8fmllgzl97bwd35f0558ymmcxz1mhgh6cb2v"))))
    (properties `((upstream-name . "ACEsimFit")))
    (build-system r-build-system)
    (propagated-inputs (list r-openmx))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ACEsimFit")
    (synopsis "ACE Kin Pair Data Simulations and Model Fitting")
    (description
     "This package provides a few functions aim to provide a statistic tool for three
purposes.  First, simulate kin pairs data based on the assumption that every
trait is affected by genetic effects (A), common environmental effects (C) and
unique environmental effects (E).Second, use kin pairs data to fit an ACE model
and get model fit output.Third, calculate power of A estimate given a specific
condition.  For the mechanisms of power calculation, we suggest to check
Visscher(2004)<doi:10.1375/twin.7.5.505>.")
    (license license:expat)))

(define-public r-acesearch
  (package
    (name "r-acesearch")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ACEsearch" version))
       (sha256
        (base32 "1ssq8avj20dk2mal0j5dvshf7qgk0as90sgl71cn91cq8lbiilpn"))))
    (properties `((upstream-name . "ACEsearch")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat r-httr))
    (home-page "https://shahlab.stanford.edu/start")
    (synopsis "'ACE' Search Engine API")
    (description
     "ACE (Advanced Cohort Engine) is a powerful tool that allows constructing cohorts
of patients extremely quickly and efficiently.  This package is designed to
interface directly with an instance of ACE search engine and facilitates API
queries and data dumps.  Prerequisite is a good knowledge of the temporal
language to be able to efficiently construct a query.  More information
available at <https://shahlab.stanford.edu/start>.")
    (license license:expat)))

(define-public r-acep
  (package
    (name "r-acep")
    (version "0.0.22")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ACEP" version))
       (sha256
        (base32 "0n47vchi2kwm1czjfbdbcg1lg17bysw7fcca7j0q0n46c6w8rf49"))))
    (properties `((upstream-name . "ACEP")))
    (build-system r-build-system)
    (propagated-inputs (list r-httr))
    (home-page "https://github.com/agusnieto77/ACEP")
    (synopsis "Analisis Computacional de Eventos de Protesta")
    (description
     "La libreria ACEP contiene funciones especificas para desarrollar analisis
computacional de eventos de protesta.  Asimismo, contiene base de datos con
colecciones de notas sobre protestas y diccionarios de palabras conflictivas.
Coleccion de diccionarios que reune diccionarios de diferentes origenes.  The
ACEP library contains specific functions to perform computational analysis of
protest events.  It also contains a database with collections of notes on
protests and dictionaries of conflicting words.  Collection of dictionaries that
brings together dictionaries from different sources.")
    (license license:expat)))

(define-public r-aceeditor
  (package
    (name "r-aceeditor")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aceEditor" version))
       (sha256
        (base32 "1qdxs20si1smjn24dlgq46x6qwjdwsa0f5lzh1vrbgv4kk9j1rfb"))))
    (properties `((upstream-name . "aceEditor")))
    (build-system r-build-system)
    (arguments
     (list
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
    (propagated-inputs (list r-rstudioapi r-reactr r-htmlwidgets r-htmltools))
    (native-inputs (list esbuild))
    (home-page "https://github.com/stla/aceEditor")
    (synopsis "The 'Ace' Editor as a HTML Widget")
    (description
     "Wraps the Ace editor in a HTML widget.  The Ace editor has support for many
languages.  It can be opened in the viewer pane of RStudio', and this provides a
second source editor.")
    (license license:gpl3)))

(define-public r-ace-coco
  (package
    (name "r-ace-coco")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ACE.CoCo" version))
       (sha256
        (base32 "105rb42cwzpbarvdm9zsbicy3xkr3p659bphzgnvcc4lh66rhiay"))))
    (properties `((upstream-name . "ACE.CoCo")))
    (build-system r-build-system)
    (propagated-inputs (list r-quantreg))
    (home-page "https://github.com/hongyuan-cao/ACE")
    (synopsis "Analysis of Correlated High-Dimensional Expression (ACE) Data")
    (description
     "This package provides a function for estimating factor models.  Give
factor-adjusted statistics, factor-adjusted mean estimation (one-sample test) or
factor-adjusted mean difference estimation (two-sample test).")
    (license license:gpl3)))

(define-public r-acdcr
  (package
    (name "r-acdcr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "acdcR" version))
       (sha256
        (base32 "0mf4fhqym4l8m71wgha1587r7sxnmakq3bds24yr425433biiy25"))))
    (properties `((upstream-name . "acdcR")))
    (build-system r-build-system)
    (propagated-inputs (list r-raster r-data-table))
    (home-page "https://github.com/ysd2004/acdcR")
    (synopsis "Agro-Climatic Data by County")
    (description
     "The functions are designed to calculate the most widely-used county-level
variables in agricultural production or agricultural-climatic and weather
analyses.  To operate some functions in this package needs download of the bulk
PRISM raster.  See the examples, testing versions and more details from:
<https://github.com/ysd2004/@code{acdcR>}.")
    (license license:gpl2+)))

(define-public r-acdcquery
  (package
    (name "r-acdcquery")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "acdcquery" version))
       (sha256
        (base32 "03ip3fvc1qcq0vmcidv1rbih85v3dxhx08047vjlf21kfcr9cizk"))))
    (properties `((upstream-name . "acdcquery")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsqlite r-dbi))
    (home-page "https://github.com/SLesche/acdc-query")
    (synopsis "Query the Attentional Control Data Collection")
    (description
     "Interact with the Attentional Control Data Collection (ACDC).  Connect to the
database via connect_to_db(), set filter arguments via add_argument() and query
the database via query_db().")
    (license license:gpl3+)))

(define-public r-accumulate
  (package
    (name "r-accumulate")
    (version "0.9.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "accumulate" version))
       (sha256
        (base32 "0c2iiliqpyblfdz189d06ljbbp0hyadhgr7hrzm0wfcm8245njah"))))
    (properties `((upstream-name . "accumulate")))
    (build-system r-build-system)
    (native-inputs (list r-simplermarkdown))
    (home-page "https://github.com/markvanderloo/accumulate")
    (synopsis "Split-Apply-Combine with Dynamic Groups")
    (description
     "Estimate group aggregates, where one can set user-defined conditions that each
group of records must satisfy to be suitable for aggregation.  If a group of
records is not suitable, it is expanded using a collapsing scheme defined by the
user.")
    (license (license:fsdg-compatible "EUPL"))))

(define-public r-accucor
  (package
    (name "r-accucor")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "accucor" version))
       (sha256
        (base32 "1yq64hh7w328ks02fh9q2hnl73grwd31rrm6c0jqyb0f0lclkxir"))))
    (properties `((upstream-name . "accucor")))
    (build-system r-build-system)
    (propagated-inputs (list r-writexl
                             r-tibble
                             r-stringr
                             r-rlang
                             r-readxl
                             r-readr
                             r-nnls
                             r-dplyr
                             r-chnosz))
    (home-page "https://github.com/XiaoyangSu/AccuCor")
    (synopsis "Natural Abundance Correction of Mass Spectrometer Data")
    (description
     "An isotope natural abundance correction algorithm that is needed especially for
high resolution mass spectrometers.  Supports correction for 13C, 2H and 15N. Su
X, Lu W and Rabinowitz J (2017) <doi:10.1021/acs.analchem.7b00396>.")
    (license license:expat)))

(define-public r-accrualplot
  (package
    (name "r-accrualplot")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "accrualPlot" version))
       (sha256
        (base32 "1xd855yzr405kl6qqm68zgcj3j112xmpkx0f1z8gd9z7s3sr74h0"))))
    (properties `((upstream-name . "accrualPlot")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/CTU-Bern/accrualPlot")
    (synopsis "Accrual Plots and Predictions for Clinical Trials")
    (description
     "Tracking accrual in clinical trials is important for trial success.  If accrual
is too slow, the trial will take too long and be too expensive.  If accrual is
much faster than expected, time sensitive tasks such as the writing of
statistical analysis plans might need to be rushed. @code{accrualPlot} provides
functions to aid the tracking of accrual and predict when a trial will reach
it's intended sample size.")
    (license license:expat)))

(define-public r-accessrmd
  (package
    (name "r-accessrmd")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "accessrmd" version))
       (sha256
        (base32 "1jdbbsi8nzvr8hnrpw5sr8zf55irnwwrnkwx4vd0zx84bxvw3bqy"))))
    (properties `((upstream-name . "accessrmd")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rlist
                             r-rcurl
                             r-knitr
                             r-htmltools
                             r-ggplot2))
    (home-page "https://cran.r-project.org/package=accessrmd")
    (synopsis "Improving the Accessibility of 'rmarkdown' Documents")
    (description
     "This package provides a simple method to improve the accessibility of rmarkdown
documents.  The package provides functions for creating or modifying rmarkdown
documents, resolving known errors and alerts that result in accessibility issues
for screen reader users.")
    (license license:expat)))

(define-public r-accessr
  (package
    (name "r-accessr")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "accessr" version))
       (sha256
        (base32 "0hlf1kdxmw1rqscqazan8d3dqr5kfsxngrmkdb41pi5k5qsvbcx4"))))
    (properties `((upstream-name . "accessr")))
    (build-system r-build-system)
    (arguments
     (list
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
    (propagated-inputs (list r-rmarkdown))
    (native-inputs (list esbuild))
    (home-page "https://paulnorthrop.github.io/accessr/")
    (synopsis
     "Command Line Tools to Produce Accessible Documents using 'R Markdown'")
    (description
     "This package provides functions to produce accessible HTML slides, HTML', Word
and PDF documents from input R markdown files.  Accessible PDF files are
produced only on a Windows Operating System.  One aspect of accessibility is
providing a headings structure that is recognised by a screen reader, providing
a navigational tool for a blind or partially-sighted person.  A key aim is to
produce documents of different formats easily from each of a collection of R
markdown source files.  Input R markdown files are rendered using the render()
function from the rmarkdown package
<https://cran.r-project.org/package=rmarkdown>.  A zip file containing multiple
output files can be produced from one function call.  A user-supplied template
Word document can be used to determine the formatting of an output Word
document.  Accessible PDF files are produced from Word documents using
@code{OfficeToPDF} <https://github.com/cognidox/@code{OfficeToPDF>}.  A
convenience function, install_otp() is provided to install this software.  The
option to print HTML output to (non-accessible) PDF files is also available.")
    (license license:gpl3+)))

(define-public r-accessibility
  (package
    (name "r-accessibility")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "accessibility" version))
       (sha256
        (base32 "0c130kbh3h42pj0iw4zb9kv1i8zmy12znyhxbb5cvr8lwgkzdc4n"))))
    (properties `((upstream-name . "accessibility")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-hmisc r-data-table r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ipeaGIT/accessibility")
    (synopsis "Transport Accessibility Measures")
    (description
     "This package provides a set of fast and convenient functions to help conducting
accessibility analyses.  Given a pre-computed travel cost matrix and a land use
dataset (containing the location of jobs, healthcare and population, for
example), the package allows one to calculate accessibility levels and
accessibility poverty and inequality.  The package covers the majority of the
most commonly used accessibility measures (such as cumulative opportunities,
gravity-based and floating catchment areas methods), as well as the most
frequently used inequality and poverty metrics (such as the Palma ratio, the
concentration and Theil indices and the FGT family of measures).")
    (license license:expat)))

(define-public r-acceptreject
  (package
    (name "r-acceptreject")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AcceptReject" version))
       (sha256
        (base32 "137qlqkazh665d7wvxkhxfz2a5ss3hy4acbc6jzbk7vq4qpbcj0i"))))
    (properties `((upstream-name . "AcceptReject")))
    (build-system r-build-system)
    (propagated-inputs (list r-scattermore
                             r-scales
                             r-rlang
                             r-rcpparmadillo
                             r-rcpp
                             r-purrr
                             r-numderiv
                             r-glue
                             r-ggplot2
                             r-cli
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://prdm0.github.io/AcceptReject/")
    (synopsis
     "Acceptance-Rejection Method for Generating Pseudo-Random Observations")
    (description
     "This package provides a function that implements the acceptance-rejection method
in an optimized manner to generate pseudo-random observations for discrete or
continuous random variables.  Proposed by von Neumann J. (1951),
<https://mcnp.lanl.gov/pdf_files/>, the function is optimized to work in
parallel on Unix-based operating systems and performs well on Windows systems.
The acceptance-rejection method implemented optimizes the probability of
generating observations from the desired random variable, by simply providing
the probability function or probability density function, in the discrete and
continuous cases, respectively.  Implementation is based on references CASELLA,
George at al. (2004) <https://www.jstor.org/stable/4356322>, NEAL, Radford M.
(2003) <https://www.jstor.org/stable/3448413> and Bishop, Christopher M. (2006,
ISBN: 978-0387310732).")
    (license license:gpl3+)))

(define-public r-accelstab
  (package
    (name "r-accelstab")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AccelStab" version))
       (sha256
        (base32 "072wm4421bir8ij1g5zj0rn26h28vz7np6glmvapv18q4kfz1x88"))))
    (properties `((upstream-name . "AccelStab")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales r-mvtnorm r-minpack-lm r-ggplot2 r-dplyr))
    (home-page "https://github.com/AccelStab/AccelStab")
    (synopsis "Accelerated Stability Kinetic Modelling")
    (description
     "Estimate the Å estÃ¡kâBerggren kinetic model (degradation model) from
experimental data.  A A closed-form (analytic) solution to the degradation model
is implemented as a non-linear fit, allowing for the extrapolation of the
degradation of a drug product - both in time and temperature.  Parametric
bootstrap, with kinetic parameters drawn from the multivariate t-distribution,
and analytical formulae (the delta method) are available options to calculate
the confidence and prediction intervals.  The results (modelling, extrapolations
and statistical intervals) can be visualised with multiple plots.  The examples
illustrate the accelerated stability modelling in drugs and vaccines
development.")
    (license license:agpl3+)))

(define-public r-acca
  (package
    (name "r-acca")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "acca" version))
       (sha256
        (base32 "0h9dyzd1pbr4rvxqz69vlfmbibcd1n72qqgjvci7fdjjvfq2mc9p"))))
    (properties `((upstream-name . "acca")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-ggplot2))
    (home-page "https://cran.r-project.org/package=acca")
    (synopsis "Canonical Correlation Analysis with Inferential Guaranties")
    (description
     "It performs Canonical Correlation Analysis and provides inferential guaranties
on the correlation components.  The p-values are computed following the
resampling method developed in Winkler, A. M., Renaud, O., Smith, S. M., &
Nichols, T. E. (2020).  Permutation inference for canonical correlation
analysis. @code{NeuroImage}, <doi:10.1016/j.neuroimage.2020.117065>.
Furthermore, it provides plotting tools to visualize the results.")
    (license license:gpl2+)))

(define-public r-academictwitter
  (package
    (name "r-academictwitter")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "academictwitteR" version))
       (sha256
        (base32 "055n0y8g2ibai5zyvw9cqbi0l1zi792cgf65jhy6mrf7j6lgrzhw"))))
    (properties `((upstream-name . "academictwitteR")))
    (build-system r-build-system)
    (propagated-inputs (list r-usethis
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cjbarrie/academictwitteR")
    (synopsis
     "Access the Twitter Academic Research Product Track V2 API Endpoint")
    (description
     "Package to query the Twitter Academic Research Product Track, providing access
to full-archive search and other v2 API endpoints.  Functions are written with
academic research in mind.  They provide flexibility in how the user wishes to
store collected data, and encourage regular storage of data to mitigate loss
when collecting large volumes of tweets.  They also provide workarounds to
manage and reshape the format in which data is provided on the client side.")
    (license license:expat)))

(define-public r-academicthemes
  (package
    (name "r-academicthemes")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AcademicThemes" version))
       (sha256
        (base32 "10v7li7d26kaj5v608bnyrgqxsx12rq3czyb59hbrb5428vsv99x"))))
    (properties `((upstream-name . "AcademicThemes")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hwarden162/AcademicThemes")
    (synopsis "Colour Plots with Palettes from Academic Institutions")
    (description
     "Functionality to allow users to easily colour plots with the colour palettes of
various academic institutions.")
    (license license:expat)))

(define-public r-absurvtdc
  (package
    (name "r-absurvtdc")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ABSurvTDC" version))
       (sha256
        (base32 "1k0c60z0npgjaz1w3vhh21k6x1l8alkzmms1r89h2p874cqn7y6x"))))
    (properties `((upstream-name . "ABSurvTDC")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-readxl))
    (home-page "https://cran.r-project.org/package=ABSurvTDC")
    (synopsis
     "Survival Analysis using Time Dependent Covariate for Animal Breeding")
    (description
     "Survival analysis is employed to model the time it takes for events to occur.
Survival model examines the relationship between survival and one or more
predictors, usually termed covariates in the survival-analysis literature.  To
this end, Cox-proportional (Cox-PH) hazard rate model introduced in a seminal
paper by Cox (1972) <doi:10.1111/j.2517-6161.1972.tb00899.x>, is a broadly
applicable and the most widely used method of survival analysis.  This package
can be used to estimate the effect of fixed and time-dependent covariates and
also to compute the survival probabilities of the lactation of dairy animal.
This package has been developed using algorithm of Klein and Moeschberger (2003)
<doi:10.1007/b97377>.")
    (license license:gpl3)))

(define-public r-abstr
  (package
    (name "r-abstr")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "abstr" version))
       (sha256
        (base32 "0ykds1l7bi0h06fjp0d6xshl8ar05n7ccmjbl7hz02l2v7ncfa6v"))))
    (properties `((upstream-name . "abstr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-sf
                             r-od
                             r-magrittr
                             r-lwgeom
                             r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/a-b-street/abstr")
    (synopsis
     "R Interface to the A/B Street Transport System Simulation Software")
    (description
     "This package provides functions to convert origin-destination data, represented
as straight desire lines in the sf Simple Features class system, into JSON files
that can be directly imported into A/B Street <https://www.abstreet.org>, a free
and open source tool for simulating urban transport systems and scenarios of
change <doi:10.1007/s10109-020-00342-2>.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-absorber
  (package
    (name "r-absorber")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "absorber" version))
       (sha256
        (base32 "1s8dn0y0igxaxa1q6cakc28fb1dvf0zljmw7gbn68pdimyrvdh0g"))))
    (properties `((upstream-name . "absorber")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparsegl
                             r-matrix
                             r-mass
                             r-irlba
                             r-ggplot2
                             r-fda))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=absorber")
    (synopsis "Variable Selection in Nonparametric Models using B-Splines")
    (description
     "This package provides a variable selection method using B-Splines in
multivariate @code{nOnparametric} Regression models Based on partial
@code{dErivatives} Regularization (ABSORBER) implements a novel variable
selection method in a nonlinear multivariate model using B-splines.  For further
details we refer the reader to the paper Savino, M. E. and LÃ©vy-Leduc, C.
(2024), <https://hal.science/hal-04434820>.")
    (license license:gpl2)))

(define-public r-abseil
  (package
    (name "r-abseil")
    (version "2023.8.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "abseil" version))
       (sha256
        (base32 "1a65zwkrxqidbcfpin9k119zip8vb0vnl87akimjn3xnynb3i5br"))))
    (properties `((upstream-name . "abseil")))
    (build-system r-build-system)
    (home-page "https://abseil.xingchi.li")
    (synopsis "'C++' Header Files from 'Abseil'")
    (description
     "Wraps the Abseil C++ library for use by R packages.  Original files are from
<https://github.com/abseil/abseil-cpp>.  Patches are located at
<https://github.com/doccstat/abseil-r/tree/main/local/patches>.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-abmr
  (package
    (name "r-abmr")
    (version "1.0.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "abmR" version))
       (sha256
        (base32 "0klfrclmwxsqm3aazs9jlw8mh5rzcsvm2wjk2r1ycx76kvkx8wii"))))
    (properties `((upstream-name . "abmR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tmap
                             r-table1
                             r-swfscmisc
                             r-sp
                             r-sf
                             r-rnaturalearth
                             r-raster
                             r-purrr
                             r-maps
                             r-kableextra
                             r-gtsummary
                             r-gstat
                             r-googledrive
                             r-ggplot2
                             r-geosphere))
    (home-page "https://cran.r-project.org/package=abmR")
    (synopsis "Agent-Based Models in R")
    (description
     "Supplies tools for running agent-based models (ABM) in R, as discussed in
Gochanour et al. (2022) <doi:10.1111/2041-210X.14014>.  The package contains two
movement functions, each of which is based on the Ornstein-Uhlenbeck (OU) model
(Ornstein & Uhlenbeck, 1930) <doi:10.1103/@code{PhysRev.36.823>}.  It also
contains several visualization and data summarization functions to facilitate
the presentation of simulation results.")
    (license license:gpl3+)))

(define-public r-abm
  (package
    (name "r-abm")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ABM" version))
       (sha256
        (base32 "1sdjazf02kx7ddxizfz9nb9r7yaqcw7k6xkxmxqmm2a3wi1xvfap"))))
    (properties `((upstream-name . "ABM")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-r6))
    (home-page "https://github.com/junlingm/ABM")
    (synopsis "Agent Based Model Simulation Framework")
    (description
     "This package provides a high-performance, flexible and extensible framework to
develop continuous-time agent based models.  Its high performance allows it to
simulate millions of agents efficiently.  Agents are defined by their states
(arbitrary R lists).  The events are handled in chronological order.  This
avoids the multi-event interaction problem in a time step of discrete-time
simulations, and gives precise outcomes.  The states are modified by provided or
user-defined events.  The framework provides a flexible and customizable
implementation of state transitions (either spontaneous or caused by agent
interactions), making the framework suitable to apply to epidemiology and
ecology, e.g., to model life history stages, competition and cooperation, and
disease and information spread.  The agent interactions are flexible and
extensible.  The framework provides random mixing and network interactions, and
supports multi-level mixing patterns.  It can be easily extended to other
interactions such as inter- and intra-households (or workplaces and schools) by
subclassing an R6 class.  It can be used to study the effect of age-specific,
group-specific, and contact- specific intervention strategies, and complex
interactions between individual behavior and population dynamics.  This modeling
concept can also be used in business, economical and political models.  As a
generic event based framework, it can be applied to many other fields.  More
information about the implementation and examples can be found at
<https://github.com/junlingm/ABM>.")
    (license license:gpl2+)))

(define-public r-ablasso
  (package
    (name "r-ablasso")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ablasso" version))
       (sha256
        (base32 "0xgj3bfjahvnq34r0312d00l3wpdwfnqv7a3j2lklazc69cg7wra"))))
    (properties `((upstream-name . "ablasso")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-matrixstats r-hdm))
    (home-page "https://cran.r-project.org/package=ablasso")
    (synopsis "Arellano-Bond LASSO Estimator for Dynamic Linear Panel Models")
    (description
     "This package implements the Arellano-Bond estimation method combined with LASSO
for dynamic linear panel models.  See Chernozhukov et al. (2024) \"Arellano-Bond
LASSO Estimator for Dynamic Linear Panel Models\". @code{arXiv} preprint
<doi:10.48550/@code{arXiv.2402.00584>}.")
    (license license:gpl3+)))

(define-public r-abjdata
  (package
    (name "r-abjdata")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "abjData" version))
       (sha256
        (base32 "0q7l9lxm41pjkdv98axx87wcxjxfyccfwi2k1b29g07pfjszs0hv"))))
    (properties `((upstream-name . "abjData")))
    (build-system r-build-system)
    (home-page "https://abjur.github.io/abjData/")
    (synopsis
     "Databases Used Routinely by the Brazilian Jurimetrics Association")
    (description
     "The Brazilian Jurimetrics Association (ABJ in Portuguese, see
<https://abj.org.br/> for more information) is a non-profit organization which
aims to investigate and promote the use of statistics and probability in the
study of Law and its institutions.  This package has a set of datasets commonly
used in our book.")
    (license license:expat)))

(define-public r-abglasso
  (package
    (name "r-abglasso")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "abglasso" version))
       (sha256
        (base32 "0h8p912l0202wyr5vjsbzw5mr70m56ab39wv833g6c4c3187479y"))))
    (properties `((upstream-name . "abglasso")))
    (build-system r-build-system)
    (propagated-inputs (list r-statmod r-pracma r-mass))
    (home-page "https://cran.r-project.org/package=abglasso")
    (synopsis "Adaptive Bayesian Graphical Lasso")
    (description
     "This package implements a Bayesian adaptive graphical lasso data-augmented block
Gibbs sampler.  The sampler simulates the posterior distribution of precision
matrices of a Gaussian Graphical Model.  This sampler was adapted from the
original MATLAB routine proposed in Wang (2012) <doi:10.1214/12-BA729>.")
    (license license:gpl3)))

(define-public r-abess
  (package
    (name "r-abess")
    (version "0.4.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "abess" version))
       (sha256
        (base32 "02261lda38931n3rgfm67ml85618wcysvl3hvr4yg9rc5y26gbfs"))))
    (properties `((upstream-name . "abess")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp r-matrix r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/abess-team/abess")
    (synopsis "Fast Best Subset Selection")
    (description
     "Extremely efficient toolkit for solving the best subset selection problem
<https://www.jmlr.org/papers/v23/21-1060.html>.  This package is its R
interface.  The package implements and generalizes algorithms designed in
<doi:10.1073/pnas.2014241117> that exploits a novel sequencing-and-splicing
technique to guarantee exact support recovery and globally optimal solution in
polynomial times for linear model.  It also supports best subset selection for
logistic regression, Poisson regression, Cox proportional hazard model, Gamma
regression, multiple-response regression, multinomial logistic regression,
ordinal regression, (sequential) principal component analysis, and robust
principal component analysis.  The other valuable features such as the best
subset of group selection <doi:10.1287/ijoc.2022.1241> and sure independence
screening <doi:10.1111/j.1467-9868.2008.00674.x> are also provided.")
    (license (list license:gpl3+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-aberrance
  (package
    (name "r-aberrance")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "aberrance" version))
       (sha256
        (base32 "0rpmapx5ji69hfszbhrhvjmn5i6a4jdgy0g11w59xdsrpzc40sv8"))))
    (properties `((upstream-name . "aberrance")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://github.com/kyliegorney/aberrance")
    (synopsis "Detect Aberrant Behavior in Test Data")
    (description
     "Detect several types of aberrant behavior, including answer copying, answer
similarity, nonparametric misfit, parametric misfit, preknowledge, rapid
guessing, and test tampering.")
    (license license:gpl3+)))

(define-public r-abdiv
  (package
    (name "r-abdiv")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "abdiv" version))
       (sha256
        (base32 "053l94br8sdy30078ssncq5i5zvdxa3m72ymbwbh0cm3zmsljj29"))))
    (properties `((upstream-name . "abdiv")))
    (build-system r-build-system)
    (propagated-inputs (list r-ape))
    (home-page "https://github.com/kylebittinger/abdiv")
    (synopsis "Alpha and Beta Diversity Measures")
    (description
     "This package provides a collection of measures for measuring ecological
diversity.  Ecological diversity comes in two flavors: alpha diversity measures
the diversity within a single site or sample, and beta diversity measures the
diversity across two sites or samples.  This package overlaps considerably with
other R packages such as vegan', @code{gUniFrac}', betapart', and fossil'.  We
also include a wide range of functions that are implemented in software outside
the R ecosystem, such as scipy', Mothur', and scikit-bio'.  The implementations
here are designed to be basic and clear to the reader.")
    (license license:expat)))

(define-public r-abclass
  (package
    (name "r-abclass")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "abclass" version))
       (sha256
        (base32 "1cg8xfzxya585wzk6y2kf4flgjxlspzqqqksbig8nlxmwxxj413p"))))
    (properties `((upstream-name . "abclass")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://wwenjie.org/abclass")
    (synopsis "Angle-Based Large-Margin Classifiers")
    (description
     "Multi-category angle-based large-margin classifiers.  See Zhang and Liu (2014)
<doi:10.1093/biomet/asu017> for details.")
    (license license:gpl3+)))

(define-public r-abasequence
  (package
    (name "r-abasequence")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "abasequence" version))
       (sha256
        (base32 "033mbc1ghkadvxdckz1f04p8d5ml3ifmssdd1y4qj70nx7x9hs4l"))))
    (properties `((upstream-name . "abasequence")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=abasequence")
    (synopsis "Coding 'ABA' Patterns for Sequence Data")
    (description
     "This package provides a suite of functions for analyzing sequences of events.
Users can generate and code sequences based on predefined rules, with a special
focus on the identification of sequences coded as ABA (when one element appears,
followed by a different one, and then followed by the first).  Additionally, the
package offers the ability to calculate the length of consecutive ABA'-coded
sequences sharing common elements.  The methods implemented in this package are
based on the work by Ziembowicz, K., Rychwalska, A., & Nowak, A. (2022).
<doi:10.1177/10464964221118674>.")
    (license license:gpl3)))

(define-public r-aattools
  (package
    (name "r-aattools")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AATtools" version))
       (sha256
        (base32 "0sn8sc25syvni45w99h76z0als91a9cc4jg3visp81dqw1z4mml9"))))
    (properties `((upstream-name . "AATtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-foreach r-dplyr r-doparallel))
    (home-page "https://cran.r-project.org/package=AATtools")
    (synopsis
     "Reliability and Scoring Routines for the Approach-Avoidance Task")
    (description
     "Compute approach bias scores using different scoring algorithms, compute
bootstrapped and exact split-half reliability estimates, and compute confidence
intervals for individual participant scores.")
    (license license:gpl3)))

(define-public r-aalenjohansen
  (package
    (name "r-aalenjohansen")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "AalenJohansen" version))
       (sha256
        (base32 "0w7fj7l2pyz2y1dywpkdxb9qc4v89d57l4ddnjraxsfppk5ga3i4"))))
    (properties `((upstream-name . "AalenJohansen")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=AalenJohansen")
    (synopsis "Conditional Aalen-Johansen Estimation")
    (description
     "This package provides the conditional Nelson-Aalen and Aalen-Johansen
estimators.  The methods are based on Bladt & Furrer (2023), in preparation.")
    (license license:gpl2+)))

