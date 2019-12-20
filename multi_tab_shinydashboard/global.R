# Load all project libraries here
library(shiny)
library(stringr)
library(ggplot2)
library(dplyr)
library(shinydashboard)
library(plotly)

# Load all R functions in the resources folder
for (file in list.files('r_resources')){
  source(file.path('r_resources', file))
}

# Load in the data that should be globally available
df_raw <- read.csv(file.path('data', 'studentdata_example.csv'))

# Perform pre-processing steps that should be executed once before the app starts
df_raw <- prep_student_data(df_raw)

# Load the UI components after data has been loaded (filters often use the data)
for (file in list.files('ui_tabs')){
  source(file.path('ui_tabs', file))
}

# Load colors globally if relevant
colors_df <- read.csv("data/var_colors.csv", stringsAsFactors = FALSE)
colors_vec <- make_color_vectors(colors_df)



