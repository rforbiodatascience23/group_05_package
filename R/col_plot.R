#' Column plot of the first amino acid in a codon
#'
#' @param peptide A variable which input a peptide#'
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#' @importFrom stringr str_split boundary str_count
#'
#' @return A col plot describing the occurence of the first amino acid
#' @export

col_plot <- function(peptide){
  # Getting the list of Amino Acids in the codon
  aa_codon <- peptide |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  # For each AA we get its position in his peptide chain
  counts <- sapply(aa_codon, function(amino_acid) stringr::str_count(string = peptide, pattern =  amino_acid)) |>
    as.data.frame()

  # Renaming columns
  colnames(counts) <- c("Counts")
  counts[["Codon"]] <- rownames(counts)

  # Plotting the distribution of the first AA
  colplot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Codon, y = Counts, fill = Codon)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(colplot)
}
