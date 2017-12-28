library(shiny)
ContVars <- c("Alcohol", "MalicAcid", "Ash", "AlcalinityOfAsh",
              "Magnesium", "TotalPhenols", "Flavanoids",
              "NonflavanoidPhenols","Proanthocyanins",
              "Color Intensity", "Hue", "OD280", "Proline")  

shinyUI(pageWithSidebar(
  headerPanel("Wine"),
  
  sidebarPanel ( 
    
    
    p("Results of a chemical analysis of wines
      grown in the same region in Italy but from
      three different cultivars."),
    
    p("Data from the ",
      a(href = "https://archive.ics.uci.edu/ml/datasets/Wine", "UCI Machine Learning Repository.")),
    
    selectInput('x','x-axis',ContVars, selected = "Alcohol"),
    selectInput('y','y-axis',ContVars, selected = "TotalPhenols")
                              
  ),
  
  mainPanel(plotOutput('plot', height = 600, width = 800 ))
  
))
