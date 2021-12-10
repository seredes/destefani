if (!requireNamespace("remotes")) install.packages("remotes")
remotes::install_github("rstudio/blogdown")

library(blogdown)
new_site(theme = "wowchemy/starter-academic")

blogdown::new_post(title = "Hi Hugo", 
                   ext = '.Rmarkdown', 
                   subdir = "post")
blogdown::config_Rprofile() 
serve_site()

file.edit(".gitignore")
blogdown::check_gitignore()
usethis::create_github_token()
gitcreds::gitcreds_set()
