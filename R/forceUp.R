forceUp<-function(){
prse<-  deparse(sys.call()[[1]]) 
 pkg<-environment(fun=prse)  
 info<-packageDescription(pkg) 
 file.path(info$GithubUsername,info$GithubRepo) 
  #devtools::install_github(repo=.,force=TRUE)
}
