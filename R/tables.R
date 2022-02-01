library(kableExtra)
s1 <- readr::read_tsv("tables/st1.tsv")

topbtm <- s1[c(1:5, 35:40),]

topbtm |> kbl() |> kable_paper() |> column_spec(
  6,
  color = "white",
  background = spec_color(topbtm$`Odds ratio`, end = .8),
  )

s1 |> tail(8) |> kbl() |> kable_paper() |> column_spec(
  6,
  color = "white",
  background = spec_color(tail(s1$`Odds ratio`, 8), end = .6),
  )

topbtm <- s1[c(1:10, 30:40),]
