# Lists  are cool yo ----
libr
library(ggplot2)


data(mtcars)
typeof(mtcars)

my_model <- lm(hp ~ mpg, data = mtcars)
typeof(my_model)


my_plot <- ggplot(data = mtcars) +
  geom_line(aes(y = hp, x = mpg))

typeof(my_plot)

# Onto functions
sqrt_newton <- function(a,
                        init = 1,
                        eps = 0.01,
                        steps = 1){
  
  stopifnot(a >= 0)
  while(abs(init**2 - a) > eps){
    init <- 1/2 *(init + a/init)
    steps <- steps + 1
  }
  list(
    "result" = init,
    "steps" = steps
  )
}

result_list <- sqrt_newton(1600)
result <- result_list$result
result_steps <- result_list$steps


#lists can be put into lists futher
list(
  "a" = head(mtcars),
  "b" = list(
    "c" = sqrt,
    "d" = my_plot # Remember this ggplot object from before?
  )
)

#joining two lists together
library(purrr)

map2(
  .x = seq(1, 5),
  .y = seq(1, 5),
  .f = `+`
)