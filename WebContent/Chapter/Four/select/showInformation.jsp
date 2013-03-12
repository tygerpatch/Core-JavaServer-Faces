<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
  <f:view>
    <head>
      <link href = "styles.css" rel = "stylesheet" type = "text/css" />
      <title>
        <h:outputText value="#{Ch4SelectMsgs.indexWindowTitle}" />
      </title>
    </head>
    <body>
      <h:outputFormat value = "#{Ch4SelectMsgs.thankYouLabel}">
        <f:param value = "#{Ch4SelectForm.name}" />
      </h:outputFormat>
      <table>
          <tr>
          <td><h:outputText value = "#{Ch4SelectMsgs.contactMeLabel}" /></td>
          <td><h:outputText value = "#{Ch4SelectForm.contactMe}" /></td>
          </tr>
          <tr>
          <td><h:outputText value = "#{Ch4SelectMsgs.bestDayLabel}" /></td>
          <td><h:outputText value = "#{Ch4SelectForm.bestDaysConcatenated}" /></td>
          </tr>
          <tr>
          <td><h:outputText value = "#{Ch4SelectMsgs.yearOfBirthLabel}" /></td>
          <td><h:outputText value = "#{Ch4SelectForm.yearOfBirth}" /></td>
          </tr>
          <tr>
          <td><h:outputText value = "#{Ch4SelectMsgs.languageLabel}" /></td>
          <td><h:outputText value = "#{Ch4SelectForm.languagesConcatenated}" /></td>
          </tr>
          <tr>
          <td><h:outputText value = "#{Ch4SelectMsgs.colorLabel}" /></td>
          <td><h:outputText value = "#{Ch4SelectForm.colorsConcatenated}" /></td>
          </tr>
          <tr>
          <td><h:outputText value = "#{Ch4SelectMsgs.educationLabel}" /></td>
          <td><h:outputText value = "#{Ch4SelectForm.education}" /></td>
          </tr>
      </table>
    </body>
  </f:view>
</html>
