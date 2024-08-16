library(parallel)  # Loading the parallel package

nsims <- 1e4
n     <- 1e4

num_cores <- detectCores()



sim_pi <- function(x) {
  x <- runif(2,-1,1)
  return(4*(sqrt(sum(x*x)) <=1))
}


set.seed(123)
res <- mclapply(1:nsims, sim_pi, mc.cores = num_cores)
answer <- mean(unlist(res))

message("Pi: ", mean(answer))
