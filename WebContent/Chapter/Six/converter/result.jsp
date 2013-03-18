<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
  <f:view>
    <head>
      <link href="styles.css" rel="stylesheet" type="text/css" />
      <title><h:outputText value="#{Ch6ConverterMsgs.title}" /></title>
    </head>
    <body>
    <h:form>
      <h1><h:outputText value="#{Ch6ConverterMsgs.paymentInformation}" /></h1>
      <h:panelGrid columns="2">
        <h:outputText value="#{Ch6ConverterMsgs.amount}" />
        <h:outputText value="#{Ch6ConverterPayment.amount}">
          <f:convertNumber type="currency" />
        </h:outputText>
        <h:outputText value="#{Ch6ConverterMsgs.creditCard}" />
        <h:outputText value="#{Ch6ConverterPayment.card}" />
        <h:outputText value="#{Ch6ConverterMsgs.expirationDate}" />
        <h:outputText value="#{Ch6ConverterPayment.date}">
          <f:convertDateTime pattern="MM/yyyy" />
        </h:outputText>
      </h:panelGrid>
      <h:commandButton value="Back" action="back" />
    </h:form>
  </body>
</f:view>
</html>
