<html>
  <%@ taglib uri = "http://java.sun.com/jsf/core" prefix = "f" %>
  <%@ taglib uri = "http://java.sun.com/jsf/html" prefix = "h" %>
  <f:view>
    <head>
      <link href = "styles.css" rel = "stylesheet" type = "text/css" />
      <title>
        <h:outputText value = "#{Ch4MessagessMsgs.windowTitle}" />
      </title>
    </head>
    <body>
      <h:form>
        <h:outputText value = "#{Ch4MessagessMsgs.greeting}" styleClass = "emphasis" /><br />
        <h:messages errorClass = "errors" layout = "table" /><br />
        <table>
          <tr>
            <td><h:outputText value = "#{Ch4MessagessMsgs.namePrompt}:" /></td>
            <td><h:inputText id = "name" value = "#{Ch4MessagesUser.name}" required = "true" label = "#{Ch4MessagessMsgs.namePrompt}" /></td>
            <td><h:message for = "name" errorClass = "errors" /></td>
          </tr>
          <tr>
            <td><h:outputText value = "#{Ch4MessagessMsgs.agePrompt}:" /></td>
            <td><h:inputText id = "age" value = "#{Ch4MessagesUser.age}" required = "true" size = "3" label = "#{Ch4MessagessMsgs.agePrompt}" /></td>
            <td><h:message for = "age" errorClass = "errors" /></td>
          </tr>
        </table>
        <br />
        <h:commandButton value = "#{Ch4MessagessMsgs.submitPrompt}" />
      </h:form>
    </body>
  </f:view>
</html>
