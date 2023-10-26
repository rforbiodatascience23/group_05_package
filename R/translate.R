#' Translate codons into amino acid sequence
#'
#' @param codons a set of codons
#'
#' @return a sequence of amino acids
#' @export
#'
translate <- function(codons){
      aa_sequence <- paste0(data[codons], collapse = "")
       return(aa_sequence)
   }
