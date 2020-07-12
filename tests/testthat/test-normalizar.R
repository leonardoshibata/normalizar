context("normalizar Function")

test_that("Returns character", {
  x <- normalizar("são paulo")

  expect_type(x, "character")
})


test_that("Changes to upper case", {
  expect_match(normalizar("Sao Paulo"), "SAO PAULO")
})


test_that("Removes diacritics", {
  expect_match(normalizar("SÃO PAULO"), "SAO PAULO")
})


test_that("Removes numbers", {
  expect_match(normalizar("SAO PAULO 2020"), "SAO PAULO")
})


test_that("Removes punctuations", {
  expect_match(normalizar("SAO PAULO!"), "SAO PAULO")
})


test_that("Removes leading, trailing and double spaces", {
  expect_match(normalizar(" SAO    PAULO "), "SAO PAULO")
})

