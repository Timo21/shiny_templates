header <- dashboardHeader(
  title = "Title",
  # Trick to put logo in the corner
  tags$li(div(
    class="logo_div",
    img(src = 'your_logo.png',
        title = "logo", height = "44px")),
    class = "dropdown")
)

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

body <- dashboardBody(
  # Loads CSS and JS from www/custom.css in
  tags$head(tags$link(rel = "stylesheet",
                      type = "text/css", href = "custom.css")),
  tags$head(tags$script(src="main.js")),
  tabItems(
    ui_tab_main
  )
)

ui <- dashboardPage(
  header,
  dashboardSidebar(
    collapsed=T,
    sidebarMenu(
      menuItem("Main Tab", tabName = "tab_main")
    )
  ),
  body
)