<html>
  <%@ taglib uri = "http://java.sun.com/jsf/core" prefix = "f" %>
  <%@ taglib uri = "http://java.sun.com/jsf/html" prefix = "h" %>
  <f:view>
    <head>
      <title><h:outputText value = "#{Ch5EditingMsgs.windowTitle}" /></title>
    </head>
    <body>
      <h:form>
        <h:dataTable value = "#{Ch5EditingTableData.names}" var = "name">
          <h:column>
            <f:facet name = "header">
              <h:outputText value = "#{Ch5EditingMsgs.editColumn}" style = "font-weight: bold" />
            </f:facet>
            <h:selectBooleanCheckbox value = "#{name.editable}" onclick="submit()" />
          </h:column>

        <h:column>
          <f:facet name = "header">
            <h:outputText value = "#{Ch5EditingMsgs.lastnameColumn}" style = "font-weight: bold" />
          </f:facet>
          <h:inputText value = "#{name.last}" rendered = "#{name.editable}" size = "10" />
          <h:outputText value = "#{name.last}" rendered = "#{not name.editable}" />
        </h:column>

        <h:column>
          <f:facet name = "header">
            <h:outputText value = "#{Ch5EditingMsgs.firstnameColumn}" style = "font-weight; bold" />
          </f:facet>
          <h:inputText value = "#{name.first}" rendered = "#{name.editable}" size = "10" />
          <h:outputText value = "#{name.first}" rendered = "#{not name.editable }" />
        </h:column>

        </h:dataTable>
        <h:commandButton value = "#{Ch5EditingMsgs.saveChangesButtonText}" />
      </h:form>
    </body>
  </f:view>
</html>
