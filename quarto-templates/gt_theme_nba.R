#########################################
# Function to apply gt styling to table #
#########################################

gt_theme_nba <- function(gt_table) {
  last_row <- nrow(gt_table[["_data"]])
  
  gt_table %>%
    # 1. Header shading and borders
    tab_style(
      style = list(
        cell_fill(color = "lightgray"),
        cell_borders(
          sides = c("top", "bottom"),
          color = "black",
          weight = px(2),
          style = "solid"
        ),
        cell_borders(
          sides = c("left", "right"),
          color = "lightgray"
        ),
        cell_text(weight = "bold")
      ),
      locations = cells_column_labels()
    ) %>%
    
    # 2. Data row borders (dotted top and bottom, no vertical)
    tab_style(
      style = cell_borders(
        sides = c("top", "bottom"),
        color = "gray50",
        weight = px(1),
        style = "dotted"
      ),
      locations = cells_body()
    ) %>%
    
    # 3. Remove all vertical borders
    tab_style(
      style = cell_borders(
        sides = c("left", "right"),
        color = "transparent"
      ),
      locations = cells_body()
    ) %>%
    
    # 4. Bottom border for whole table
    tab_style(
      style = cell_borders(
        sides = "bottom",
        color = "black",
        weight = px(2),
        style = "solid"
      ),
      locations = cells_body(rows = last_row)  # last row only
    )
}