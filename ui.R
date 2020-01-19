library(shiny)
library(shinythemes)

require(rCharts)
require(plotly)
require(DT)
require(leaflet)

shinyUI(navbarPage(
  title = "Temp",
  theme = shinytheme("superhero"),
  tabPanel(
    title = "navbar1",
    sidebarPanel(width=4,
                 
    )
    )
  tabPanel(
    title = "navbar2",
    )
