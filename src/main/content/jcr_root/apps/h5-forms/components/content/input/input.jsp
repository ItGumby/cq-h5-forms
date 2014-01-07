<%--

  HTML5 input field component.
--%><%
%><%@ include file="/apps/h5-forms/global-h5-forms.jsp" %>
<c:set var="id" value="${currentNode.identifier}" />
<c:if test="${isEditMode}">
    <tr>
        <td>${properties.name}</td>
        <td>input[${properties.type}]</td>
        <td>${properties.label}</td>
    </tr>
</c:if>
<label for="${id}">${properties.label}</label>
<input name="${properties.name}" type="${properties.type}" id="${id}"></input>
