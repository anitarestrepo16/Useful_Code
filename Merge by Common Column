### From Lindsay Alexander
## Merge multiple dataframes (or subsets of them) by a common variable

## create Merge function
Merge <- function(x, y){
  df <- merge(x, y, by= "common variable", all.x=TRUE, all.y=TRUE)
  return(df)
}
## use Reduce to apply Merge function (which only combines two elements (i.e. 2 dfs in this case)) to multiple elements
Merged_df <- Reduce(Merge, list(df1, df2, df3, df4, ...))

# can also use the join_all() function from plyr package

## About the Reduce function from https://blog.zhaw.ch/datascience/r-reduce-applys-lesser-known-brother/
# Applies a function (in this case the Merge function we created) to a list of elements in a stepwise process: starts with the first two elements, then does the result of those two with the third element, and so on
# can set accumulate == TRUE to return not just the final result (in this case the total merge of all dfs) but also all intermediate reults (the merge of dfs1 + 2, + 3, etc.)
