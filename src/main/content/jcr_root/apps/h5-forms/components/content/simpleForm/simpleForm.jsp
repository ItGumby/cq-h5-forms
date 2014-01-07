<%-- HTML5 Simple Form component.

HTML5 form container.
Semantic, accessible forms with validations.

--%><%
%><%@ include file="/apps/h5-forms/global-h5-forms.jsp"%>
<form action="${properties.action}"
    method="${ (empty properties.method) ? 'POST' : properties.method }"
    <c:if test="${not empty properties.name}">name="${properties.name}"</c:if>
    >
<c:if test="${isEditMode}">
    <dl>
        <dt>Form Action:</dt><dd>${properties.action}</dd>
        <dt>Form Method:</dt><dd>${(empty properties.method) ? 'POST' : properties.method}</dd>
        <dt>Form Name:</dt><dd>${properties.name}</dd>
    </dl>
    <table>
      <thead><tr><td>name</td><td>type</td><td>label</td></tr></thead>
      <tbody>
          <c:forEach var="item" items="<%= resource.getChild("formContent").listChildren() %>">
              <c:set var="relPath" value="${fn:substringAfter(fn:replace(item.path, resource.path, ''), '/')}" />
              <c:set var="name" value="${relPath}/name" />
              <c:set var="type" value="${relPath}/type" />
              <c:set var="label" value="${relPath}/label" />
              <c:set var="rscArr" value="${fn:split(item.resourceType, '/')}" />
              <tr><td>${properties[name]}</td><td>${rscArr[fn:length(rscArr)-1]} ${properties[type]}</td><td>${properties[label]}</td></tr>
          </c:forEach>
      </tbody>
    </table>
</c:if>
<cq:include path="formContent" resourceType="foundation/components/parsys" />
</form>
<%-- Temp Hack --%>
<style>
.simpleForm form {
    border: 3px solid blue;
    padding: 2em;
    background: #ccffcc;
}
.simpleForm dt, .simpleForm dd { display: inline-block; margin: 0; padding: 0; }
.simpleForm dt { width: 20%; }
.simpleForm dd { width: 78%; }

.simpleForm label, .simpleForm input {
    display: block;
    width: 100%;
}

table{width:100%;border-collapse:collapse}
table caption{font-size:larger;margin:1em auto;padding-top:2em}
table thead{font-weight:bolder;background:darkblue;color:lightblue}
table tbody tr:hover{background:lightblue;color:darkblue}
table td{text-align:center}
table,th,td{border:1px solid #05232b;padding:0.25em 0.5em}
</style>
