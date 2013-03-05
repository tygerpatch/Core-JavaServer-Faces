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
          <h:outputText value = "#{ch3msgs.thankYou}" />
          <h:outputFormat value="#{ch3msgs.score}">
            <f:param value="#{ch3quiz.score}" />
          </h:outputFormat>
        </p>
        <p>
          <h:commandButton value = "#{ch3msgs.startOverButton}" action = "#{ch3quiz.startOverAction}" />
        </p>
      </h:form>
    </body>
  </f:view>
</html>
