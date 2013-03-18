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
        <h1><h:outputText value="#{Ch6ConverterMsgs.enterPayment}" /></h1>

        <h:panelGrid columns="3">
          <h:outputText value="#{Ch6ConverterMsgs.amount}" />
          <h:inputText id="amount" label="#{Ch6ConverterMsgs.amount}" value="#{Ch6ConverterPayment.amount}">
            <f:convertNumber minFractionDigits="2" />
          </h:inputText>
          <h:message for="amount" styleClass="errorMessage" />

          <h:outputText value="#{Ch6ConverterMsgs.creditCard}" />
          <h:inputText id="card" label="#{Ch6ConverterMsgs.creditCard}" value="#{Ch6ConverterPayment.card}" />
          <h:panelGroup />
          <%-- TODO: research panelGroup --%>

          <h:outputText value="#{Ch6ConverterMsgs.expirationDate}" />
          <h:inputText id="date" label="#{Ch6ConverterMsgs.expirationDate}" value="#{Ch6ConverterPayment.date}">
            <f:convertDateTime pattern="MM/yyyy" />
          </h:inputText>
          <h:message for="date" styleClass="errorMessage" />

        </h:panelGrid>
        <h:commandButton value="#{Ch6ConverterMsgs.process}" action="process" />
      </h:form>
    </body>
  </f:view>
</html>
