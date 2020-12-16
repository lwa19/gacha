library("workflowr")
wflow_git_config(user.name = "Leah Wang", user.email = "lwang19@uchicago.edu")

setwd("~/Documents/GitHub/gacha")
wflow_start("gacha", git = F)
wflow_build()
wflow_status()
wflow_publish(c("analysis/index.Rmd", "analysis/about.Rmd", "analysis/license.Rmd"),
              "Publish the initial files for myproject")
wflow_use_github("lwa19")