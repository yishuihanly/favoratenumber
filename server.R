library(shiny)
x<-0
x <<- x + 1
y <<- 0
halflover<-function(z=1,gender=1) {
  if (gender==1){return(10-z)}
  else if (gender==2)
  {return(z)}
}
shinyServer(
  function(input, output) {
    x<-reactive({nchar(input$name)})
    output$inputValue<-renderPrint({input$id1})
    output$prediction<-renderPrint({
#       if (input$course==)
      x()+halflover(input$id1,input$gender)})
  }
)