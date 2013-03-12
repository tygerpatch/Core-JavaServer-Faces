<html>
  <%@ taglib uri = "http://java.sun.com/jsf/html" prefix = "h" %>
  <%@ taglib uri = "http://java.sun.com/jsf/core" prefix = "f" %>
  <f:view>
    <head>
      <title><h:outputText value = "#{Ch2Msgs.title}" /></title>
    </head>
    <body>
      <h:form>
        <h3>
          <h:outputText value = "#{Ch2Msgs.heading}" />
        </h3>
        <p>
          <h:outputFormat value = "#{Ch2Msgs.currentScore}">
            <f:param value = "#{Ch2Quiz.score}" />
          </h:outputFormat>
        </p>
        <p>
          <h:outputText value = "#{Ch2Msgs.guessNext}" />
        </p>
        <p>
          <h:outputText value = "#{Ch2Quiz.current.sequence}" />
        </p>
        <p>
          <h:outputText value = "#{Ch2Msgs.answer}" />
          <h:inputText value = "#{Ch2Quiz.answer}" />
        </p>
        <p>
          <h:commandButton value = "#{Ch2Msgs.next}" action = "next" />
        </p>
      </h:form>
    </body>
  </f:view>
</html>