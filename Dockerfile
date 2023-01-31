FROM mcr.microsoft.com/azure-functions/dotnet:3.0-appservice
ENV AzureWebJobsScriptRoot=/home/site/wwwroot \
  AzureFunctionsJobHost__Logging__Console__IsEnabled=true


# install the linux libraries needed for plumber
RUN apt-get update -qq && apt-get install -y \
  libssl-dev \
  libcurl4-gnutls-dev \
  libsodium-dev \
  r-base

# create the application folder
RUN mkdir -p ~/application

# copy everything from the current directory into the container
COPY "/" "application/"
WORKDIR "application/"

# open port 80 to traffic
EXPOSE 80

# install plumber
RUN R -e "install.packages('plumber')"

# when the container starts, start the main R script
ENTRYPOINT ["Rscript", "main.R"]
