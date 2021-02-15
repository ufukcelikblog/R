sample_num = 5
tmp <- filter(s_data, High > 20)
summary(tmp)
freq <- length(unique(tmp$Name))
assert_that(sample_num < length(unique(tmp$Name)))
sample_ticker <- as.character(sample(tmp$Name, sample_num))
sample_ticker <- c(sample_ticker, 'BIMAS') 
candidate_ticker <- unique(sample_ticker)
candidate_ticker <- c("BIMAS", "TUPRS","OTKAR","KOZAL","PGSUS")
candidate_num <- length(candidate_ticker)
stock_list <- vector(mode="list", length=candidate_num)
names(stock_list) <- candidate_ticker
i = 1
for (ticker in candidate_ticker){
  stock_list[[i]] <- filter(s_data, Name == ticker)
  #print(stock_list[[i]])
  i <- i+1
  #print(ticker)
}
str(stock_list)
