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
    output$testvalue<-renderPrint({input$course})
    output$inputValue<-renderPrint({input$id1})
   
    output$prediction<-renderPrint({
#       if (input$course=="1"|input$course=="2"|input$course=="3" )
#       {"Your WILL NEVER HAVE LOVER!"}
      if (is.element(input$course,badcourse)){
        "YOU WILL NEVER HAVE LOVE!"
      }
      else{ x()+halflover(input$id1,input$gender)}
     })
  }
)