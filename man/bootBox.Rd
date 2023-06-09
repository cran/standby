% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bootbox-dependencies.R, R/bootbox-handler.R
\name{useBootBox}
\alias{useBootBox}
\alias{bootBox}
\title{BootBox}
\usage{
useBootBox()

bootBox(
  title = "Your title",
  message = "Your message here...",
  size = "small",
  close_on_escape = TRUE,
  show = TRUE,
  backdrop = NULL,
  close_button = TRUE,
  animate = TRUE,
  class = NULL,
  session = getDefaultReactiveDomain()
)
}
\arguments{
\item{title}{Adds a header to the dialog.}

\item{message}{Text displayed in the dialog.}

\item{size}{Adds the relevant Bootstrap modal size class to the dialog wrapper. Valid values are:
\itemize{
\item \code{"small"}
\item \code{"large"}
\item \code{"extra-large"}
}}

\item{close_on_escape}{Logical; if \code{TRUE} (the default), allows the user to dismiss the dialog by hitting \code{ESC} key.}

\item{show}{Logical; if \code{TRUE} (the default), the dialog is shown immediately.}

\item{backdrop}{Logical; if \code{TRUE}, the backdrop is displayed and clicking on it dismisses the dialog. Defaults to \code{NULL}.
Valid values are:
\itemize{
\item \code{NULL}: The backdrop is displayed, but clicking on it has no effect.
\item \code{TRUE}: The backdrop is displayed, and clicking on it dismisses the dialog.
\item \code{FALSE}: The backdrop is not displayed.
}}

\item{close_button}{Logical; if \code{TRUE} (the default), a close button is displayed.}

\item{animate}{Logical; if \code{TRUE} (the default), animates the dialog in and out.}

\item{class}{Custom CSS class (using Animate.css).}

\item{session}{Shiny session object.}
}
\value{
None
}
\description{
Bootstrap modals made easy.
}
\section{Functions}{

\itemize{
\item \code{useBootBox}: Dependencies to include in your UI.
\item \code{bootBox}: Display modals.
}
}

\examples{
if (interactive()) {
library(shiny)
library(standby)

ui <- fluidPage(

  useBootBox(), # include dependencies
  actionButton(inputId = "btn",
               label   = "BootBox Demo")

)

server <- function(input, output, session) {

  observeEvent(input$btn, {
    # display modal
    bootBox("Hey there!", "Thank you for exploring standby!")
  })
}

shinyApp(ui, server)
}

}
