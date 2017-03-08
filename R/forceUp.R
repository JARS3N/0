forceUp<-function(){
pkg<-environment(deparse(sys.call()[[1]]))$.packageName
pkginfo<-packageDescription(pkg)
repo<-file.path(pkginfo$GithubUsername,pkginfo$GithubRepo)
devtools::install_github(repo,force=TRUE)
}


forceUp2<-function(){
pkg<-environment(deparse(sys.call()[[1]]))#$.packageName
#pkginfo<-packageDescription(pkg)
#repo<-file.path(pkginfo$GithubUsername,pkginfo$GithubRepo)
#list(pkg=pkg,pkginfo=pkginfo,repo=repo)
  pkg
}
