# Example pre-processing step
prep_student_data <- function(df) {
  df <- df %>%
    mutate(person = as.factor(str_to_title(person)),
           course = str_to_title(course))

  return(df)
}