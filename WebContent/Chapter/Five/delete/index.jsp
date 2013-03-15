<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
  <f:view>
    <head>
      <link href="styles.css" rel="stylesheet" type="text/css" />
      <title><h:outputText value="#{Ch5DeleteMsgs.windowTitle}" /></title>
    </head>
    <body>
      <h:form>
        <h:dataTable value="#{Ch5DeleteTableData.names}" var="name"
          styleClass="names" headerClass="namesHeader" columnClasses="last,first">

          <h:column rendered="#{Ch5DeleteTableData.editable}">
            <f:facet name="header">
              <h:outputText value="#{Ch5DeleteMsgs.deleteColumnHeader}" />
            </f:facet>
            <h:selectBooleanCheckbox value="#{name.markedForDeletion}" onchange="submit()" />
          </h:column>

          <h:column>
            <f:facet name="header">
              <h:outputText value="#{Ch5DeleteMsgs.lastColumnHeader}" />
            </f:facet>
            <h:outputText value="#{name.last}," />
          </h:column>

          <h:column>
            <f:facet name="header">
              <h:outputText value="#{Ch5DeleteMsgs.firstColumnHeader}" />
            </f:facet>
            <h:outputText value="#{name.first}" />
          </h:column>
        </h:dataTable>
        <h:outputText value="#{Ch5DeleteMsgs.editPrompt}" />
        <h:selectBooleanCheckbox onchange="submit()" value="#{Ch5DeleteTableData.editable}" />
        <h:commandButton value="#{Ch5DeleteMsgs.deleteButtonText}" rendered="#{Ch5DeleteTableData.editable}"
          action="#{Ch5DeleteTableData.deleteNames}" disabled="#{not Ch5DeleteTableData.anyNamesMarkedForDeletion}" />
      </h:form>
    </body>
  </f:view>
</html>
