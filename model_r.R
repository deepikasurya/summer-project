setwd("-/Github/Summer-project")

#parameters

maximum_pop=100

maximum_age =4

fecundity_rate_year = 1

population_max =50

pop = matrix(nrow=100, ncol=5)

colnames(pop) =c("id", "sex", "mom", "dad", "age")

pop[,1] = seq(1,100,1)
pop[,2] = sample(c(0,1),100,replace=T) 
pop[,3] = rep(-1,100)
pop[,4] = rep(-1,100)
pop[,5] = sample(c(0,1,2,3,4),100,replace=T)

