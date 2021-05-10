#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
    titlePanel("46ers"),
    sidebarLayout(
        sidebarPanel(
            numericInput("numeric", "Enter any even number =",
                         value = 1000, min = 1, max = 1000, step = 2),
            ),

        mainPanel(
            h3("Graph of Random Points"),
            plotOutput("plot1")
        )
    )
))
