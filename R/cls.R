cls <- function() {
  pkgs<-.packages() # get list of pkgs loaded
  pkgs<-pkgs[(!pkgs %in% c('methods','base','stats','utils'))] #remove these from the list
  pkg.locs<-sapply(pkgs,devtools::inst) # get location of the packges still in list
  lapply(pkg.locs,devtools::unload) #finally unload those packages in list
  rm(list = ls(envir = globalenv()),envir = globalenv()) #clear Vars from global enviroment
  gc()  #collect garbage
    .rs.restartR() #clear session
  cat("\014") #clear repl
  message("now daisy fresh!")
}
