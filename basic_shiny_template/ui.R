ui <- fluidPage(
  titlePanel("Title"),
  sidebarLayout(
    sidebarPanel(
      selectInput("person", "Select a student:", choices=levels(df_raw$person))
    ),
    mainPanel(
      plotlyOutput("grade_plot")
    )
  )
)