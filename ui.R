#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/

suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
shinyUI(navbarPage("Data Science Capstone Week7: Final Project Submission",
                   tabPanel("Prediction Tool",
                            HTML("<strong>Author: DamianS</strong>"),
                            br(),
                            HTML("<strong>Date: Apr 2022</strong>"),
                            br(),
                            # Sidebar
                            sidebarLayout(
                                    sidebarPanel(
                                            helpText("Word Prediction Tool"),
                                            textInput("inputString", "Enter text here",value = ""),
                                            br(),
                                            br(),
                                            br(),
                                            br()
                                    ),
                                    mainPanel(
                                            h3("Predicted word is:"),
                                            verbatimTextOutput("prediction"),
                                            br(),
                                            strong("Text input:"),
                                            tags$style(type='text/css', '#text1 {background-color: rgba(0, 137, 182,0.20); color: green;}'), 
                                            textOutput('text1'),
                                            br(),
                                            strong("Note:"),
                                            tags$style(type='text/css', '#text2 {background-color: rgba(200, 200, 199,0.20); color: grey;}'),
                                            textOutput('text2')
                                    )
                            )
                     ),
                   tabPanel("About",
                            mainPanel(
                                    includeMarkdown("about.txt")
                            )
                   )
)
)




