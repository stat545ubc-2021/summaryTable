#' @export
#' @title Group Summary Statistics
#'
#' @description This function will provide summary statistics, for a numerical variable y when grouped by another variable x.
#' The statistics generated are; minimum, maximum, average (mean), range and standard deviation.
#'
#' @params data - refers to the dataset you want to create the summary statistics for.
#' @params cat - refers to the category that you wish to group by.
#' @params y - refers to the numerical variable that you wish to summarise, in relation to the groups defined in cat.
#'
#' @return A summary table providing the  minimum, maximum, average (mean), range and standard deviation of variable y as grouped by categorical variable cat.
#'
#' @examples
#' Summary_function(gapminder, country, lifeExp)
#' Summary_function(flow_sample, extreme_type, flow)

Summary_function <- function(data, cat, y){
  data %>%
    na.omit() %>%
    group_by({{ cat }}) %>%
    summarise(minimum = min({{ y }}, na.rm = TRUE),
              maximum = max({{ y }}, na.rm = TRUE),
              average = mean({{ y }}, na.rm = TRUE),
              range = (max({{ y }}) - min({{ y }})),
              st_dev = stats::sd({{ y }}, na.rm = TRUE))
}
