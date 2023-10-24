#' Column plot of the first amino acid in a codon
#'
#' @param codon A variable which input a codon sequence
#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @return A col plot describing the occurence of the first amino acid
#' @export
#'
#' @examples col_plot(codon)
col_plot <- function(codon_list){
  aa_codon <- codon_list |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(aa_codon, function(amino_acid) stringr::str_count(string = codon_list, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Codon"]] <- rownames(counts)

  colplot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Codon, y = Counts, fill = Codon)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(colplot)
}
