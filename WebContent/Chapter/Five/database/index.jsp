<html>
  <%@ taglib uri="http://java.sun.com/jsf/core"  prefix="f" %>
  <%@ taglib uri="http://java.sun.com/jsf/html"  prefix="h" %>
  <f:view>
    <head>
      <link href="styles.css" rel="stylesheet" type="text/css"/>
      <title>
        <h:outputText value="#{Ch5DatabaseMsgs.pageTitle}"/>
      </title>
    </head>
    <body>
      <h:form>
        <h:dataTable value="#{Ch5DatabaseCustomer.all}" var="customer" styleClass="customers" headerClass="customersHeader" columnClasses="custid,name">

          <h:column>
            <f:facet name="header">
              <h:outputText value="#{Ch5DatabaseMsgs.customerIdHeader}"/>
            </f:facet>
            <h:outputText value="#{Ch5DatabaseCustomer.Cust_ID}"/>
          </h:column>

          <h:column>
            <f:facet name="header">
              <h:outputText value="#{Ch5DatabaseMsgs.nameHeader}"/>
            </f:facet>
            <h:outputText value="#{Ch5DatabaseCustomer.Name}"/>
          </h:column>

          <h:column>
            <f:facet name="header">
              <h:outputText value="#{Ch5DatabaseMsgs.phoneHeader}"/>
            </f:facet>
            <h:outputText value="#{Ch5DatabaseCustomer.Phone_Number}"/>
          </h:column>

          <h:column>
            <f:facet name="header">
              <h:outputText value="#{Ch5DatabaseMsgs.addressHeader}"/>
            </f:facet>
            <h:outputText value="#{Ch5DatabaseCustomer.Street_Address}"/>
          </h:column>

          <h:column>
            <f:facet name="header">
              <h:outputText value="#{Ch5DatabaseMsgs.cityHeader}"/>
            </f:facet>
            <h:outputText value="#{Ch5DatabaseCustomer.City}"/>
          </h:column>

          <h:column>
            <f:facet name="header">
              <h:outputText value="#{Ch5DatabaseMsgs.stateHeader}"/>
            </f:facet>
            <h:outputText value="#{Ch5DatabaseCustomer.State}"/>
          </h:column>

        </h:dataTable>
      </h:form>
    </body>
  </f:view>
</html>
