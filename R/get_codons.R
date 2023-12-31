#' Codon finder
#'
#' @param seq input sequence
#' @param start starting position of sequence reading frame
#'
#' @return A array of codons
#' @export
#'
#' @examples get_codons("ACTGAC")
get_codons <- function(seq, start = 1){
  seq_len <- nchar(seq)
  codons <- substring(seq,
                      first = seq(from = start, to = seq_len-3+1, by = 3),
                      last = seq(from = 3+start-1, to = seq_len, by = 3))
  return(codons)
}
