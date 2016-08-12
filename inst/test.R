library(funnel)
load("data/cabg.rda") # if necessary to access cabg data
par(mfrow = c(1,2))
funnelslice(cabg, plot_title = "Slice", plot = "slice")
funnelslice(cabg, plot_title = "Funnel")

