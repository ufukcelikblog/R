# Excel csv formatýnda veriyi yükleme
s_data <- read.csv(file ="BIST30arranged.csv")
# Verinin özet bilgilerini almak
summary(s_data)
str(s_data)
# Veri temizliði ile boþ verilerin ayýklanmasý
s_data[is.na(s_data)] <- 0
# Tarih fonksiyonu ile verilerin Yýl-Ay-Gün formatýna alýnmasý
s_data$Date <- as.Date(s_data$Date, format = "%Y-%m-%d")
