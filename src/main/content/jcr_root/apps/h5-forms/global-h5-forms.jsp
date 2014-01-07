<%@ include file="/libs/foundation/global.jsp"%><%
%><%@ page session="false" contentType="text/html; charset=utf-8"
    import="com.day.cq.wcm.api.*"
%><%
%><c:set var="isEditMode" value="<%= (WCMMode.fromRequest(request) == WCMMode.EDIT || WCMMode.fromRequest(request) == WCMMode.DESIGN) %>" />
