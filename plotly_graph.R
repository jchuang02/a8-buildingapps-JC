
build_graph <- function(data, kind, col) {
df <- data %>% 
        filter(Species == kind)

  plot_ly(
    df, 
    x = Petal.Length,
    y = Petal.Width,
    mode = "markers",
    marker = list(color = col)
  )
}