header <- dashboardHeader(
  title = "Title",
  # Trick to put logo in the corner
  tags$li(div(
    class="logo_div",
    img(src = 'your_logo.png',
        title = "logo", height = "44px")),
    class = "dropdown")
)

# The tab content is defined in ui_tabs/* for maintainability
body <- dashboardBody(
  # Loads CSS and JS from www/custom.css in
  tags$head(tags$link(rel = "stylesheet",
                      type = "text/css", href = "custom.css")),
  tags$head(tags$script(src="main.js")),
  tabItems(
    ui_tab_main,
    ui_tab_second
  )
)

ui <- dashboardPage(
  header,
  dashboardSidebar(
    # Link tabNames with ids to tabs in ui_tabs/*
    sidebarMenu(
      menuItem("Main Tab", tabName = "tab_main"),
      menuItem("Second tab", tabName = "tab_second")
    )
  ),
  body
)