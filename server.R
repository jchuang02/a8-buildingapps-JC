setwd('C:/Users/Jonathan/Documents/Info498f/a8-buildingapps-JC')
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