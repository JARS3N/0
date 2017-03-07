forceUp<-function(){
  require(magrittr)
  sys.call()[[1]] %>% 
  deparse(.) %>% 
  environment(fun=.) %>% 
  packageDescription(.) %>% 
  file.path(.$GithubUsername,.$GithubRepo) %>% 
  devtools::install_github(repo=.,force=TRUE)
}
