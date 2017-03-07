forceUp<-function(){
  require(magrittr)
  deparse(sys.call()[[1]]) %>% 
  environment(fun=.) %>% 
  packageDescription(.) %>% 
  file.path(.$GithubUsername,.$GithubRepo) #%>% 
  #devtools::install_github(repo=.,force=TRUE)
}
