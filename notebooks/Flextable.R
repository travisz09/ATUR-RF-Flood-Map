# Flextable
# ATUR
# Travis Zalesky
# 4/1/2025
#
# Objective: Render the confusion matrix for the random forest classification of flood waters in flextable for publishable output.

library(flextable)
library(officer)

# Simple Example
ft <- flextable(head(airquality))
ft

df1 <- data.frame(
  'Predicted' = c('Dry', 'Flood', "Producer's"),
  'actual0' = c('8882', '126', '0.986'),
  "actual1" = c(1199, 275, ""),
  'accuracy' = c(0.881, "", 0.874),
  'name' = c("Consumer's", '', 'Overall')
) 

std_border <- fp_border()

ft1 <- qflextable(df1)
ft1 <- set_header_labels(ft1, rownames = '', actual0 = 'Dry', actual1 = 'Flood', accuracy = '', name = '')
ft1 <- add_header_row(ft1, values = c('', 'Actual', ''), colwidths = c(1, 2, 2)) |>
  theme_alafoli() |>  # Base theme
  set_table_properties(layout = 'fixed') |>
  bold(part = 'header') |>
  align(align = "center", part = "header")  |>
  bold(j = 1, i = 1:2, part = 'body') |>
  align(align = 'right', j = 1, part = 'body') |>
  italic(j = 1:5, i = 3, part = 'body') |>
  italic(j = 4:5, i = 1:3, part = 'body') |>
  border_remove() |>
  vline(border = std_border, j = 1, i = c(1:2), part = 'all') |>
  hline(border = std_border, j = c(1:3), i = 2, part = 'header') |>
  autofit()
  
ft1

save_as_image(ft1, path = "D:/GIS_Projects/ATUR/Documents/Quarto/ATUR-RF-Flood-Map/images/Confusion1.png")
