<html>
  <%@ taglib uri = "http://java.sun.com/jsf/html" prefix = "h" %>
  <%@ taglib uri = "http://java.sun.com/jsf/core" prefix = "f" %>
  <f:view>
    <head>
      <title><h:outputText value = "#{ch2msgs.title}" /></title>
    </head>
    <body>
      <h:form>
        <h3>
          <h:outputText value = "#{ch2msgs.heading}" />
        </h3>
        <p>
          <h:outputFormat value = "#{ch2msgs.currentScore}">
            <f:param value = "#{ch2quiz.score}" />
          </h:outputFormat>
        </p>
        <p>
          <h:outputText value = "#{ch2msgs.guessNext}" />
        </p>
        <p>
          <h:outputText value = "#{ch2quiz.current.sequence}" />
        </p>
        <p>
          <h:outputText value = "#{ch2msgs.answer}" />
          <h:inputText value = "#{ch2quiz.answer}" />
        </p>
        <p>
          <h:commandButton value = "#{ch2msgs.next}" action = "next" />
        </p>
      </h:form>
    </body>
  </f:view>
</html>