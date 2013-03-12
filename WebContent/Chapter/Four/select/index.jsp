<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
  <f:view>
    <head>
      <link href="styles.css" rel="stylesheet" type="text/css"/>
      <title>
        <h:outputText value="#{Ch4SelectMsgs.indexWindowTitle}"/>
      </title>
    </head>
    <body>
      <h:outputText value="#{Ch4SelectMsgs.indexPageTitle}" styleClass="emphasis" />
      <h:form>
        <table>

          <tr>
            <td>
              <h:outputText value="#{Ch4SelectMsgs.namePrompt}"/>
            </td>
            <td>
              <h:inputText value="#{Ch4SelectForm.name}"/>
            </td>
          </tr>

            <tr>
              <td>
                <h:outputText value="#{Ch4SelectMsgs.contactMePrompt}"/>
              </td>
              <td>
                <h:selectBooleanCheckbox value="#{Ch4SelectForm.contactMe}"/>
              </td>
            </tr>

            <tr>
              <td>
                <h:outputText value="#{Ch4SelectMsgs.bestDayPrompt}"/>
              </td>
              <td>
                <h:selectManyMenu value="#{Ch4SelectForm.bestDaysToContact}">
                  <f:selectItems value="#{Ch4SelectForm.daysOfTheWeekItems}"/>
                </h:selectManyMenu>
              </td>
            </tr>

            <tr>
              <td>
                <h:outputText value="#{Ch4SelectMsgs.yearOfBirthPrompt}"/>
              </td>
              <td>
                <h:selectOneListbox size="5" value="#{Ch4SelectForm.yearOfBirth}">
                  <f:selectItems value="#{Ch4SelectForm.yearItems}"/>
                </h:selectOneListbox>
                </td>
            </tr>

            <tr>
              <td>
                <h:outputText value="#{Ch4SelectMsgs.colorPrompt}"/>
              </td>
              <td>
                <h:selectManyCheckbox value="#{Ch4SelectForm.colors}">
                  <f:selectItems value="#{Ch4SelectForm.colorItems}"/>
                </h:selectManyCheckbox>
              </td>
            </tr>

            <tr>
              <td>
                <h:outputText value="#{Ch4SelectMsgs.languagePrompt}"/>
              </td>
              <td>
                <h:selectManyListbox value="#{Ch4SelectForm.languages}">
                  <f:selectItems value="#{Ch4SelectForm.languageItems}"/>
                </h:selectManyListbox>
                </td>
              </tr
>
              <tr>
                <td>
                  <h:outputText value="#{Ch4SelectMsgs.educationPrompt}"/>
              </td>
              <td>
                <h:selectOneRadio value="#{Ch4SelectForm.education}" layout="pageDirection">
                  <f:selectItems value="#{Ch4SelectForm.educationItems}"/>
                </h:selectOneRadio>
              </td>
            </tr>
          </table>
          <h:commandButton value="#{Ch4SelectMsgs.buttonPrompt}" action="showInformation" />
        </h:form>
      <h:messages/>
    </body>
  </f:view>
</html>
