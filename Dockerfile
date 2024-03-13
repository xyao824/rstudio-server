FROM rocker/rstudio:latest

EXPOSE 8787
WORKDIR /home/rstudio/rscripts
COPY . .

ENV USER=rstudio
ENV PASSWORD=rstudio