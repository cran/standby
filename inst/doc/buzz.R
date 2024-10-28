## ----include = FALSE----------------------------------------------------------
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
#    useToast(), # include dependencies
#    actionButton(inputId = "btn",
#                 label   = "iziToast Demo")
#  
#  )
#  
#  server <- function(input, output, session) {
#  
#    observeEvent(input$btn, {
#      # display toast notification
#      toast("Hey there!", "Thank you for exploring buzz!")
#    })
#  }
#  
#  shinyApp(ui, server)

## ----ref_table, echo=FALSE----------------------------------------------------
index <- 1:8
dependency <- c("`useAlertify()`", "`useAlertify()`", "`useBootBox()`", "`useMicroTip()`", 
                "`useNS()`", "`useNotify()`", "`useTingle()`", "`useToast()`")
renderer <- c("`alertify_alert()`", "`alertify_notify()`", "`bootBox()`", "`microTip()`",
              "`notice()`", "`notify()`", "`tingle()`", "`toast()`")
reference <- c("https://github.com/MohammadYounes/AlertifyJS",
               "https://github.com/MohammadYounes/AlertifyJS",
               "https://github.com/bootboxjs/bootbox",
               "https://github.com/ghosh/microtip",
               "https://tympanus.net/Development/NotificationStyles/",
               "https://github.com/sciactive/pnotify",
               "https://github.com/robinparisi/tingle",
              "https://github.com/marcelodolza/iziToast")
ref <- data.frame(Index = index, Dependency = dependency, Render = renderer, Reference = reference)
kableExtra::kable(ref)

