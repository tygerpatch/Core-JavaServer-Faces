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
      <h:outputText value="#{Ch4SelectMsgs.indexPageTitle}" styleClass="emphasis" />
        <h:form>
          <table>
            <tr>
              <td><h:outputText value = "#{Ch4SelectMsgs.namePrompt}" /></td>
              <td><h:inputText value = "#{form.name}" /></td>
            </tr>
            <tr>
              <td><h:outputText value = "#{Ch4SelectMsgs.contactMePrompt}" /></td>
              <td><h:selectBooleanCheckbox value = "#{form.contactMe}" /></td>
            </tr>
            <tr>
              <td><h:outputText value = "#{Ch4SelectMsgs.bestDayPrompt}" /></td>
              <td>
                <h:selectManyMenu value = "#{form.bestDaysToContact}">
                  <f:selectItems value="#{form.daysOfTheWeek}" var="w" itemLabel="#{w.dayName}" itemValue="#{w.dayNumber}"/>
                </h:selectManyMenu>
              </td>
            </tr>
            <tr>
              <td><h:outputText value = "#{Ch4SelectMsgs.yearOfBirthPrompt}" /></td>
              <td>
                <h:selectOneListbox size = "5" value = "#{form.yearOfBirth}">
                  <f:selectItems value = "#{form.yearItems}" />
                </h:selectOneListbox>
              </td>
            </tr>
            <tr>
              <td><h:outputText value = "#{Ch4SelectMsgs.colorPrompt}" /></td>
              <td>
                <h:selectManyCheckbox value = "#{form.colors}">
                  <f:selectItems value = "#{form.colorItems}" />
                </h:selectManyCheckbox>
              </td>
            </tr>
            <tr>
              <td><h:outputText value = "#{Ch4SelectMsgs.languagePrompt}" /></td>
              <td>
                <h:selectManyListbox value = "#{form.languages}">
                  <f:selectItems value = "#{form.languageItems}" />
                </h:selectManyListbox>
              </td>
            </tr>
            <tr>
              <td><h:outputText value = "#{Ch4SelectMsgs.educationPrompt}" /></td>
              <td>
                <h:selectOneRadio value = "#{form.education}" layout = "pageDirection">
                  <f:selectItems value = "#{form.educationItems}" />
                </h:selectOneRadio>
            </tr>
          </table>
          <h:commandButton value = "#{Ch4SelectMsgs.buttonPrompt}" action = "showInformation" />
        </h:form>
        <h:messages />
      </body>
    </f:view>
  </html>
