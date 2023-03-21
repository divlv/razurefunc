FROM emergn/razurefunc:latest


RUN apt-get update -qq && apt-get install -y r-base-dev

RUN apt-get update -qq && apt-get install -y r-cran-curl r-cran-openssl r-cran-xml2 

RUN apt-get install -y libgdal-dev --fix-missing

RUN apt-get install -y libxml2-dev libcurl4-openssl-dev libssl-dev


# Prepare and install Tidyverse
RUN apt-get update -qq && apt-get install -y software-properties-common
RUN apt-get update -qq && add-apt-repository ppa:c2d4u.team/c2d4u4.0+
RUN apt-get install -y r-cran-tidyverse

RUN R -e "install.packages('cranlogs')"

COPY services_tidyverse.R /application/services.R

WORKDIR "/application/"
