Course Project: Shiny Application and Reproducible Pitch
========================================================
author: Brian C.
date: Feb-14-2016
css: styles.css

Assignment
========================================================
class: small-code

Assignment Requirements:  Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.

Tactical Requirements: The application must include the following:
- Some form of input; some operation on the ui input in sever.R
- Some reactive output displayed as a result of server calculations

My Application
========================================================
class: small-code

I chose to build a **mtcars** data exploration tool. My application has 2 major components:

- Gas mileage analyzer utility: a quick graphing application to help show how many cars have various miles per gallons.
- Data exploration utility: a datatable filtering application that enables drill-down functionality for filtering/selecting a car.

Source code for ui.R and server.R files are available on my [GitHub](https://github.com/BrianC-CMH/DevelopingDataProducts) site.


Gas mileage analyzer utility
========================================================
Ever wonder how many vehicles in **mtcars** have a certain gas milage? Now you can drill into that answer.

![plot of chunk unnamed-chunk-1](pres-figure/unnamed-chunk-1-1.png) 

Data exploration utility
========================================================
A quick graphing application to help show how many cars have various miles per gallons.

|Car          | MilesPerGallon| Cylinders| Displacement| Horsepower|Transmission |
|:------------|--------------:|---------:|------------:|----------:|:------------|
|Lotus Europa |           30.4|         4|         95.1|        113|Manual       |
|Volvo 142E   |           21.4|         4|        121.0|        109|Manual       |
|Ferrari Dino |           19.7|         6|        145.0|        175|Manual       |


