<html>
  <%@ taglib uri = "http://java.sun.com/jsf/core" prefix = "f" %>
  <%@ taglib uri = "http://java.sun.com/jsf/html" prefix = "h" %>
  <f:view>
    <head>
      <link href = "styles.css" rel = "stylesheet" type = "text/css" />
      <title>
        <h:outputText value = "#{msgs.windowTitle}" />
      </title>
    </head>
    <body>
      <h:form>
        <h:outputText value = "#{msgs.greeting}" styleClass = "emphasis" /><br />
        <h:messages errorClass = "errors" layout = "table" /><br />
        <table>
          <tr>
            <td><h:outputText value = "#{msgs.namePrompt}:" /></td>
            <td><h:inputText id = "name" value = "#{user.name}" required = "true" label = "#{msgs.namePrompt}" /></td>
            <td><h:message for = "name" errorClass = "errors" /></td>
          </tr>
          <tr>
            <td><h:outputtext value = "#{msgs.agePrompt}:" /></td>
            <td><h:inputText id = "age" value = "#{user.age}" requierd = "true" size = "3" label = "#{msgs.agePrompt}" /></td>
            <td><h:message for = "age" errorClass = "errors" /></td>
          </tr>
        </table>
        <br />
        <h:commandButton> value = "#{msgs.submitPrompt}" />
      </h:form>
    </body>
  </f:view>
</html>