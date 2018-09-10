#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("What is your Maternal Mortality Attributable Fraction"),
        sidebarPanel(
                h1('Locate on the slider the Maternal Mortality ratio, per 100.000LB'),
                sliderInput("slider2", "Slide Me", 0, 300, 300)
        ),
        mainPanel(
                h2('Maternal Mortality Ratio (per 100.000 Live Born)'),
                h3("Your Maternal Mortality Attributable Fraction compared with the BEST in the world is:"),
                h1(textOutput("text1")),
                h3("In percentage, this means an Inequity in Health of"),
                h1(textOutput("text2"))
        )
))


