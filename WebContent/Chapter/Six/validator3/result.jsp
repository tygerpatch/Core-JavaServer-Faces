<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
  <f:view>
    <head>
      <link href="styles.css" rel="stylesheet" type="text/css"/>
      <title><h:outputText value="#{Ch6Validator3Msgs.title}"/></title>
    </head>
    <body>
      <h:form>
        <p><h:outputText value="#{Ch6Validator3Msgs.validDate}"/></p>
        <p><h:commandButton value="#{Ch6Validator3Msgs.back}" action="back"/></p>
      </h:form>
    </body>
  </f:view>
</html>
