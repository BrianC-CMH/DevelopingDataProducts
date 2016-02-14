library(shiny)
library(datasets)
library(dplyr)

shinyServer(function(input, output) {
  
  # Show the cars that correspond to the filters
  output$table <- renderDataTable({
    disp_seq <- seq(from = input$disp[1], to = input$disp[2], by = 0.1)
    hp_seq <- seq(from = input$hp[1], to = input$hp[2], by = 1)
    data <- transmute(mtcars, Car = rownames(mtcars)
                      , MilesPerGallon = mpg
                      , Cylinders = cyl
                      , Displacement = disp
                      , Horsepower = hp
                      , Transmission = am)
    data <- filter(data, Cylinders %in% input$cyl
                   , Displacement %in% disp_seq
                   , Horsepower %in% hp_seq
                   , Transmission %in% input$am)
    
    data <- mutate(data, Transmission = ifelse(Transmission==0, "Automatic", "Manual"))
    data <- arrange(data, Displacement)
    data
  }, options = list(lengthMenu = c(seq(from=5, to=30, by=5)), pageLength = 30))

  
  #--- Output for histogram and slider
  output$mpgHistogram <- renderPlot({
 
    hp_seq <- seq(from = input$ch.hp[1], to = input$ch.hp[2], by = 1)  
    # --- Drop all variables that we're not interested in
    data <- transmute(mtcars, Car = rownames(mtcars)
                      , MilesPerGallon = mpg
                      , Horsepower = hp
                      , Transmission = am)
    data <- filter(data, Horsepower %in% hp_seq
                   , Transmission %in% input$ch.am)
    data <- mutate(data, Transmission = ifelse(Transmission==0, "Automatic", "Manual"))
    
    hist(data$MilesPerGallon, xlab='', col='lightblue', main='Miles per Gallon (detail and average)')
    mu <- mean(data$MilesPerGallon)
    lines(c(mu, mu), c(0, 200),col="red",lwd=5)
    text(0, 150, paste("mu = ", mu))
  })
  
})