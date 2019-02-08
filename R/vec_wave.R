# converts a vector into a wave of the kernel density
vec_wave <- function(vec, freq = 10,kernel="gaussian") {
  # kernel must use one of
  #"gaussian", "rectangular", "triangular", 
  #"epanechnikov", "biweight", "cosine" or "optcosine"
  U<-density(vec,kernel=kernel)
  x<-U$x
  y<-U$y
 data.table::rbindlist( Map(
    f=function(ysign, seq) {
      data.frame(x = x+((max(x) * seq) - (min(x) * seq - 1)) ,
                 y = ysign * y)
    },
    ysign = rep(c(1,-1), freq / 2),
    seq = 1:freq
  ))
}
