#' @export
#' @title Group Summary Statistics
#'
#' @description This package provides a useful summary table of important statistics, including the minimum and maximum values,
#'  the mean and the standard deviation, through the use of a simple function called summary_function. This function works
#'   when you want to create the summary statistics simultaneously for a numerical variable 'y' when grouped by another
#'   variable 'cat', which reflects a condition or categorical variable.
#'
#' @param data - refers to the dataset that you want to create the summary statistics for.
#' @param cat - refers to the category that you wish to group by.
#' @param y - refers to the numerical variable that you wish to summarise, in relation to the groups defined in cat.
#'
#' @return A summary table providing the  minimum, maximum, average (mean), range and standard deviation of variable y as grouped by categorical variable cat.
#'
#' @importFrom dplyr %>%
#'
#' @examples
#' Summary_function(gapminder::gapminder, country, lifeExp)
#' Summary_function(datateachr::flow_sample, extreme_type, flow)

Summary_function <- function(data, cat, y){
  data %>%
    stats::na.omit() %>%
    dplyr::group_by({{ cat }}) %>%
    dplyr::summarise(minimum = min({{ y }}, na.rm = TRUE),
              maximum = max({{ y }}, na.rm = TRUE),
              average = mean({{ y }}, na.rm = TRUE),
              range = (max({{ y }}) - min({{ y }})),
              st_dev = stats::sd({{ y }}, na.rm = TRUE))
}
