library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Estimate Your Car's Miles per Gallon"),
  sidebarPanel(
    numericInput(inputId="num1", label = "Car Weight (tons)",value=0),
    numericInput(inputId="num2", label = "Car Horsepower",value=0),
    actionButton("goButton", "Go!")
  ),
  mainPanel(
    p('Weight'),
    textOutput('text1'),
    p('Horse Power'),
    textOutput('text2'),
    p('Miles per Gallon'),
    textOutput('text3')
  )
))