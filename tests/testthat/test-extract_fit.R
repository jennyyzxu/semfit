test_that("extract_fit() extract SEM model info", {
text <- paste("Additionally, key fit indices, such as the Incremental Fit Index (IFI)
          with a value of 0.911 and the Comparative Fit Index (CFI) at 0.912,
          exceeded their recommended thresholds (Nakai et al., 2019),
          further affirming the model’s goodness of fit.")
response <- extract_fit(text)
expect_equal(response$fit_indices, c("CFI", "Comparative fit index"))
              }
)
