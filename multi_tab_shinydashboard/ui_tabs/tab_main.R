ui_tab_main <- tabItem(
  "tab_main",
  fluidRow(
    column(
      width = 12,
      box(
        selectInput("person", "Select a student:", choices=levels(df_raw$person))
      ),
      box(plotlyOutput("grade_plot"))
    )
  )
)