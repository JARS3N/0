taskList<-function(dir=asis){
  suppressPackageStartupMessages(require(dplyr))
  system("tasklist",intern=T)[-1*c(1:3)] %>%
    lapply(.,{ . %>%  gsub(" K","",.)}) %>% 
    lapply(.,{. %>%  gsub("System Idle Process","SystemIdleProcess",.)}) %>% 
    lapply(.,strsplit,split="[ ]+") %>%
    lapply(.,unlist) %>% 
    lapply(., function(b){
      data.frame(Image_Name=as.character(b[1]),
                 PID=as.numeric(b[2]),
                 Session_Name=as.character(b[3]),
                 SessionNumber=as.numeric(b[4]),
                 Mem_Usage=as.numeric(gsub("[,]","",b[5])),
                 stringsAsFactors=FALSE
      )
    }) %>% 
    bind_rows() %>% 
    { if(!(quote(dir)=="desc")){.}else{arrange(.,desc(Mem_Usage))}
      }
}

KILL<-function(exe){
  system2("taskkill",args=c("/f","/im",exe))
}
