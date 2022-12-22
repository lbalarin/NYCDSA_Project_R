library(here)
library(dplyr)
library(jsonlite)
library(tidyverse)
library(ggplot2)
library(jsonlite)
library(shiny)
library(DT)
library(rsconnect)
library(shinydashboard)

# https://shiny.rstudio.com/articles/shinyapps.html
# http://www.shinyapps.io/


# install.packages('rsconnect')
# install.packages('here')
# install.packages("devtools")
# install.packages("jsonlite")
# install.packages('shinydashboard')
# devtools::install_github('https://github.com/rstudio/DT/')

rsconnect::setAccountInfo(name='lbalarinni', 
                          token='1376DFA83ACB67F4802F05EEE8B1581B', 
                          secret='JB9pLHLCNhxQlKYr+exhoxTRN3GBOhbiaFQRNt1N')

setwd(here())

# DATABASE 1
# result <- jsonlite::fromJSON(txt = "Bronx.json")
result <- jsonlite::fromJSON(txt = "https://a816-health.nyc.gov/ABCEatsRestaurants/App/GetEntitiesByBoro/Bronx")
json_bronx <- as.data.frame(result)
df_bronx <- data.frame(sapply(json_bronx,c))

result <- jsonlite::fromJSON(txt = "https://a816-health.nyc.gov/ABCEatsRestaurants/App/GetEntitiesByBoro/Brooklyn")
json_bk <- as.data.frame(result)
df_bk <- data.frame(sapply(json_bk,c))

result <- jsonlite::fromJSON(txt = "https://a816-health.nyc.gov/ABCEatsRestaurants/App/GetEntitiesByBoro/Manhattan")
json_manh <- as.data.frame(result)
df_manh <- data.frame(sapply(json_manh,c))

result <- jsonlite::fromJSON(txt = "https://a816-health.nyc.gov/ABCEatsRestaurants/App/GetEntitiesByBoro/Queens")
json_queens <- as.data.frame(result)
df_queens <- data.frame(sapply(json_queens,c))

result <- jsonlite::fromJSON(txt = "https://a816-health.nyc.gov/ABCEatsRestaurants/App/GetEntitiesByBoro/Staten%20Island")
json_st <- as.data.frame(result)
df_st <- data.frame(sapply(json_st,c))
df_all = data.frame(sapply(rbind(df_bronx, df_bk, df_manh, df_queens, df_st),c))

result2 <- jsonlite::fromJSON(txt = "https://data.cityofnewyork.us/resource/43nn-pn8j.json")
json_insp <- as.data.frame(result2)
df_insp <- data.frame(sapply(json_insp,c))

# DATABASE 2
# df_violations_total = as.data.frame(read_csv("df_violations_total.csv"))
df_violations_total$Total = as.integer(df_violations_total$Total)
df_violations_total$Critical = as.integer(df_violations_total$Critical)
df_violations_total$`Not Critical` = as.integer(df_violations_total$`Not Critical`)
df_violations_total$`Not Applicable` = as.integer(df_violations_total$`Not Applicable`)