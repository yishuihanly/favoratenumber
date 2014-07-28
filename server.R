library(shiny)
badcourse<-c("1","2","3")
halflover<-function(z=1,gender=1) {
  if (gender==1){return(10-z)}
  else if (gender==2)
  {return(z)}
}
shinyServer(
  function(input, output) {
    x<-reactive({nchar(input$name)})
    #     badcourse<-c("1","2","3")
    goodcourse<-c("4","5","6","7","8")
    output$testvalue<-renderPrint({input$course})
    output$inputValue<-renderPrint({input$id1})
    juge<-reactive(is.element(input$course,badcourse))
    output$prediction<-renderPrint({
      #       if (is.element(input$course,badcourse)){
      if (all(input$course %in% goodcourse)){  
# { }
        x()+halflover(input$id1,input$gender)
      } else{ 
        "YOU WILL NEVER HAVE LOVERs!"}
    }) 
  }
)