# Paketlerin yüklenmesi
packages =  c("ggplot2", "dplyr", "tidyr", "data.table", 'corrplot', 
              'gridExtra', 'forecast', 'tseries', 'TSA', 'tibble', 'TTR', 
              'xts', 'dygraphs', 'assertthat')
my.install <- function(pkg, ...){
  if (!(pkg %in% installed.packages()[,1])) {
    install.packages(pkg)
  }
  return (library(pkg, ...))
}
purrr::walk(packages, my.install, 
            character.only = TRUE, 
            warn.conflicts = FALSE)
