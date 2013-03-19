<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
  <f:view>
    <head>
      <link href="styles.css" rel="stylesheet" type="text/css"/>
      <title><h:outputText value="#{Ch7RushmoreMsgs.indexWindowTitle}"/></title>
    </head>
    <body>
      <h:outputText value="#{Ch7RushmoreMsgs.instructions}" styleClass="instructions" />
      <h:form>
        <h:commandButton image="mountrushmore.jpg" styleClass="imageButton" actionListener="#{Ch7Rushmore.handleMouseClick}" action="#{Ch7Rushmore.navigate}" />
      </h:form>
    </body>
  </f:view>
</html>
