```r
# Improved code to handle cases where specified columns might not exist.

data <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "B", "D")

# Check if all columns exist before subsetting
existing_cols <- intersect(cols_to_select, names(data))
if (length(existing_cols) != length(cols_to_select)) {
  warning("Some specified columns do not exist in the data frame. Only existing columns will be selected.")
}

subset_data <- data[, existing_cols, drop = FALSE] # drop=FALSE preserves data.frame structure
print(subset_data)
```