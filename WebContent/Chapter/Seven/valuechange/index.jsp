<html>
  <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
  <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
  <f:view>
    <head> 
      <link href="styles.css" rel="stylesheet" type="text/css"/>
      <title><h:outputText value="#{Ch7ValueChangeMsgs.windowTitle}"/></title>
    </head>
    <body>
      <h:outputText value="#{Ch7ValueChangeMsgs.pageTitle}" styleClass="emphasis"/>
      <h:form>
        <h:panelGrid columns="2">

          <h:outputText value="#{Ch7ValueChangeMsgs.streetAddressPrompt}"/>
          <h:inputText id="streetAddress" value="#{Ch7ValueChangeForm.streetAddress}" required="true"/>

          <h:outputText id="cityPrompt" value="#{Ch7ValueChangeMsgs.cityPrompt}"/>
          <h:inputText value="#{Ch7ValueChangeForm.city}"/>

          <h:outputText id="statePrompt" value="#{Ch7ValueChangeMsgs.statePrompt}"/> 
          <h:inputText value="#{Ch7ValueChangeForm.state}"/>

          <h:outputText value="#{Ch7ValueChangeMsgs.countryPrompt}"/>
          <h:selectOneMenu value="#{Ch7ValueChangeForm.country}" onchange="submit()" valueChangeListener="#{Ch7ValueChangeForm.countryChanged}">
            <f:selectItems value="#{Ch7ValueChangeForm.countryNames}"/>
          </h:selectOneMenu>

        </h:panelGrid>
        <h:commandButton value="#{Ch7ValueChangeMsgs.submit}"/>
      </h:form>
    </body>
  </f:view>
</html>  
