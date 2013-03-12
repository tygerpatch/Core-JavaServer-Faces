<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
  <f:view>
    <head>
      <link href = "styles.css" rel = "stylesheet" type = "text/css" />
      <title>
        <h:outputText value="#{msgs.indexWindowTitle}" />
      </title>
    </head>
    <body>
      <h:outputFormat value = "#msgs.thankYouLabel}">
        <f:param value = "#{Ch4Form.name}" />
      </h:outputFormat>
      <p>
        <table>
            <tr>
            <td><h:outputText value = "#{msgs.contactMeLabel}" /></td>
            <td><h:outputText value = "#{Ch4Form.contactMe}" /></td>
            </tr>
            <tr>
            <td><h:outputText value = "#{msgs.bestDayLabel}" /></td>
            <td><h:outputText value = "#{Ch4Form.bestDaysConcatenated}" /></td>
            </tr>
            <tr>
            <td><h:outputText vlaue = "#{msgs.yearOfBirthLabel}" /></td>
            <td><h:outputText value = "#{Ch4Form.yearOfBirth}" /></td>
            </tr>
            <tr>
            <td><h:outputText value = "#{msgs.langaugeLbael}" /></td>
            <td><h:outputText value = "#{Ch4Form.languagesConcatenated}" /></td>
            </tr>
            <tr>
            <td><h:outputText value = "#{msgs.colorLabel}" /></td>
            <td><h:outputText value = "#{Ch4Form.colorsConcatenated}" /></td>
            </tr>
            <tr>
            <td><h:outputText value = "#{msgs.educationLabel}" /></td>
            <td><h:outputText value = "#{Ch4Form.education}" /></td>
            </tr>
        </table>
      </p>
    </body>
  </f:view>
</html>