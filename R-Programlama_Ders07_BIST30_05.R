xts_list <- vector(mode="list", length=candidate_num)
ts_list <- vector(mode="list", length=candidate_num)
names(xts_list) = candidate_ticker
names(ts_list) = candidate_ticker
for (ticker in candidate_ticker){
  stock = stock_list[[ticker]]
  xts = xts(stock$Close, order.by=stock$Date)
  attr(xts, 'frequency') <- length(xts)/12
  ts = as.ts(xts, start = c(2010))
  xts_list[[ticker]] <- xts
  ts_list[[ticker]] <- ts
}
xts_table= do.call(cbind, xts_list)
dygraph(xts_table, xlab = "Time", ylab = "High value", 
        main = "Time Series") %>%
  # dySeries(labels.default()) %>%
  # dyOptions(colors = c("red")) %>%
  dyRangeSelector()
