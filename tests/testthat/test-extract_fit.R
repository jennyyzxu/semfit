test_that("extract_fit() extract SEM model info", {
text <- paste("Additionally, key fit indices, such as the Incremental Fit Index (IFI)
          with a value of 0.911 and the Comparative Fit Index (CFI) at 0.912,
          exceeded their recommended thresholds (Nakai et al., 2019),
          further affirming the model’s goodness of fit.",
              collapse =)

response <- semfit:::extract_fit(text)

expect_true("CFI" %in% toupper(response$fit_indices))

expect_true(any(grepl("COMPARATIVE FIT INDEX", toupper(response$fit_indices))))}
)
