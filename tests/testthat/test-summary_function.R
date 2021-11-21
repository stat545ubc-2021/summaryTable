test_that("The sum of the maximums is greater than the minimums", {
  expect_gte(sum(Summary_function(gapminder::gapminder, country, pop)$maximum) - sum(Summary_function(gapminder, country, pop)$minimum), 0)

})

test_that("That the grouped variable is a factor", {
  expect_s3_class(Summary_function(gapminder::gapminder, country, pop)$country, "factor")

})

test_that("All countries are included in the group_by", {
  expect_equal(nrow(Summary_function(gapminder::gapminder, country, pop)), 142)

})
