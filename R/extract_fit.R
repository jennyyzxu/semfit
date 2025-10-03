#' Extract SEM model information
#'
#' @param text A character vector (paragraph) copied from academic paper
#'
#' @returns A list with elements:
#'  - model_type: character vector of detected model type keywords (SEM/MSEM/DSEM)
#'  - fit_indices: character vector of detected fit indices (CFI/TLI/RMSEA/SRMR)
#'  - description: character vector of qualitative fit adjective
#' @export
#'
#' @examples
#' finnigan <- paste(
#' "We conducted multi-level structural equation modeling (ML-SEM)",
#' "with the R package lavaan."
#' )
#' extract_fit(finnigan)

extract_fit <- function(text){
  variant_terms <- c("SEM", "structual equation modeling",
                   "ML-SEM", "MSEM", "multilevel structural equation modeling",
                   "DSEM", "dynamic structural equation modeling")

  fit_indices <- c("CFI", "Comparative fit index",
                   "TLI", "Tucker-Lewis Index",
                   "RMSEA", "root mean square error of approximation",
                   "SRMR", "standardized root mean square residual")

  description <- c("acceptable", "good", "adequate",
                   "poor", "excellent", "marginal")

  variant <- c()
  for (keyword in variant_terms){
    if(grepl(keyword, text, ignore.case = TRUE)) {
      variant <- c(variant, keyword)
    }
  }
  variant <- unique(variant)

  fit <- c()
  for (keyword in fit_indices){
    if(grepl(keyword, text, ignore.case = TRUE)) {
      fit <- c(fit, keyword)
    }
  }
  fit <- unique(fit)

  descriptive <-c()
  for (keyword in description){
    if(grepl(keyword, text, ignore.case = TRUE)) {
      descriptive <- c(descriptive, keyword)
    }
  }
  descriptive <- unique(descriptive)

  list(
    model_type = if(length(variant)) variant else "No model type found",
    fit_indices = if(length(fit)) fit else "No fit indices found",
    description = if(length(descriptive)) descriptive else "No descriptive language found"
  )

}











