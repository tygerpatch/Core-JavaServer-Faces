<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
  <f:view>
    <head>
      <link href="styles.css" rel="stylesheet" type="text/css"/>
      <title><h:outputText value="#{Ch6Validator2Msgs.title}"/></title>
    </head>
    <body>
      <h:form>
        <h1><h:outputText value="#{Ch6Validator2Msgs.paymentInformation}"/></h1>

        <h:panelGrid columns="2">
          <h:outputText value="#{Ch6Validator2Msgs.amount}"/>
          <h:outputText value="#{Ch6Validator2Payment.amount}">
            <f:convertNumber type="currency"/>
          </h:outputText>

          <h:outputText value="#{Ch6Validator2Msgs.creditCard}"/>
          <h:outputText value="#{Ch6Validator2Payment.card}" converter="com.corejsf.CreditCard"/>
          <h:outputText value="#{Ch6Validator2Msgs.expirationDate}"/>

          <h:outputText value="#{Ch6Validator2Payment.date}">
            <f:convertDateTime pattern="MM/yyyy"/>
          </h:outputText>
        </h:panelGrid>
        <h:commandButton value="Back" action="back"/>
      </h:form>
    </body>
  </f:view>
</html>
