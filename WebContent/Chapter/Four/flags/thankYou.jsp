<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
  <f:view>
    <head>
      <title>
        <h:outputText value="#{Ch4FlagsMsgs.thankYouWindowTitle}" />
      </title>
    </head>
    <body>
      <h:outputText value="#{Ch4FlagsMsgs.namePrompt}" style="font-style: italic"/>
      <h:outputText value="#{Ch4FlagsUser.name}" />
      <br/>
      <h:outputText value="#{Ch4FlagsMsgs.aboutYourselfPrompt}" style="font-style: italic"/>
      <br/>
      <pre><h:outputText value = "#{Ch4FlagsUser.aboutYourself}" /></pre>
   </body>
  </f:view>
</html>
