library(kableExtra)
s1 <- readr::read_tsv("tables/st1.tsv")

s1 |> kbl() |> kable_paper() |> column_spec(
  6,
  color = "white",
  background = spec_color(s1$`Odds ratio`, end = .8),
  )



s1 |> tail(8) |> kbl() |> kable_paper() |> column_spec(
  6,
  color = "white",
  background = spec_color(tail(s1$`Odds ratio`, 8), end = .6),
  )
