<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
  <f:view>
    <head>
      <title>
        <h:outputText value="#{Ch4PersonalDataMsgs.indexWindowTitle}" />
      </title>
    </head>
      <h:outputText value = "#{Ch4PersonalDataMsgs.indexPageTitle}" style = "font-style: italic; font-size: 1.5em" />
      <h:form>
        <table>
          <tr>
            <td><h:outputText value = "#{Ch4PersonalDataMsgs.namePrompt}" /></td>
            <td><h:inputText value = "#{Ch4PersonalDataUser.name}" /></td>
          </tr>
          <tr>
            <td><h:outputText value = "#{Ch4PersonalDataMsgs.passwordPrompt}" /></td>
            <td><h:inputText value = "#{Ch4PersonalDataUser.password}" /></td>
          </tr>
          <tr>
            <td><h:outputText value = "#{Ch4PersonalDataMsgs.tellUsPrompt}" /></td>
            <td><h:inputTextarea value = "#{Ch4PersonalDataUser.aboutYourself}" rows = "5" cols = "35" /></td>
          </tr>
        </table>
        <h:commandButton value = "#{Ch4PersonalDataMsgs.submitPrompt}" action = "thankYou" />
      </h:form>
    <body>
    </body>
  </f:view>
</html>
