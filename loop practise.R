#
for(reps in 1:10){
  flips=NULL
  for(coin in 1:20){
    t=sample(c(0,1),1, replace=T)
    flips=c(flips,t)
    print(flips)  
  }

}

