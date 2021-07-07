RunModel=function(replicate,r,directory){
  
  max_age=replicates$max_age[r]
  
    K=replicates$K[r]
    
    fecundity=replicates$fecundity[r]
    
    sex=replicates$sex[r]
    
    age_of_maturity=replicates$age_of_maturity[r]
    
   #intialize population
    pop = matrix(nrow=K, ncol=5) 
    #r is more effecient with numbers and less efficient with characters
    #ncol can be changed later accordingly
    
    colnames(pop) =c("id", "mom_id", "dad_id", "age", "sex")
    
    pop[ ,1]= seq(1,100,1)
    pop[ ,2:3]= 0
    pop[ ,4]= sample(c(0:max_age),K,replace=T)-1 #when 1 to 50 generations are done in the end it does not show us next generation so we used -1 
    pop[ ,5]= sample(c(0,1),K, replace=T)
    
    table(pop[,4])
    
    for(Y in 1:50){
      dead=sample(seq(1,nrow(pop),1),1,replace=F)
      pop= pop[-dead,]
    }
}
