<html>
  <%@ taglib uri = "http://java.sun.com/jsf/core" prefix = "f" %>
  <%@ taglib uri = "http://java.sun.com/jsf/html" prefix = "h" %>
  <f:view>
    <head>
      <title><h:outputText value="#{ch3msgs.title}" /></title>
    </head>
    <body>
      <h:form>
        <p>
          <h:outputText value = "#{ch3msgs.correct}" />
          <h:outputFormat value="#{ch3msgs.score}">
            <f:param value="#{ch3quiz.score}"/>
          </h:outputFormat>
        </p>
         <p><h:outputText value = "#{ch3msgs.nextProblem}" /></p>
         <p><h:outputText value = "#{ch3quiz.question}" /></p>
         <p><h:inputText value="#{ch3quiz.response}"/></p>
        <p><h:commandButton value="#{ch3msgs.answerButton}" action = "#{ch3quiz.answerAction}" /></p>
      </h:form>
    </body>
  </f:view>
</html>


