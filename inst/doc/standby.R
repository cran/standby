## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----example, eval=FALSE------------------------------------------------------
#  library(shiny)
#  library(standby)
#  
#  ui <- fluidPage(
#  
#    standby::useSpinkit(), # include dependencies
#    fluidRow(
#      standby::spinkit(plotOutput("plot1")), # wrap output inside loader
#      actionButton("render", "Render")
#    )
#  
#  )
#  
#  server <- function(input, output, session) {
#  
#      output$plot1 <- renderPlot({
#        input$render
#        Sys.sleep(3)
#        plot(cars)
#      })
#  
#  }
#  
#  shinyApp(ui, server)

## ----ref_table, echo=FALSE----------------------------------------------------
index <- 1:5
dependency <- c("`useThreeDots()`", "`useSpinkit()`", "`useVizLoad()`", "`useSpinners()`", 
                "`useLoaders()`")
renderer <- c("`threeDots()`", "`spinkit()`", "`vizLoad()`", "`spinners()`",
              "`loaders()`")
reference <- c("https://github.com/nzbin/three-dots",
               "https://github.com/tobiasahlin/SpinKit",
               "https://github.com/RIDICS/Loading-Visualization",
               "https://github.com/lukehaas/css-loaders",
               "https://github.com/raphaelfabeni/css-loader")
ref <- data.frame(Index = index, Dependency = dependency, Render = renderer, Reference = reference)
kableExtra::kable(ref)

