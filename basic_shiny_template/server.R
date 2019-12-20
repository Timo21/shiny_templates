server <- function(input, output) {
  #################################################################################
  ### Define reactive elements
  #################################################################################

  df <- reactive({
    df <- df_raw %>%
      filter(person == input$person)
    return(df)
  })

  #################################################################################
  ### Define output elements
  #################################################################################
  output$grade_plot <- renderPlotly({
    p <- plot_grades(df())
    p
  })

  # Genereer een tekst element voor de tweede tab
  output$example_text <- renderText({
    "Example text for second tab"
  })
}