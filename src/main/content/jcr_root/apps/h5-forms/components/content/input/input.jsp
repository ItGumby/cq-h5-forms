<%--

  HTML5 input field component.
--%><%
%><%@ include file="/apps/h5-forms/global-h5-forms.jsp" %>
<label for="${currentNode.identifier}">${properties.label}</label>
<input name="${properties.name}" type="${properties.type}" id="${currentNode.identifier}"></input>
