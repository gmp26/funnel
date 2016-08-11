#' Funnel and slice plot generator - wrapped for export to shiny
#'
#' \code{funnelslice} This function wraps the core funnel4 function,
#'reducing the parameters to those used by the shinyfunnelapp package.

#' @include funnel4.R
#' @param x A data frame of mortality observations from a number of hospitals.
#' @param plot_title The plot target
#' @param plot The plot type
#' @param xlabel x axis label
#' @param ylabel y axis label
#' @param rank The plot order - by "precision" or alphabetically by "name"
#' @param riskadj Make a risk adjusted plot if TRUE
#' @param RASRplot Work with risk adjusted mortality data if TRUE, else raw mortality rates
#' @param mean.target Calculate target from mean
#' @param plot.target Plot target if TRUE
#' @param ypercent Show survival as percentage if true
#' @param tails A pair of p-values determining the inner and outer confidence limits
#' @seealso \code{\link{funnel4}}
#' @export
funnelslice <- function(x,
                        plot_title="NY Cardiac Surgery",
                        plot="funnel",
                        xlabel="Number of operations per hospital",
                        ylabel="Survival rate (%)",
                        rank="precision",
                        riskadj=F,
                        RASRplot=F,
                        mean.target=F,
                        plot.target=F,
                        ypercent=T,
                        tails=c(0.001,0.025)) {

  # todo: add some error handling here
  N<- x$Cases
  R<- N-x$Deaths
  P = N -x$EMR*N/100
  xrange<-c(0,max(N))
  yrange<-c(min(R/N )-0.01, 1)
  names= as.character(x$Hospital)

  # test using slices
  funnel4(obs.prop=R/N,  denom=N, pred.prop=P/N, names=names,
          plot=plot_title, rank=rank, riskadj=riskadj, RASRplot=RASRplot,
          mean.target=mean.target, plot.target=plot.target, title=plot_title,xrange=xrange,
          yrange=yrange, tails=tails,xlab=xlabel,ylab=ylabel,ypercent=ypercent,
          bandcols=c("white","cyan","cyan3")
  )
}
