shinyUI(pageWithSidebar(
  headerPanel("Hello Shiny!"),
  sidebarPanel(   
    # textbox
    textInput(inputId="name", label = "Your Name"),
    # numericInput
    numericInput("id1","Your favorite NUMBER (from 0 to 9)",
                 5,min=0,max=9),
    submitButton('Submit'),
    # radio button
    radioButtons('gender','Gender', 
                 c("Mal"="1",
                   "Femal"="2")          
    ),
    # checkbox
    checkboxGroupInput("course","course",
                       c("Physics"="1",
                         "Math"="2",
                         "Chem"="3",
                         "history"="4",
                         "literature"="5",
                         "other"="6"
                         ))
  ),
  mainPanel(
    
    h1('Instruction'),
    h4('Please input your name, your favorite number and choose 
        your gender,then this app could tell you the favorite 
        number of your lover.'),
    
    h3('Your favorite number:'),
    verbatimTextOutput('inputValue'),
    h3('The favorite number of your lover:'),
    verbatimTextOutput('prediction')
  )
))