context("QC")
test_that("sesameQCtoDF works on HM27 IDATs without ch/rs probes", {
    idat_dir <- system.file("extdata", package = "sesameData")
    qcs <- openSesame(idat_dir, prep = "", func = sesameQC_calcStats)
    df <- sesameQCtoDF(qcs)
    expect_is(df, "data.frame")
    expect_equal(nrow(df), 2)
    expect_true(all(c("frac_dt_cg", "RGratio", "RGdistort") %in% colnames(df)))
})
