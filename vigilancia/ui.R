#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(
    navbarPage(
    title,
    ...,
    id = NULL,
    selected = NULL,
    position = c("static-top", "fixed-top", "fixed-bottom"),
    header = NULL,
    footer = NULL,
    inverse = FALSE,
    collapsible = FALSE,
    collapsable,
    fluid = TRUE,
    responsive = NULL,
    theme = NULL,
    windowTitle = title
),


# Define UI for application that draws a histogram
fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
