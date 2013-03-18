<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
  <f:view>
    <head>
      <link href="styles.css" rel="stylesheet" type="text/css" />
      <title><h:outputText value="#{Ch6ValidatorMsgs.title}" /></title>
    </head>
    <body>
      <h:form>
        <h:outputText value="#{Ch6ValidatorMsgs.canceled}" />
        <br/>
        <h:commandButton value="#{Ch6ValidatorMsgs.back}" action="back" />
      </h:form>
    </body>
  </f:view>
</html>
