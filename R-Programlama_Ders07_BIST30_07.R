tscomponents_add <- decompose(ts, type = "additive")
tscomponents_mul <- decompose(ts, type = "multiplicative")
plot(tscomponents_add, col = "red")
plot(tscomponents_mul, col = "blue")
