library(shiny)
library(tidyverse)
mod<-lm(mpg~wt+hp,mtcars)
int<-mod$coefficients[1]
wt<-mod$coefficients[2]
hp<-mod$coefficients[3]

shinyServer(
  function(input, output) {
    output$text1 <- renderText({input$num1})
  output$text2 <- renderText({input$num2})
  output$text3 <- renderText({
    if (input$goButton == 0) "You have not pressed the button"
    else int+wt*input$num1+hp*input$num2
  })
  }
)