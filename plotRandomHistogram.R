# plotRandomHistogram.R
#
# Author: Nisso Sacha
#
# Purpose:
#   A function that will generate a sample of Normal "observations"
#   and plot the histogram of that data
#
# Inputs:
#   num_pts = the number of observations to randomly generate
#   mu = the theoretical mean of the Normal distribution that generates the data
#   sigma = the theoretical sd
#   seed = an optional random number generator seed value, defaults to NULL
#   meanColor = the color of line corresponding to the sample mean of the data
#
# Outputs:
#   A histogram of the generated data is drawn
#   A list with the following elements:
#     Random_obs = a vector with the randomly generated data
#     Mean_Random_obs = sample mean corresponding to randomly generated data
#     SD_Random_obs = corresponding standard deviations

plotRandomHistogram <- function(num_pts = 30, mu = 0, sigma = 1,
                                  seed=NULL, meanColor = "royalblue") {
  set.seed(seed)
  x <- rnorm(num_pts, mean = mu, sd = sigma)
  mean_x <- mean(x)
  hist(x)
  abline(v=mean_x, lwd = 5, col = meanColor)
  
  # In R, in a function, the output from the last time is automatically returned
  list(Random_obs = x,
       Mean_Random_obs = mean_x,
       SD_Random_obs = sd(x))
  
}

plotRandomHistogram()
plotRandomHistogram(seed=19)
plotRandomHistogram(seed=19, num_pts = 1000000,
                    meanColor = "forestgreen")
my_output <- plotRandomHistogram(seed = 5, num_pts = 200, mu = 70,
                                 sigma = 2.5, meanColor = "goldenrod")
my_output$Mean_Random_obs
