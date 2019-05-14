library(testthat)
library(dplyr)
ctest_for_no_errors <- function(to_eval, error_message ){
    stopifnot(!missing(error_message))
    tryCatch({
        return(to_eval)
    }, error = function(e) {
        expect_true(F, info = error_message)
    })
    return(NULL)
}
