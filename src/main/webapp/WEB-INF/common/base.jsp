<%@ page language="java" pageEncoding="UTF-8"%>
<%--引入C标签--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--开启EL表达式  Jsp默认 关闭的--%>
<%--<%@ page isELIgnored="false"%>--%>


<c:set var="ctx" value="${pageContext.request.contextPath}"/>


<%--引入jquery框架--%>


<link rel="stylesheet" href="${ctx}/pluggable/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${ctx}/fonts/font-awesome.min.css">
<link rel="stylesheet" href="${ctx}/css/index.css">
<link rel="stylesheet" href="${ctx}/css/skins/_all-skins.css">
<link rel="stylesheet" href="${ctx}/pluggable/bootstrap/validator/bootstrapValidator.min.css">




<script src="${ctx}/pluggable/jquery/jQuery-2.2.0.min.js?v=1.0"></script>
<script src="${ctx}/js/index.js"></script>

<script src="${ctx}/pluggable/bootstrap/js/bootstrap.min.js"></script>
<script src="${ctx}/pluggable/bootstrap/validator/bootstrapValidator.min.js"></script>

<script type="text/javascript">
    var contextRootPath = "${ctx}";
</script>


<%--<script--%>
        <%--src="${ctx }/jQuery/jquery.js" type="text/javascript">--%>
<%--</script>--%>

<%--<script type="text/javascript" src="../../jQuery/jquery-1.4.2.js"></script>--%>

<script type="text/javascript">
    var  ctx = "${ctx}";
</script>
