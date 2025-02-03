FROM yzhangtufts/rserver:4.4.0
    
## Bioinformatics packages
RUN Rscript -e "BiocManager::install('AnnotationDbi')" \
    && Rscript -e "devtools::install_github('nghiavtr/BPSC')" \
    && Rscript -e "devtools::install_github('bnprks/BPCells')" \
    && Rscript -e "BiocManager::install('apeglm')" \ 
    && Rscript -e "BiocManager::install('batchelor')" \ 
    && Rscript -e "BiocManager::install('biomaRt')" \
    && Rscript -e "BiocManager::install('BSgenome')" \
    && Rscript -e "BiocManager::install('clustifyr')" \
    && Rscript -e "BiocManager::install('CHETAH')" \
    && Rscript -e "BiocManager::install(c('clusterProfiler'))" \
    && Rscript -e "BiocManager::install(c('DelayedMatrixStats'))" \
    && Rscript -e "BiocManager::install(c('DelayedArray'))" \
    && Rscript -e "BiocManager::install(c('DEGreport'))" \
    && Rscript -e "BiocManager::install(c('DESeq2'))" \
    && Rscript -e "BiocManager::install(c('DESpace'))" \
    && Rscript -e "BiocManager::install(c('DOSE'))"  \
    && Rscript -e "BiocManager::install('edgeR')" \
    && Rscript -e "BiocManager::install('EGSEA')" \
    && Rscript -e "BiocManager::install('EGSEAdata')" \
    && Rscript -e "BiocManager::install('enrichplot')" \
    && Rscript -e "BiocManager::install('FlowSorted.Blood.EPIC')" \
    && Rscript -e "BiocManager::install(c('GEOquery'))" \
    && Rscript -e "BiocManager::install(c('GenomicRanges'))" \
    && Rscript -e "BiocManager::install('GO.db')" \
    && Rscript -e "BiocManager::install('GOSim')" \
    && Rscript -e "BiocManager::install('EnhancedVolcano')" \
    && Rscript -e "BiocManager::install(c('escape'))" \
    && Rscript -e "BiocManager::install('GSVA')" \
    && Rscript -e "BiocManager::install('impute')" \
    && Rscript -e "BiocManager::install('LoomExperiment')" \
    && Rscript -e "BiocManager::install('OmnipathR')" \ 
    && Rscript -e "BiocManager::install(c('org.Cf.eg.db', 'org.Sc.sgd.db', 'org.Hs.eg.db', 'org.Mm.eg.db', 'org.Rn.eg.db'))" \
    && Rscript -e "BiocManager::install('preprocessCore')" \
    && Rscript -e "BiocManager::install('qusage')" \
    && Rscript -e "BiocManager::install(c('ReactomePA'))" \
    && Rscript -e "BiocManager::install(c('SpatialDecon'))" \
    && Rscript -e "install.packages('WGCNA')" \
    && Rscript -e "BiocManager::install('EnhancedVolcano')" \
    && Rscript -e "install.packages('pals')" \
    && Rscript -e "install.packages('hgnc')" \
    && Rscript -e "BiocManager::install('orthogene')" \
    && Rscript -e "BiocManager::install('GSVA')" \
    && Rscript -e "BiocManager::install('biomaRt')" \
    && Rscript -e "BiocManager::install('clustifyr')" \
    && Rscript -e "BiocManager::install(c('escape'))" \
    && Rscript -e "BiocManager::install(c('DelayedMatrixStats'))" \
    && Rscript -e "BiocManager::install(c('DelayedArray'))" \
    && Rscript -e "BiocManager::install(c('escape'))" \
    && Rscript -e "BiocManager::install(c('clusterProfiler'))" \
    && Rscript -e "BiocManager::install(c('ReactomePA'))" \
    && Rscript -e "BiocManager::install(c('DOSE'))" \
    && Rscript -e "BiocManager::install('S4Arrays')" \
    && Rscript -e "BiocManager::install('S4Vectors')" \
    && Rscript -e "install.packages('sctransform')" \
    && Rscript -e 'BiocManager::install("slingshot")' \
    && Rscript -e 'install.packages("scCustomize")' \
    && Rscript -e "devtools::install_github('cellgeni/sceasy')" \
    && Rscript -e 'install.packages("janitor")' \
    && Rscript -e 'BiocManager::install("hypeR")' \
    && Rscript -e "devtools::install_github('statOmics/zingeR')" 


## Install Seurat5, seurat-wrappers and singleR
RUN Rscript -e "devtools::install_version('Matrix')" \
    && Rscript -e "install.packages('SeuratObject')" \
    && Rscript -e "install.packages('Seurat')" \
    && Rscript -e "devtools::install_github('satijalab/seurat-data')" \
    && Rscript -e "BiocManager::install('SingleR')" 


## scDblFinder and DropletUtils
RUN Rscript -e 'BiocManager::install("scDblFinder")' \
    && Rscript -e 'BiocManager::install("DropletUtils")' \
    && Rscript -e 'BiocManager::install("dittoSeq")'

## scCATCH
RUN Rscript -e 'BiocManager::install("scCATCH")'


## CoGAPS, tricycle, celldex, miQC, Nebulosa, schex, and rliger
RUN Rscript -e 'BiocManager::install("CoGAPS")' \
    && Rscript -e 'BiocManager::install("tricycle")' \
    && Rscript -e 'BiocManager::install("celldex")' \ 
    && Rscript -e 'BiocManager::install("miQC")' \    
    && Rscript -e 'BiocManager::install("Nebulosa")' \
    && Rscript -e 'BiocManager::install("schex")' \ 
    && Rscript -e "install.packages('rliger')"

## scMappR
RUN Rscript -e 'BiocManager::install("pcaMethods")' \
    && Rscript -e 'BiocManager::install("preprocessCore")' \
    && Rscript -e 'BiocManager::install("GSVA")' \
    && Rscript -e 'install.packages("ADAPTS")' \
    && Rscript -e "install.packages('scMappR')"


## Harmony, PCAtools, SoupX, scde, sincell
RUN Rscript -e "install.packages('harmony')" \
    && Rscript -e 'BiocManager::install("PCAtools")' \
    && Rscript -e "install.packages('SoupX')" \
    && Rscript -e 'BiocManager::install("scde")' \
    && Rscript -e 'BiocManager::install("sincell")'

## BioSingular, glmGamPoi, GSVA, splatter, muscat, BayesSpace, pagoda2
RUN Rscript -e "BiocManager::install('BiocSingular')" \ 
    && Rscript -e "BiocManager::install('glmGamPoi')" \
    && Rscript -e 'BiocManager::install("GSVA")' \
    && Rscript -e 'BiocManager::install("splatter")' \
    && Rscript -e 'BiocManager::install("muscat")' \ 
    && Rscript -e 'BiocManager::install("BayesSpace")' \
    && Rscript -e "install.packages('pagoda2')"

## signac, scHot, M3Drop, cellkonverter, iCellR
RUN Rscript -e "install.packages('Signac')" \
    && Rscript -e 'BiocManager::install("scHOT")' \
    && Rscript -e 'BiocManager::install("M3Drop")' \
    && Rscript -e 'BiocManager::install("zellkonverter")'\
    && Rscript -e "install.packages('scatterplot3d')" \
    && Rscript -e "install.packages('NbClust')" \
    && Rscript -e "install.packages('iCellR')"

# monocle
RUN Rscript -e "devtools::install_github('cysouw/qlcMatrix')" \
    && Rscript -e 'BiocManager::install("monocle")'

## cellxgene.census
RUN pip install tiledb \
    && Rscript -e "install.packages('tiledb')" \
    && Rscript -e "install.packages('cellxgene.census',repos=c('https://chanzuckerberg.r-universe.dev', 'https://cloud.r-project.org'))"

# Seuratwrappers
RUN Rscript -e "remotes::install_github('satijalab/seurat-wrappers')" \
    && Rscript -e "devtools::install_github('chris-mcginnis-ucsf/DoubletFinder')" \
    && Rscript -e "remotes::install_github('omnideconv/immunedeconv')" \
    && Rscript -e "devtools::install_github('arc85/singleseqgset')" \
    && Rscript -e "remotes::install_github('mojaveazure/seurat-disk')"

## Install  monocle3
RUN Rscript -e "BiocManager::install(c('BiocGenerics', 'DelayedArray', 'DelayedMatrixStats', \
                        'lme4', 'S4Vectors', 'batchelor', 'SingleCellExperiment', \
                       'SummarizedExperiment', 'HDF5Array', \
                       'terra', 'ggrastr'))" \
    && Rscript -e "devtools::install_github('cole-trapnell-lab/monocle3')"

# SCOPfunctions
RUN Rscript -e 'BiocManager::install("MAST")' \
    && Rscript -e 'devtools::install_github("CBMR-Single-Cell-Omics-Platform/SCOPfunctions")'

## Install ProjecTILs
RUN Rscript -e "install.packages('scGate')" \
    && Rscript -e "remotes::install_github('carmonalab/STACAS')" \
    && Rscript -e "remotes::install_github('carmonalab/ProjecTILs')" \
    && Rscript -e "remotes::install_github('10XGenomics/loupeR')"


## CellAnnotatoR
RUN Rscript -e "install.packages('conos')" \
    && Rscript -e "devtools::install_github('khodosevichlab/CellAnnotatoR')"


## Garnett
RUN Rscript -e "BiocManager::install(c('DelayedArray', 'DelayedMatrixStats'))" \
    && Rscript -e "devtools::install_github('cole-trapnell-lab/garnett')"


## velocyto.R
RUN Rscript -e "devtools::install_github('velocyto-team/velocyto.R')"

## CellChat
RUN Rscript -e "install.packages('NMF')" \
    && Rscript -e "devtools::install_github('jokergoo/circlize')" \
    && Rscript -e "BiocManager::install('ComplexHeatmap')" \
    && Rscript -e "devtools::install_github('sqjin/CellChat')"
    
## presto
RUN Rscript -e "devtools::install_github('immunogenomics/presto')"
