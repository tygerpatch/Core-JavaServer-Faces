<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
  <f:view>
    <head>
      <link href="styles.css" rel="stylesheet" type="text/css"/>
      <title><h:outputText value="#{Ch6Validator3Msgs.title}"/></title>
    </head>
    <body>
      <h:form>
        <h1><h:outputText value="#{Ch6Validator3Msgs.enterDate}" /></h1>
        <h:panelGrid columns="3">
          <h:outputText value="#{Ch6Validator3Msgs.day}" />
          <h:inputText value="#{Ch6Validator3BackingBean.day}" binding="#{Ch6Validator3BackingBean.dayInput}" size="2" required="true" />
          <h:panelGroup />

          <h:outputText value="#{Ch6Validator3Msgs.month}" />
          <h:inputText value="#{Ch6Validator3BackingBean.month}" binding="#{Ch6Validator3BackingBean.monthInput}" size="2" required="true" />
          <h:panelGroup />

          <h:outputText value="#{Ch6Validator3Msgs.year}"/>
          <h:inputText id="year" value="#{Ch6Validator3BackingBean.year}" binding="#{Ch6Validator3BackingBean.yearInput}" size="4" required="true" 
            validator="#{Ch6Validator3BackingBean.validateDate}" />
          <h:message for="year" styleClass="errorMessage" />

        </h:panelGrid>
        <h:commandButton value="#{Ch6Validator3Msgs.submit}" action="submit" />
      </h:form>
    </body>
  </f:view>
</html>
