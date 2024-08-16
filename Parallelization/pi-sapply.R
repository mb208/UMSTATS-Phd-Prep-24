nsims <- 1e4
# n     <- 1e4


sim_pi <- function(x) {
  x <- runif(2,-1,1)
  return(4*(sqrt(sum(x*x)) <=1))
}


set.seed(123)
answer <- mean(sapply(1:nsims, sim_pi))
message("Pi: ", mean(answer))
