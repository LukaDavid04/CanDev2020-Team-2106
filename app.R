library(shiny)
require(dplyr)
require(xlsx)
require(scales)
require(rCharts)
require(DT)
require(leaflet)
require(plotly)

source("./scripts/helper.R", local=T)
orders.extended <- read.data()


getwd()
setwd("C:/Users/Cheta/OneDrive/Hackathons/canDEV")
Cities <- read.csv("Cities.csv",header=TRUE,sep=",",skip=7)
head(Cities)

#Countries <- read.table("Countries.txt",header = TRUE, skip = 7, row.names = 1)
#head(Countries)
