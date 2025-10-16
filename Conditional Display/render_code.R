purrr::walk(c(TRUE, FALSE),
            ~ quarto::quarto_render("conditional_display.qmd", 
                                    execute_params = list(v0 = .x),
                                    output_file = ifelse(.x, "conditional_display_v0.html",
                                                         "conditional_display.html")))
