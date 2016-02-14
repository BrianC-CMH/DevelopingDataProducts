Course Project: Shiny Application and Reproducible Pitch
========================================================
author: Brian C.
date: Feb-14-2016

Assignment
========================================================
Course Project :: Shiny Application and Reproducible Pitch

Assignment Requirements: Your Shiny Application

- Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.
- Deploy the application on Rstudio's shiny server
- Share the application link by pasting it into the provided text box
- Share your server.R and ui.R code on github

Tactical Requirements: The application must include the following:

- Some form of input (widget: textbox, radio button, checkbox, ...)
- Some operation on the ui input in sever.R
- Some reactive output displayed as a result of server calculations
- You must also include enough documentation so that a novice user could use your application.
- The documentation should be at the Shiny website itself. Do not post to an external link.

My Application
========================================================
I chose to build a **mtcars** data exploration tool. My application has 2 major components:

- Gas mileage analyzer utility: a quick graphing application to help show how many cars have various miles per gallons.
- Data exploration utility: a datatable filtering application that enables drill-down functionality for filtering/selecting a car.

Gas mileage analyzer utility
========================================================
Ever wonder how many vehicles in **mtcars** have a certain gas milage? Now you can drill into that answer.

Data exploration utility
========================================================
A quick graphing application to help show how many cars have various miles per gallons.

Misc
========================================================
Source code for ui.R and server.R files are available on the [GitHub](https://github.com/BrianC-CMH/DevelopingDataProducts).

