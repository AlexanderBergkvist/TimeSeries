df  <- ts(read.csv("yields.csv"))
plot.ts(df)
acf(df, plot = TRUE)
pacf(df, plot = TRUE)


d_df <- diff(df)
plot.ts(d_df)
acf(d_df, plot = TRUE)
pacf(d_df, plot = TRUE)

