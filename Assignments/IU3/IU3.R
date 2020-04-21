df  <- ts(read.csv("yields.csv"))
plot.ts(df)
acf(df, plot = TRUE)
pacf(df, plot = TRUE)

l_df <- log(df)
plot.ts(l_df)


d_df <- diff(df)
plot.ts(d_df)
var(d_df)

dl_df <- diff(l_df)
plot.ts(dl_df)
var(dl_df)
acf(d_df, plot = TRUE)
pacf(d_df, plot = TRUE)

a = arima(dl_df, order = c(1, 0, 0s))