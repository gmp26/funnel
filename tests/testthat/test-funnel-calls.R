context("Funnel4 runs silently")

test_that("funnel4 works", {

  load("cabg.rda")
  x <- cabg
  N<- x$Cases
  R<- N-x$Deaths
  P = N -x$EMR*N/100
  xlabel<-"Number of operations per hospital"
  xlabel<-"Number of operations per hospital (adjusted)"
  xrange<-c(0,max(N))
  # ylabel<-"Mortality rate (%)"
  #yrange<-c(0,max( R/N ))
  yrange<-c(min(R/N )-0.01, 1)
  #yrange=c(0,1)
  names= as.character(x$Hospital)
  tails=c(0.001,0.025)
  title<-"NY Cardiac Surgery - not risk-adjusted"
  ylabel<-"Survival rate (%)"
  expect_silent(
    {out <- funnel4(obs.prop=R/N,  denom=N, pred.prop=P/N, names=names,
                    plot="funnel", rank="precision", riskadj=F, RASRplot=F,
                    plot.target=F, title=title,xrange=xrange,
                    yrange=yrange, tails=tails,xlab=xlabel,ylab=ylabel,ypercent=T,
                    bandcols=c("white","cyan","cyan3")
    )})
  expect_null(out)
})
