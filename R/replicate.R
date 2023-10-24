#' generate random DNA sequence of a specified length
#'
#' @param dna_seq_length length of random DNA sequence to be generated
#'
#' @return generated random DNA sequence
#' @export
#'
#' @examples replicate(9)
replicate <- function(dna_seq_length){
  dna_seq <- sample(c("A", "T", "G", "C"), size = dna_seq_length, replace = TRUE)
  replicated_dna_seq <- paste0(dna_seq, collapse = "")
  return(replicated_dna_seq)
}
