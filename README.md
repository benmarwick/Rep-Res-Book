# [Reproducible Research with R and RStudio](http://christophergandrud.github.io/RepResR-RStudio/)

### [Christopher Gandrud](http://christophergandrud.blogspot.com/p/biocontact.html)

### [CRC Press/Chapman & Hall division of Taylor & Francis](http://www.crcpress.com/product/isbn/9781466572843)


---

The files in this repository comprise the draft version of **Reproducible Research with R and RStudio**.

### File Organization

The main files used to create the manuscript of the book are in the `Source` folder. This folder contains the parent *knitr* `.Rnw` file in the `Source/Parent/` directory. Child documents for the book chapters are in the `Source/Children/` directory and child files for the book's front matter are in the `Source/FrontMatter/` directory.

### Reproduce the Book

The book can be reproduced by using the R package *knitr*. To do this:

1. Make sure you have [R](http://www.r-project.org/) and [LaTeX](http://www.latex-project.org/ftp.html) installed on your computer.

2. Place this repository in a file called `git_repositories` in your root directory.

3. Run the *BookMake.R* make file in R. Note: you must install the *knitr* R package before running this file.

Note: To install the R packages used to compile the book open the *Source/Children/FrontMatter/Packages.Rnw*. Find:

```
doInstall <- FALSE
```

in the code chunk labeled "FrontPackageCitations". Change the value `FALSE` to `TRUE` and run the code chunk.

**Note:** the LaTeX file will compile with warnings. Warnings related to the subfigures should be ignored (the process that creates these warnings was kept despite the warnings for stylistic reasons.) But because of this you will need to compile the document a few times to get the full text with bibliography and index.

#### Reproducing the Book in Windows.

If you would like to reproduce the book and are using Windows you will need to install [RTools](http://cran.r-project.org/bin/windows/Rtools/installer.html). Please use the recommended installation to ensure that your system PATH is set up correctly. Otherwise your computer will not know where the tools are.

#### Reproducing this Book in Linux

You will need to install the the R packages RCurl and XML seperately. See [this post](https://github.com/cboettig/treeBASE/issues/5) for more details.

### Session Info
The current version of the book manuscript was compiled with [RStudio](http://www.rstudio.com/) (v. 0.98.134 developer build) with the following R session:


```
## R version 3.0.1 (2013-05-16)
## Platform: x86_64-apple-darwin10.8.0 (64-bit)
## 
## locale:
## [1] en_GB.UTF-8/en_GB.UTF-8/en_GB.UTF-8/C/en_GB.UTF-8/en_GB.UTF-8
## 
## attached base packages:
##  [1] tools     grid      splines   stats     graphics  grDevices utils    
##  [8] datasets  methods   base     
## 
## other attached packages:
##  [1] reshape_0.8.4         foreign_0.8-54        ZeligBayesian_0.1    
##  [4] MCMCpack_1.3-3        coda_0.16-1           Zelig_4.1-3          
##  [7] sandwich_2.2-10       boot_1.3-9            xtable_1.7-1         
## [10] WDI_2.2               ROAuth_0.9.3          treebase_0.0-6       
## [13] ape_3.0-9             texreg_1.28           tables_0.7           
## [16] sqldf_0.4-6.4         RSQLite.extfuns_0.0.1 RSQLite_0.11.4       
## [19] chron_2.3-43          gsubfn_0.6-5          proto_0.3-10         
## [22] DBI_0.2-7             slidify_0.3.3         stargazer_4.0        
## [25] RJSONIO_1.0-3         RCurl_1.95-4.1        bitops_1.0-5         
## [28] reshape2_1.2.2        repmis_0.2.6.1        quantmod_0.4-0       
## [31] TTR_0.22-0            xts_0.9-5             zoo_1.7-10           
## [34] Defaults_1.1-1        plyr_1.8              openair_0.8-5        
## [37] memisc_0.96-6         MASS_7.3-28           lattice_0.20-15      
## [40] markdown_0.6.3        knitcitations_0.4-7   bibtex_0.3-6         
## [43] Hmisc_3.12-2          Formula_1.1-1         survival_2.37-4      
## [46] httr_0.2              googleVis_0.4.3       ggplot2_0.9.3.1      
## [49] gdata_2.13.2          formatR_0.9           extrafont_0.14       
## [52] estout_1.2            digest_0.6.3          devtools_1.3         
## [55] data.table_1.8.8      countrycode_0.14      brew_1.0-6           
## [58] apsrtable_0.8-8       animation_2.2         knitr_1.4.1          
## 
## loaded via a namespace (and not attached):
##  [1] car_2.0-18          cluster_1.14.4      codetools_0.2-8    
##  [4] colorspace_1.2-2    dichromat_2.0-0     evaluate_0.4.7     
##  [7] gtable_0.1.2        gtools_3.0.0        highr_0.2.1        
## [10] labeling_0.2        latticeExtra_0.6-24 Matrix_1.0-12      
## [13] memoise_0.1         mgcv_1.7-24         munsell_0.4.2      
## [16] nlme_3.1-110        parallel_3.0.1      RColorBrewer_1.0-5 
## [19] rjson_0.2.12        rpart_4.1-1         Rttf2pt1_1.2       
## [22] scales_0.2.3        stringr_0.6.2       tcltk_3.0.1        
## [25] twitteR_1.1.7       whisker_0.3-2       XML_3.95-0.2       
## [28] yaml_2.1.7
```


---

(c) Christopher Gandrud (2013)
