forceUp<-function(){
require(magrittr)
pkg<-gsub("[:]{2}[A-Z|a-z|0-9]+","",deparse(sys.call()[[1]])) 
info<-packageDescription(pkg)  
fl<-file.path(info$GithubUsername,info$GithubRepo)  
 devtools::install_github(repo=fl,force=T)
}
