library("workflowr")
wflow_git_config(user.name = "Leah Wang", user.email = "lwang19@uchicago.edu")

# Initializing repo
setwd("~/Documents/GitHub/gacha")
wflow_start("gacha", git = F)
wflow_build()
wflow_status()
wflow_publish(c("analysis/index.Rmd", "analysis/about.Rmd", "analysis/license.Rmd"),
              "Publish the initial files for myproject")
wflow_use_github("lwa19") # how come I always forget this useful function. 


# New pages: 
wflow_open('analysis/pity.Rmd')
wflow_publish("analysis/pity.Rmd", "started pity file")
wflow_publish(c("analysis/index.Rmd", "analysis/gacha.Rmd", "analysis/bonus.Rmd", 
                "analysis/pity.Rmd"), 
              "case studies AFTER thesis")

## scratch work:

# Each pull is a Bernoulli Variable $X_i$ and are independentally and identically distributed. Therefore, we can apply the geometric distribution and obtain the probability of obtaining the first success at the $k$-th trial: 
#   
#   $$ Pr(X=k) = (1-p)^{k-1}p$$
#   
#   The expectation of a geometric distribution is $\mu = 1/p$, and the variance os $\sigma^2 = \frac{1-p}{p^2}$. 

