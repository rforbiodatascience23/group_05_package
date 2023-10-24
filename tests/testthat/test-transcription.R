test_that("Transcription works", {
  expect_equal(transcribe("ATGC"), "AUGC")
})
