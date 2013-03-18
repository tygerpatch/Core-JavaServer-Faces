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
        <h1><h:outputText value="#{Ch6ValidatorMsgs.enterPayment}"/></h1>

        <h:panelGrid columns="3">
          <h:outputText value="#{Ch6ValidatorMsgs.amount}" />
          <h:inputText id="amount" label="#{Ch6ValidatorMsgs.amount}" value="#{Ch6ValidatorPayment.amount}" required="true">
            <f:convertNumber minFractionDigits="2" />
            <f:validateDoubleRange minimum="10" maximum="10000" />
          </h:inputText>
          <h:message for="amount" styleClass="errorMessage" />

          <h:outputText value="#{Ch6ValidatorMsgs.creditCard}"/>
          <h:inputText id="card" label="#{Ch6ValidatorMsgs.creditCard}" value="#{Ch6ValidatorPayment.card}" required="true">
            <f:validateLength minimum="13"/>
            <f:attribute name="requiredMessage" value="#{Ch6ValidatorMsgs.cardRequired}"/>
          </h:inputText>
          <h:message for="card" styleClass="errorMessage"/>

          <h:outputText value="#{Ch6ValidatorMsgs.expirationDate}"/>
          <h:inputText id="date" label="#{Ch6ValidatorMsgs.expirationDate}" value="#{Ch6ValidatorPayment.date}" required="true">
            <f:convertDateTime pattern="MM/yyyy"/>
          </h:inputText>
          <h:message for="date" styleClass="errorMessage"/>
        </h:panelGrid>

        <h:commandButton value="Process" action="process"/>
        <h:commandButton value="Cancel" action="cancel" immediate="true"/>
      </h:form>
    </body>
  </f:view>
</html>
