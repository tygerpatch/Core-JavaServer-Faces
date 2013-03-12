<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
  <f:view>
    <head>
      <link href="styles.css" rel="stylesheet" type="text/css" />
      <title><h:outputText value="#{Ch5HeadersAndFootersMsgs.windowTitle}" /></title>
    </head>
    <body>
      <h:form>
        <h:dataTable value="#{Ch5HeadersAndFootersTableData.names}" var="name" captionStyle="font-size: 0.95em; font-style: italic" style="width: 250px;">

          <f:facet name="caption">
            <h:outputText value="An array of names:" />
          </f:facet>

          <h:column headerClass="columnHeader" footerClass="columnFooter">
            <f:facet name="header">
              <h:outputText value="#{Ch5HeadersAndFootersMsgs.lastnameColumn }" />
            </f:facet>

            <h:outputText value="#{name.last}" />

            <f:facet name="footer">
              <h:outputText value="#{Ch5HeadersAndFootersMsgs.alphanumeric }" />
            </f:facet>
          </h:column>

          <h:column headerClass="columnHeader" footerClass="columnFooter">
            <f:facet name="header">
              <h:outputText value="#{Ch5HeadersAndFootersMsgs.firstnameColumn}" />
            </f:facet>

            <h:outputText value="#{name.first}" />

            <f:facet name="footer">
              <h:outputText value="#{Ch5HeadersAndFootersMsgs.alphanumeric}" />
            </f:facet>
          </h:column>
        </h:dataTable>
      </h:form>
    </body>
  </f:view>
</html>