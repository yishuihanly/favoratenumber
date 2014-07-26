shinyUI(pageWithSidebar(
  headerPanel("Lover's Number!"),
  sidebarPanel(   
    # textbox
    textInput(inputId="name", label = "Your Name"),
    # numericInput
    numericInput("id1","Your favorite NUMBER (from 0 to 9)",
                 5,min=0,max=9),
    # radio button
    radioButtons('gender','Gender', 
                 c("Mal"="1",
                   "Femal"="2")          
    ),
    # checkbox
    checkboxGroupInput("course","Choose the courses you love",
                       c("Physics"="1",
                         "Math"="2",
                         "Chem"="3",
                         "History"="4",
                         "Literature"="5",
                         "art"="6",
                         "law"="7",
                        "others"="8"
                         )),
    submitButton('Go, My beauty')
  ),
  mainPanel(
    
    h1('Instruction'),
    h4('Please input'),
    h4('1) your name,'),
    h4('2) your favorite number,'),
    h4('choose'),
    h4('3) your gender,'),
    h4('4) your favorite course.'),
    h4('At last, click "Go, My beauty".'),
    h4('Then this app could tell you the favorite 
        number of your lover.'),
    h3('If some unexpected result comes out, can you find the reason?'),
#     verbatimTextOutput('testvalue'),
    h3('Your favorite number:'),
    verbatimTextOutput('inputValue'),
    h3('The favorite number of your lover:'),
    verbatimTextOutput('prediction')
  )
))