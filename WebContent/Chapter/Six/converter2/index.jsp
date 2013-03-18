<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
  <f:view>
    <head>
      <link href="styles.css" rel="stylesheet" type="text/css"/>
      <title><h:outputText value="#{Ch6Converter2Msgs.title}"/></title>
    </head>
    <body>
      <h:form>
        <h1><h:outputText value="#{Ch6Converter2Msgs.enterPayment}"/></h1>
        <h:panelGrid columns="3">
          <h:outputText value="#{Ch6Converter2Msgs.amount}"/>
          <h:inputText id="amount" label="#{Ch6Converter2Msgs.amount}" value="#{Ch6Converter2Payment.amount}">
            <f:convertNumber minFractionDigits="2"/>
          </h:inputText>
          <h:message for="amount" styleClass="errorMessage"/>

          <h:outputText value="#{Ch6Converter2Msgs.creditCard}"/>
          <h:inputText id="card" label="#{Ch6Converter2Msgs.creditCard}" value="#{Ch6Converter2Payment.card}">
            <f:converter converterId="Chapter.Six.converter2.CreditCard"/>
          </h:inputText>
          <h:message for="card" styleClass="errorMessage"/>

          <h:outputText value="#{Ch6Converter2Msgs.expirationDate}"/>
          <h:inputText id="date" label="#{Ch6Converter2Msgs.expirationDate}" value="#{Ch6Converter2Payment.date}">
            <f:convertDateTime pattern="MM/yyyy"/>
          </h:inputText>
          <h:message for="date" styleClass="errorMessage"/>
        </h:panelGrid>
        <h:commandButton value="Process" action="process"/>
      </h:form>
    </body>
  </f:view>
</html>
