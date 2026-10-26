context("species")
test_that("inferSpecies warns on a low-detection array", {
    sdf <- sesameDataGet("Mammal40.1.SigDF")
    expect_warning(inferSpecies(sdf, return.species = TRUE), "detected")
})
