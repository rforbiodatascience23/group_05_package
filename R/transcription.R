#' Transcription
#'
#' @param replication replicated DNA sequence
#'
#' @return transcribed DNA sequence
#' @export
#'
transcribe <- function(replication){
  transcript <- gsub("T", "U", replication)
  return(transcript)
}
