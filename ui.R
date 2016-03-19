library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Final Grade Breakdown"),
  sidebarPanel(
    sliderInput('id1', 'Midterm 1', 0, min = 0, max = 100, 
                 step = 1),
    sliderInput('id2', 'Midterm 2', 0, min = 0, max = 100, 
                 step = 1),
    sliderInput('id3', 'Midterm 3', 0, min = 0, max = 100, 
                 step = 1),
    sliderInput('id4', 'Final Exam', 0, min = 0, max = 100, 
                 step = 1),
    sliderInput('id5', 'HW (%)', 0, min = 0, max = 100, 
                 step = 1),
    sliderInput('id6', 'Reading Quiz (%)', 0, min = 0, max = 100, 
                 step = 1),
    sliderInput('id7', 'Lab Grade (%)', 0, min = 0, max = 100, 
                step = 1),
    sliderInput('id8', 'Discussion Section (%)', 0, min = 0, max = 100, 
                step = 1),
    br(),
    p(strong(em("Documentation:",a("Final Grade Counts",href="https://github.com/atunanggara/DDP-Shiny/blob/master/Readme.md")))),
    br(),
    p(strong(em("Github Repository:",a("Developing Data Products",href="https://github.com/atunanggara/DDP-Shiny"))))
    ),
  mainPanel(
    tabsetPanel(
      tabPanel("Simulated Data",
    h3('Simulated Final Grade Based on Available Data'),
    h4('Average of Midterm Grades (out of 40%)'),
    verbatimTextOutput("oid1"),
    h4('Average of non-midterm Grades (out of 40%)'),
    verbatimTextOutput("oid2"),
    h4('Raw Total Grade (out of 100)'),
    verbatimTextOutput("oid3"),
    h4('Your final grade'),
    verbatimTextOutput("oid4")
    ),
      tabPanel("Component Breakdown",
        h3('Weight of Each Component'),
        DT::dataTableOutput('table1')
        ),
      tabPanel("Final Grade Range",
             h3('Numerical and Letter Grade'),
             DT::dataTableOutput('table2')
    )
    )
#     h4('You entered'),
#     verbatimTextOutput("oid4"),
#     h4('You entered'),
#     verbatimTextOutput("oid5"),
#     h4('You entered'),
#     verbatimTextOutput("oid6"),
#     h4('You entered'),
#     verbatimTextOutput("oid7")
#     h4('You entered'),
#     verbatimTextOutput("odate")
  )
))