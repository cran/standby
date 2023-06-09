% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vizload-dependencies.R, R/vizload-handler.R
\name{useVizLoad}
\alias{useVizLoad}
\alias{vizLoad}
\title{Loading Visualization}
\usage{
useVizLoad()

vizLoad(
  uiOutput,
  type = "bars",
  size = "large",
  color = NULL,
  add_label = FALSE,
  label = "Loading..."
)
}
\arguments{
\item{uiOutput}{An output element to be wrapped within a spinner.}

\item{type}{The type of bar/spinner to use. Valid values are:
\itemize{
\item bars
\item squares
\item circles
\item dots
\item spinner
\item dashed
\item line
\item bordered_line
}}

\item{size}{The size of the bar/spinner. Valid values are:
\itemize{
\item large
\item medium
\item small
\item tiny
\item fluid
}}

\item{color}{The color of the bar/spinner. Choose between hexadecimal, RGB or keyword values.}

\item{add_label}{Logical; if \code{TRUE}, displays a label below the bar/spinner. Defaults to \code{FALSE}.}

\item{label}{The label to be displayed below the bar/spinner. \code{add_label} must
be set to \code{TRUE} to display the label.}
}
\value{
None
}
\description{
Loading bars and spinners.
}
\section{Functions}{

\itemize{
\item \code{useVizLoad}: Dependencies to include in your UI.
\item \code{vizLoad}: Display loading animation.
}
}

\examples{
if (interactive()) {
  library(shiny)

  shinyApp(
    ui = fluidPage(
      useVizLoad(),
      actionButton("render", "Render"),
      vizLoad(plotOutput("plot"))
    ),
    server = function(input, output) {
      output$plot <- renderPlot({
        input$render
        Sys.sleep(3)
        hist(mtcars$mpg)
      })
    }
  )
}

}
