# Makese a barchart out of the example data
plot_grades <- function(df){
  p <- df %>%
    ggplot(aes(x=course, y=grade, fill=course)) + geom_bar(stat="identity") +
    scale_fill_manual(values=colors_vec$course) +
    ggtitle("Grades of selected student") +
    ylim(0, 10)

  # Turns the plot into a plotly for interactivity
  p <- ggplotly(p)

  return(p)
}

