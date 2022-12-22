#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Define server logic required to draw a histogram
shinyServer(
  function(input, output) {
    # You can access the value of the widget with input$action, e.g.
    # output$value <- renderPrint({ input$action })
    # output$name <- renderPrint({ input$text })
    # boro_histogram <- reactive({
    #   req(input$boro)
    #   if (input$boro == "All") {
    #     data_histo_grade = df_all
    #   }
    #   else
    #   {
    #     data_histo_grade = df_all %>% filter(MostRecentVendingBoro == input$boro)
    #   }
    # })
    # output$placeholder <- renderPlot(
    #   ggplot(boro_histogram(), aes(x=Grade)) + geom_bar() + ggtitle("All 5 Boros") +
    #     theme(axis.text = element_text(size = 12)) + theme(axis.title = element_text(size = 12))
    # )
    # output$result <- renderText({ paste("You chose", input$boro) })
    # output$ex1 <- DT::renderDataTable(
    #   DT::datatable(boro_histogram()[,c(3,1,9,4,5,2,8)], filter = 'top', 
    #                 colnames = c('CAMIS ID', 'Name', 'Address', 'Boro', 'Zip', 'Cuisine', 'Grade'), 
    #                 options = list(pageLength = 25))
    # )
})
packageVersion('data.table')
