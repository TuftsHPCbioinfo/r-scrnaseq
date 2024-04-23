FROM yzhangtufts/r-scrnaseq:4.3.2
RUN Rscript -e 'install.packages("scCustomize")' && Rscript -e 'install.packages("janitor")' && \
    Rscript -e 'BiocManager::install("hypeR")'
Run apt-get update &&  apt-get install -y vim && \
    echo session-timeout-minutes=0 >> /etc/rstudio/rsession.conf  && \
    echo session-timeout-kill-hours=96 >> /etc/rstudio/rsession.conf && \
    echo session-save-action-default=no >> /etc/rstudio/rsession.conf 
