

forceUp2<-function(){
  require(magrittr)
deparse(sys.call()[[1]]) %>%
gsub("[:]{2}[a-z,A-Z,0-9]+","",.)
#strsplit(.,"[:]{2}") #%>% 
 # unlist() %>%
 # .[1]
#strsplit(.,"::")[[1]][1] #%>%
#packageDescription(.)%>%
#file.path(.$GithubUsername,.$GithubRepo)#%>%
#list(pkg=pkg,pkginfo=pkginfo,repo=repo)
}



forceUp<-function(){
require(magrittr)
pkg<-gsub("[:]{2}[A-Z|a-z|0-9]+","",deparse(sys.call()[[1]])) 
info<-packageDescription(pkg)  
file.path(info$GithubUsername,info$GithubRepo)  
}
