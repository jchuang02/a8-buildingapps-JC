
library(plotly)
library(dplyr)
library(shiny)

source('plotly_graph.R')

data <- data.frame(iris)  

shinyServer(function(input, output) {
  output$graph <- renderPlotly({
    build_graph(data, input$Species, input$Color)
  })

})