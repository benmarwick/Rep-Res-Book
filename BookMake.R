#################
# Make file for the book Reproducible Research with R and RStudio
# Christopher Gandrud
# Updated: 31 July 2013
#################

# This R source code compiles the manuscript for the book Reproducible Research with R and RStudio.
# It also updates the main README file.

## Installing required packages
# Note: To install the R packages used to compile the book open the Source/FrontMatter/Packages.Rnw. 
# Find: doInstall <- FALSE in the code chunk labeled "FrontPackageCitations". 
# Change the value `FALSE` to `TRUE` and run the code chunk.

# Load knitr package
library(knitr)

# Specify working directories.
## Rep-Res-Parent.Rnw
ParentDirectory <- "/git_repositories/Rep-Res-Book/Source/"
## README.Rmd
SetupDirectory <- "/git_repositories/Rep-Res-Book/Writing_Setup/"

##### Create PDF Book Manuscript ####
# Compile the book's parent document
setwd(ParentDirectory)
knitr::knit2pdf(input = "Rep-Res-Parent.Rnw")

# Embed fonts
# This is largely for complete replication purposes only and is not necessary.
## If using Windows please see extrafont set up instructions at https://github.com/wch/extrafont
# extrafont::embed_fonts("Rep-Res-Parent.pdf")

# Clean up /git_repositories/Rep-Res-Book/Source/Parent/
# DeleteFiles <- setdiff(list.files(ParentDirectory), c("Rep-Res-Parent.Rnw", 
#                                                      "Rep-Res-Parent.pdf", 
#                                                      "krantz.cls", "figure", 
#                                                      "cache")
#                       )
# unlink(DeleteFiles)

#### README ####
# Change working directory to /Rep-Res-Book/Writing_Setup/
setwd(SetupDirectory)

# Knit README file
knitr::knit(input = "README.Rmd", output = "/git_repositories/Rep-Res-Book/README.md")
