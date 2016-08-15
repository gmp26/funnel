## ---- echo = TRUE--------------------------------------------------------
devtools::install_github('gmp26/funnel')
library(funnel)
load("../data/cabg.rda") # if necessary to access cabg data
x <- cabg # cabg was created from "inst/extdata/CABG-hospitals-03.csv"

## ---- echo=TRUE, fig.width=4---------------------------------------------
par(cex = 0.5)
funnelslice(x, plot_title = "Slice", plot = "slice")

## ---- echo=TRUE, fig.width=4---------------------------------------------
par(cex = 1)
funnelslice(x, plot_title = "Funnel")

## ---- echo = TRUE, fig.width = 7, fig.height = 6.5-----------------------
funnelslice(x, plot_title = "Slice", plot = "slice")

## ---- echo = TRUE, fig.width = 7, fig.height = 6.5-----------------------
funnelslice(x, plot_title = "Funnel")

## ---- echo = TRUE, dev = 'png', fig.width = 4----------------------------
funnelslice(x, plot_title = "Slice", plot = "slice", tails = c(0.01,0.05))
funnelslice(x, plot_title = "Funnel", tails = c(0.01,0.05))

## ---- echo = TRUE, dev = 'png', fig.width = 4----------------------------
funnelslice(x, plot_title = "Slice", plot = "slice", xlabel = "xlabel", ylabel = "ylabel")
funnelslice(x, plot_title = "Funnel", xlabel = "xlabel", ylabel = "ylabel")


## ---- echo = TRUE, dev = 'png', fig.width = 4----------------------------

funnelslice(x, plot_title = "Slice", plot = "slice",riskadj = T)
funnelslice(x, plot_title = "Funnel", riskadj = T)

## ---- echo = TRUE, dev = 'png', fig.width = 4----------------------------

funnelslice(x, plot_title = "Slice", plot = "slice", RASRplot  =  T)
funnelslice(x, plot_title = "Funnel", RASRplot  =  T)

## ---- echo = TRUE, dev = 'png', fig.width = 4----------------------------
funnelslice(x, plot_title = "Slice", plot = "slice", mean.target = F, plot.target = T, ypercent = F)
funnelslice(x, plot_title = "Funnel", mean.target = F, plot.target = T, ypercent = F)



