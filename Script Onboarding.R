load("setup/server setup/package list - R server.Rdata")


load("C:/Users/andre/Google Drive/Global Trade Alert/package list - R server.Rdata")


packages.to.install=as.character(my.packages$Package[!my.packages$Package %in% installed.packages()])

install.packages(packages.to.install)

devtools::install_github("global-trade-alert/gtalibrary")
devtools::install_github("global-trade-alert/gtasql@origin")
devtools::install_github("global-trade-alert/gtabastiat")
webdriver::install_phantomjs()
failed.installations=as.character(packages.to.install[!packages.to.install %in% installed.packages()])

failed.installations

git --version
install.packages("usethis")

library(usethis)
use_git_config(user.name = "Andre Brotto", user.email = "andre.brotto@outlook.com")


install.packages("gitcreds")
library(gitcreds)
gitcreds_set()
gitcreds_set()