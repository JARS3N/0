forceUp<-function(){
pkg<-environment(fun=deparse(sys.call()[[1]])) 
#pkginfo<-packageDescription(pkg)
#repo<-file.path(pkginfo$GithubUsername,pkginfo$GithubRepo)
#devtools::install_github(repo,force=TRUE)
 pkg
}
