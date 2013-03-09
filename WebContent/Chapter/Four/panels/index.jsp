<html>
  <%@ taglib uri = "http://java.sun.com/jsf/core" prefix = "f" %>
  <%@ taglib uri = "http://java.sun.com/jsf/html" prefix = "h" %>
  <f:view>
    <head>
      <link href = "styles.css" rel = "stylesheet" type = "text/css" />
      <title>
        <h:outputText value = "#{Ch4PanelsMsgs.windowTitle}" />
      </title>
    </head>
    <body>
      <h:form>
        <h:panelGrid columns = "2" rowClasses = "oddrows, evenRows">
          <h:outputText value = "#{Ch4PanelsMsgs.namePrompt}:" />
          <h:panelGroup>
            <h:inputText id = "name" value = "#{Ch4PanelsUser.name}" required = "true" label = "#{Ch4PanelsMsgs.namePrompt}" />
            <h:message for = "name" errorClass = "errors" />
          </h:panelGroup>
          <h:outputText value = "#{Ch4PanelsMsgs.agePrompt}:" />
          <h:inputText size = "3" value = "#{Ch4PanelsUser.age}" label = "#{Ch4PanelsMsgs.agePrompt}" />
        </h:panelGrid>
        <br />
        <h:commandButton value = "#{Ch4PanelsMsgs.submitPrompt}" />
      </h:form>
    </body>
  </f:view>
</html>
