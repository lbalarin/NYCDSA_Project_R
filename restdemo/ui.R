#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
library(shiny)
library(shinydashboard)

shinyUI(dashboardPage(
    dashboardHeader("Test"),
    dashboardSidebar("Side"),
    dashboardBody("Main")
  )
)
# shinyUI(fluidPage(
# 
#     # Application title
#     titlePanel("NYC Restaurants and Inspections"),
#   fluidRow(
#       column(3,
#              # "sidebar", # LEFT PANE
#              textInput("name", label = "Restaurant Name"),
#              selectInput("boro", label = "Select Borough", 
#                          choices = list(
#                            `All Boros` = "All",
#                            `Bronx` = "Bronx",
#                            `Brooklyn` = "Brooklyn",
#                            `Manhattan` = "Manhattan",
#                            `Queens`= "Queens",
#                            `Staten Island`= "Staten Island"
#                            ), 
#                          selected = "Bronx", selectize=FALSE),
#              textOutput("result")
#              
#              # actionButton("action", label = "Search")
#              ),
#       column(9, 
#              plotOutput("placeholder")
#              ),
#       
#       ),
#   fluidRow(column(12, dataTableOutput("ex1")))
#   
#     )
#     # fluidRow(column(2, verbatimTextOutput("value")))
# )
