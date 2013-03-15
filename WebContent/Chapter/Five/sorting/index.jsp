<html>
  <%@ taglib uri="http://java.sun.com/jsf/core"  prefix="f" %>
  <%@ taglib uri="http://java.sun.com/jsf/html"  prefix="h" %>
  <f:view>
    <head>
      <link href="site.css" rel="stylesheet" type="text/css"/>
      <title>
        <h:outputText value="#{Ch5SortingMsgs.windowTitle}"/>
      </title>
    </head>
    <body>
      <h:form>
        <h:dataTable value="#{Ch5SortingTableData.names}" var="name" styleClass="names" headerClass="namesHeader" columnClasses="last,first">

          <h:column>
            <f:facet name="header">
              <h:outputText value="#{Ch5SortingMsgs.deleteColumnHeader}"/>
            </f:facet>
            <h:selectBooleanCheckbox value="#{name.markedForDeletion}" onchange="submit()"/>
          </h:column>

          <h:column>
            <f:facet name="header">
              <h:commandLink action="#{Ch5SortingTableData.names.sortByLast}">
                <h:outputText value="#{Ch5SortingMsgs.lastColumnHeader}"/>
              </h:commandLink>
            </f:facet>
            <h:outputText value="#{name.last}, "/>
          </h:column>

          <h:column>
            <f:facet name="header">
              <h:commandLink action="#{Ch5SortingTableData.names.sortByFirst}">
                <h:outputText value="#{Ch5SortingMsgs.firstColumnHeader}"/>
              </h:commandLink>
            </f:facet>
            <h:outputText value="#{name.first}"/>
          </h:column>

        </h:dataTable>
        <h:commandButton value="#{Ch5SortingMsgs.deleteButtonText}" action="#{Ch5SortingTableData.deleteNames}" 
          rendered="#{Ch5SortingTableData.anyNamesMarkedForDeletion}"/>
      </h:form>
    </body>
  </f:view>
</html>
