# Packages to install before the first execution:
#install.packages("exams", dependencies=TRUE)

# Load the package (necessary after every RStudio restart)
library(exams)

# Preview the questions as HTML
exams2html("B1.Rmd", converter = "pandoc-mathjax", mathjax = TRUE, name = "B1")

# Generate the exam as a PDF
set.seed(1234)
exams2pdf("B1.Rmd", n = 3, name = "B1")

# Generate an XML file for importing into BOKUlearn
set.seed(1234)
exams2moodle("B1.Rmd", n = 3, converter = "pandoc-mathjax", name = "B1")
