<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
  <f:view>
    <head>
      <link href="styles.css" rel="stylesheet" type="text/css"/>
      <title><h:outputText value="#{Ch6ValidatorMsgs.title}"/></title>
    </head>
    <body>
      <h:form>
        <h1><h:outputText value="#{Ch6ValidatorMsgs.paymentInformation}"/></h1>

        <h:panelGrid columns="2">
          <h:outputText value="#{Ch6ValidatorMsgs.amount}"/>
          <h:outputText value="#{Ch6ValidatorPayment.amount}">
            <f:convertNumber type="currency"/>
          </h:outputText>

          <h:outputText value="#{Ch6ValidatorMsgs.creditCard}"/>
          <h:outputText value="#{Ch6ValidatorPayment.card}"/>

          <h:outputText value="#{Ch6ValidatorMsgs.expirationDate}"/>
          <h:outputText value="#{Ch6ValidatorPayment.date}"> 
            <f:convertDateTime pattern="MM/yyyy"/>
          </h:outputText>
        </h:panelGrid>
        <h:commandButton value="Back" action="back"/>
      </h:form>
    </body>
  </f:view>
</html>
