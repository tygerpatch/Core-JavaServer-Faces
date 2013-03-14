<html>
  <%@ taglib uri = "http://java.sun.com/jsf/core" prefix = "f" %>
  <%@ taglib uri = "http://java.sun.com/jsf/html" prefix = "h" %>
  <f:view>
    <head>
      <title><h:outputText value="#{Ch3Msgs.title}" /></title>
    </head>
    <body>
      <h:form>
         <p>
            <h:outputText value = "#{Ch3Msgs.stillNotCorrect}" />
            <h:outputFormat value="#{Ch3Msgs.correctAnswer}">
               <f:param value="#{Ch3Quiz.answerToLastQuestion}"/>
            </h:outputFormat>
         </p>

        <p><h:outputText value = "#{Ch3Msgs.nextProblem}" /></p>
        <p><h:outputText value = "#{Ch3Quiz.question}" /></p>

        <p><h:inputText value="#{Ch3Quiz.response}"/></p>
        <p><h:commandButton value="#{Ch3Msgs.answerButton}" action = "#{Ch3Quiz.answerAction}" /></p>
      </h:form>
    </body>
  </f:view>
</html>
