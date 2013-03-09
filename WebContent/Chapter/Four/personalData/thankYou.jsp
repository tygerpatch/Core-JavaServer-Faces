<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
  <f:view>
    <head>
      <title>
        <h:outputText value="#{Ch4PersonalDataMsgs.thankYouWindowTitle}" />
      </title>
    </head>
    <body>
      <h:outputText value = "#{Ch4PersonalDataMsgs.namePrompt}" style = "font-style: italic" />
      <h:outputText value = "#{Ch4PersonalDataUser.name}" />
      <br />
      <h:outputText value = "#{Ch4PersonalDataMsgs.aboutYourselfPrompt}" style = "font-style: italic" />
      <br />
      <pre><h:outputText value = "#{Ch4PersonalDataUser.aboutYourself}" /></pre>
    </body>
  </f:view>
</html>
