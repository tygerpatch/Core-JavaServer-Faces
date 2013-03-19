<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
  <f:view>
    <head>
      <link href="styles.css" rel="stylesheet" type="text/css"/>
      <title>${Ch7RushmoreMsgs.jeffersonWindowTitle}</title>
    </head>
    <body>
      <h:form>
        <h:outputText value="#{Ch7RushmoreMsgs.jeffersonPageTitle}" styleClass="presidentPageTitle" />
        <h:outputText value="#{Ch7RushmoreMsgs.jeffersonDiscussion}" styleClass="presidentDiscussion" />
        <h:commandLink action="index" styleClass="backLink">
          ${Ch7RushmoreMsgs.indexLinkText}
        </h:commandLink>
      </h:form>
    </body>
  </f:view>
</html>

