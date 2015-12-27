shinyUI(pageWithSidebar(
  headerPanel("Health index"),
  sidebarPanel(
    textInput(inputId="Name", label = "Enter your name"),
    
    numericInput("age", "Enter your age", 25,min = 15, max = 100),
    
    radioButtons(inputId="sex", label="Enter your sex", choices=c("Male","Female")),
    
    numericInput("hght", "Enter your height in mts.", 1.4,min = 1.4, max = 2.5, step = 0.01),
    
##    numericInput("wght", "Enter your weight in kgs", 63,min = 40, max = 125),
    
    checkboxInput("exer", "Exercise regularly? (Tick for Yes)", FALSE),
  
    sliderInput('wght', 'Weight input (in kgs)', value = 63, min = 40, max = 125, step = 0.5,),
    submitButton('Submit'),

    p(strong(em("Documentation:",a("Importance of BMI",href="ReadMe.html"))))

    ),
  mainPanel(

    h3('Your details'),
    h4('Hi'),
    verbatimTextOutput("oidName"),
    br(),
    h4('You are'),
    verbatimTextOutput("oidage"),
    h4('years old'),
    br(),
    h4('You are a '),
    verbatimTextOutput("oidsex"),
    br(),
    h4('You are'),
    verbatimTextOutput("oidhght"),
    h4('mts. tall'),
    br(),
    h4('You weigh'),
    verbatimTextOutput("oidwght"),
    h4('kgs.'),
    br(),
    h4('Your BMI'),
    verbatimTextOutput("oidbmi"),
    br(),
    h4('Ideal BMI chart(BMI of 20)'),
    plotOutput('BMIChart')
    
    )
  )
  )