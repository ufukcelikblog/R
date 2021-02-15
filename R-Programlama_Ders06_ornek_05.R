chartSeries(AAPL,
            type="line",
            subset="2007",
            theme=chartTheme("white"))
chartSeries(AAPL, type="bar", subset="2007-05::2007-06", 
            theme=chartTheme("white"))
chartSeries(AAPL, type="candlesticks", subset="2007-05",
            up.col="white", down.col="black",
            theme=chartTheme("white"))
