<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
  <f:view beforePhase="#{Ch7PhaseTrackerForm.beforePhase}" afterPhase="#{Ch7PhaseTrackerForm.afterPhase}">
  <head>
    <link href="styles.css" rel="stylesheet" type="text/css"/>
    <title><h:outputText value="#{Ch7PhaseTrackerMsgs.indexWindowTitle}"/></title>
  </head>
    <body>
      <h:form>
        <h:panelGrid columns="2" columnClasses="phaseFormColumns">
          <h:outputText value="#{Ch7PhaseTrackerMsgs.phasePrompt}" />
  
          <h:selectOneListbox valueChangeListener="#{Ch7PhaseTrackerForm.phaseChange}">
            <f:selectItems value="#{Ch7PhaseTrackerForm.phases}"/>
          </h:selectOneListbox>
  
          <h:commandButton value="#{Ch7PhaseTrackerMsgs.submitPrompt}"/>
        </h:panelGrid>
      </h:form>
    </body>
  </f:view>
</html>
