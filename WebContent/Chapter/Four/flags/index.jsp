<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
  <f:view>
    <head>
      <link href = "styles.css" rel = "stylesheet" type = "text/css" />
      <title>
        <h:outputText value="#{Ch4FlagsMsgs.indexWindowTitle}" />
      </title>
    </head>
    <body>
      <h:form>
        <table>
          <tr>
            <td>
              <h:commandLink immediate = "true" action = "#{localeChanger.germandAction}">
                <h:graphicImage value = "de_flag.gif" style = "border: 0px" />
              </h:commandLink>
            </td>
            <td>
              <h:commandLink immediate = "true" action = "#{localeChanger.englishAction}">
                <h:graphicImage value = "en_flag.gif" style = "border: 0px" />
              </h:commandLink>
            </td>
          </tr>
        </table>
        <p>
          <h:outputText value = "#{Ch4FlagsMsgs.indexPageTitle}" style = "font-style: italic; font-size: 1.3em" />
        </p>
        <table>
          <tr>
            <td><h:outputText value = "#{Ch4FlagsMsgs.namePrompt}" /></td>
            <td><h:inputText value = "#{Ch4FlagsUser.name}" /></td>
          </tr>
          <tr>
            <td><h:outputText value = "#{Ch4FlagsMsgs.passwordPrompt}" /></td>
            <td><h:inputSecret value = "#{Ch4FlagsUser.password}" /></td>
          </tr>
          <tr>
            <td style = "vertical-align: top">
              <h:outputText value = "#{Ch4FlagsMsgs.tellUsPrompt}" />
            </td>
            <td><h:inputTextarea value = "#{Ch4FlagsUser.aboutYourself}" rows = "5" cols = "35" /></td>
          </tr>
          <tr>
            <td><h:commandButton value = "#{Ch4FlagsMsgs.submitPrompt}" action = "thankYou" /></td>
          </tr>
        </table>
      </h:form>
    </body>
  </f:view>
</html>
