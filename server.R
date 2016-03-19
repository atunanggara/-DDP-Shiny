library(shiny)

Component<-c("Midterm 1","Midterm 2", "Midterm 3", "Final Exam", "HW", "Reading Quiz","Lab Grade","Discussion Section")
Percentage<-c(13.33,13.33,13.33,20,10,5,15,10)
Table1<-data.frame(Component,Percentage)

Total<-c("\u227A 60","60-69","70-72","73-76","77-79","80-82","83-86","87-89","90-92","\u2265 93")
Grade<-c("F","D","C-","C","C+","B-","B","B+","A-","A")
Table2<-data.frame(Total,Grade)
colnames(Table2)<-c("Raw Total Grade","Final Grade")

shinyServer(
  function(input, output) {
    avemidterm<-reactive({
      ((input$id1+input$id2+input$id3)/3)*0.4
    })
    output$oid1<-avemidterm
    avenonmidterm<-reactive({
      ((input$id5*0.10)+(input$id6*0.05)+(input$id7*0.15)+(input$id8*0.10))
    })
    output$oid2 <- avenonmidterm
    totalpoint<-reactive({
      eval(avemidterm()) + eval(avenonmidterm())+ (input$id4*0.2)
    })
     output$oid3 <- totalpoint
    output$oid4 <- renderPrint(
      if(eval(totalpoint()) >= 93){print("A")}
      else if (eval(totalpoint()) >= 90) {print("A-")}
      else if (eval(totalpoint()) >= 87) {print("B+")}
      else if (eval(totalpoint()) >= 83) {print("B")}
      else if (eval(totalpoint()) >= 80) {print("B-")}
      else if (eval(totalpoint()) >= 77) {print("C+")}
      else if (eval(totalpoint()) >= 73) {print("C")}
      else if (eval(totalpoint()) >= 70) {print("C-")}
      else if (eval(totalpoint()) >= 60) {print("D")}
      else {print("F")}
    )
    output$table1<-DT::renderDataTable({Table1},options=list(pageLength=10),selection='none')
    output$table2<-DT::renderDataTable({Table2},options=list(pageLength=10),selection='none')
  }
)