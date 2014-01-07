<%--

  HTML5 input field component.
--%><%
%><%@ include file="/apps/h5-forms/global-h5-forms.jsp" %>
<%--<c:set var="id" value="<%= (currentNode==null) ? resource.getPath().replaceAll("/", "-") : currentNode.getUUID() %>" />--%>
<c:set var="id" value="abc123" />
<c:if test="${isEditMode}">
    <tr>
        <td>${properties.name}</td>
        <td>input[${properties.type}]</td>
        <td>${properties.label}</td>
    </tr>
</c:if>
<label for="${id}">${properties.label}</label>
<input name="${properties.name}" type="${properties.type}" id="${id}"></input>
