library(shiny)
library(plotly)
shinyUI(fluidPage(
  
  titlePanel('Iris Flower Scatter Plot'), 
  
  sidebarLayout(
    sidebarPanel(
      selectInput("Species", 
                  label = h3('Choose Species'),
                  choices = list("Setosa" = "setosa", "Versicolor" = "versicolor", "Virginica" = "virginica"),
                  selected = 'setosa'
                  )
    ),
    selectInput("Color", 
                label = h3('Choose Color'),
                choices = list("Green" = "green", "Red" = "red", "Blue" = "blue"),
                selected = 'green'
    )
  ),
      mainPanel(
        plotlyOutput('graph')
      )  
    ) 
  )