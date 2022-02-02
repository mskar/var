library(kableExtra)
s1 <- readr::read_tsv("tables/st1.tsv")

topbtm <- s1[c(1:5, 35:40),]

topbtm <- topbtm[order(-topbtm$`Odds ratio`),]

topbtm |>
  kbl() |>
  kable_paper() |>
  column_spec(
    6,
    color = "white",
    background = spec_color(topbtm$`Odds ratio`, end = .8),
  )

s1 |> tail(8) |> kbl() |> kable_paper() |> column_spec(
  6,
  color = "white",
  background = spec_color(tail(s1$`Odds ratio`, 8), end = .6),
  )


s2 <- readr::read_tsv("tables/st2.tsv")

s2
topbtm <- s2[c(1:5, 35:40),]

topbtm |> kbl() |> kable_paper() |> column_spec(
  5,
  color = "white",
  background = spec_color(topbtm$`Odds ratio`, end = .8),
  )

s3 <- readr::read_tsv("tables/st3.tsv")

s3

s3 |> kbl() |> kable_paper() |> column_spec(
  2,
  color = "white",
  background = spec_color(s3$AUC, end = .6, option = "magma"),
  ) |>  column_spec(
  5,
  color = "white",
  background = spec_color(s3$`Odds   ratio`, end = .7, option = "viridis"),
  ) |>  column_spec(
  3,
  color = "white",
  background = spec_color(s3$Accuracy, end = .6, option = "magma"),
  )
