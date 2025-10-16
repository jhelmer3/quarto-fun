
purrr::walk(c(TRUE, FALSE),
            ~ quarto::quarto_render("conditional_display.qmd", 
                                     execute_params = list(v0 = .x),
                                     output_file = ifelse(.x, "conditional_display_v0.html",
                                                          "conditional_display.html")))

# renderfunc <- function(qmd_file) {
#   filename <- sub("^(.*?)(?:\\.qmd)?$", "\\1", qmd_file)
#   quarto::quarto_render(qmd_file, 
#                         execute_params = list(v0 = .x),
#                         output_file = ifelse(.x, paste0(filename, "_v0.html"),
#                                              paste0(filename, ".html")))
# }
# 
# renderfunc("conditional_display.qmd")
