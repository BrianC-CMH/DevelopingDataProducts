library(markdown)

shinyUI(navbarPage("mtcars data analysis :: shiny 101",
                   tabPanel("Overview",
                            mainPanel(
                              includeMarkdown("description.md")
                            )
                   ),
                   tabPanel("Gas Mileage Analyzer",
                            headerPanel("Gas Mileage Analysis"),
                            sidebarLayout(
                              sidebarPanel(
                                helpText("Determine gas mileage for selected car parameters:\n"),
                                sliderInput('ch.hp', 'Gross horsepower', min=50, max=340, value=c(50,340), step=10),
                                checkboxGroupInput('ch.am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0,1))
                              ),
                              mainPanel(
                                plotOutput('mpgHistogram')
                              )
                            )
                   ),
                   tabPanel("Exploratory Data Table",
                            sidebarLayout(
                              sidebarPanel(
                                helpText("Select appropriate vehicle parameters to narrow your search:"),
                                checkboxGroupInput('cyl', 'Number of cylinders:', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8)),
                                sliderInput('disp', 'Displacement', min=70, max=480, value=c(70,480), step=10),
                                sliderInput('hp', 'Gross horsepower', min=50, max=340, value=c(50,340), step=10),
                                selectInput('am', "Select a transmission type:",
                                            list("Automatic"= "0", "Manual"="1"), selected= "0" )
                              ),
                              mainPanel(
                                dataTableOutput('table')
                              )
                            )
                   )

) )   