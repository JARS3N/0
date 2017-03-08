forceUp<-function(){
pkg<-environment(deparse(sys.call()[[1]]))$.packageName
pkginfo<-packageDescription(pkg)
repo<-file.path(pkginfo$GithubUsername,pkginfo$GithubRepo)
devtools::install_github(repo,force=TRUE)
}


forceUp2<-function(){
  require(magrittr)
deparse(sys.call()[[1]])# %>%
strsplit(.,"::")[[1]][1] #%>%
#packageDescription(.)%>%
#file.path(.$GithubUsername,.$GithubRepo)#%>%
#list(pkg=pkg,pkginfo=pkginfo,repo=repo)
}
