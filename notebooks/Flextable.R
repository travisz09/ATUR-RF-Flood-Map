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

df2 <- data.frame(
  'Predicted' = c('Dry', 'Flood', "Producer's"),
  'actual0' = c('8761', '247', '0.973'),
  "actual1" = c(754, 720, ""),
  'accuracy' = c(0.973, "", 0.905),
  'name' = c("Consumer's", '', 'Overall')
) 

ft2 <- qflextable(df2)
ft2 <- set_header_labels(ft2, rownames = '', actual0 = 'Dry', actual1 = 'Flood', accuracy = '', name = '')
ft2 <- add_header_row(ft2, values = c('', 'Actual', ''), colwidths = c(1, 2, 2)) |>
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
  
ft2

save_as_image(ft2, path = "D:/GIS_Projects/ATUR/Documents/Quarto/ATUR-RF-Flood-Map/images/Confusion2.png")


df3 <- data.frame(
  'Predicted' = c('Dry', 'Flood', "Producer's"),
  'actual0' = c('8808', '165', '0.982'),
  "actual1" = c(1071, 420, ""),
  'accuracy' = c(0.892, "", 0.882),
  'name' = c("Consumer's", '', 'Overall')
) 

ft3 <- qflextable(df3)
ft3 <- set_header_labels(ft3, rownames = '', actual0 = 'Dry', actual1 = 'Flood', accuracy = '', name = '')
ft3 <- add_header_row(ft3, values = c('', 'Actual', ''), colwidths = c(1, 2, 2)) |>
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
  
ft3

save_as_image(ft3, path = "D:/GIS_Projects/ATUR/Documents/Quarto/ATUR-RF-Flood-Map/images/Confusion3.png")

