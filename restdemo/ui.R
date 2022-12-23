#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

shinyUI(fluidPage(

    # Application title
    titlePanel("NYC Restaurants and Inspections"),
  fluidRow(
      column(3,
             selectInput("boro", label = "Select Borough",
                         choices = list(
                           `All Boros` = "All",
                           `Bronx` = "Bronx",
                           `Brooklyn` = "Brooklyn",
                           `Manhattan` = "Manhattan",
                           `Queens`= "Queens",
                           `Staten Island`= "Staten Island"
                           ),
                         selected = "All", selectize=FALSE)
             ),
      column(9, h1("Histogram of Inspection Grades from All 5 Boroughs"),
             plotOutput("placeholder")
             ),

      ),
  fluidRow(column(12, h1("NYC Restaurant Grade Database"),dataTableOutput("ex1"))),
  fluidRow(column(12, h1("Inspection Report Database"),dataTableOutput("ex2")))
    )
)
