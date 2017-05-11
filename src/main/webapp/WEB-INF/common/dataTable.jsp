<%@ page language="java" pageEncoding="UTF-8"%>
<%--引入C标签--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--开启EL表达式  Jsp默认 关闭的--%>
<%--<%@ page isELIgnored="false"%>--%>


<c:set var="ctx" value="${pageContext.request.contextPath}"/>


<%--引入jquery框架--%>


<link rel="stylesheet" href="${ctx}/pluggable/dataTable/css/demo.css">
<link rel="stylesheet" href="${ctx}/pluggable/dataTable/css/shCore.css">

<script src="${ctx}/pluggable/dataTable/js/demo.js?v=1.0"></script>
<script src="${ctx}/pluggable/dataTable/js/shCore.js?v=1.0"></script>


