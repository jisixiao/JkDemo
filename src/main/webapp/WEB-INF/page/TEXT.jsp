<%@ page contentType="text/html;charset=UTF-8" language="java" %><html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <%@ include file="/WEB-INF/common/base.jsp" %>



</head>
<body>

${pageBean.data.username}
<table border="1" align="center" width="700px" >

    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>密码</th>
        <th>部门</th>
        <th>邮箱</th>
        <th>部门ID</th>
        <th>职位</th>
        <th>权限</th>
    </tr>
    <c:forEach items="${pageBean.data}" var="emp">
        <tr>
            <td>${emp.id }</td>
            <td>${emp.username }</td>
            <td>${emp.password }</td>
            <td>${emp.department}</td>
            <td>${emp.email }</td>
            <td>${emp.departmentId }</td>
            <td>${emp.position }</td>
            <td>${emp.authority }</td>
        </tr>
    </c:forEach>



    <tr>
        <td colspan="7" align="center">
            <%--
                1）如果当前页是首页，则不显示“首页”和“上一页”的连接
                2）如果当前页是末页，则不显示“末页”和“下一页”的连接
             --%>
            <c:choose>
                <c:when test="${pageBean.currentPage==pageBean.firstPage}">
                    首页
                    上一页
                </c:when>
                <c:otherwise>
                    <a href="${pageContext.request.contextPath }/PageServlet?currentPage=${pageBean.firstPage }&pageSize=${pageBean.pageSize}">首页</a>
                    <a href="${pageContext.request.contextPath }/PageServlet?currentPage=${pageBean.prePage }&pageSize=${pageBean.pageSize}">上一页</a>
                </c:otherwise>
            </c:choose>

            <c:choose>
                <c:when test="${pageBean.currentPage==pageBean.totalPage}">
                    下一页
                    末页
                </c:when>
                <c:otherwise>
                    <a href="${pageContext.request.contextPath }/PageServlet?currentPage=${pageBean.nextPage}&pageSize=${pageBean.pageSize}">下一页</a>
                    <a href="${pageContext.request.contextPath }/PageServlet?currentPage=${pageBean.totalPage }&pageSize=${pageBean.pageSize}">末页</a>
                </c:otherwise>
            </c:choose>
            当前第${pageBean.currentPage }页/共${pageBean.totalPage }页，
            共${pageBean.totalCount }条 每页显示 <input type="text" name="pageSize" id="pageSize" size="2" value="${pageBean.pageSize }" onblur="changePageSize()"/> 条
        </td>
    </tr>
</table>

<script type="text/javascript">
    //改变每页显示记录数的方法
    function changePageSize(){
        //获取用户输入的记录数
        var pageSize = document.getElementById("pageSize").value;
        //判断是否输入的数值
        var reg = /^[1-9][0-9]?$/;
        if(!reg.test(pageSize)){
            alert("请输入数组类型！");
            return;
        }
        //把记录数发送到后台
        var url = "${pageContext.request.contextPath}/PageServlet?pageSize="+pageSize;
        window.location.href=url;
    }
</script>
</body>

<style>body{
    margin-top: 20px;
}</style>

<script type="text/javascript">

    $(document).ready(function() {
    var result ;

            var userInfo = {
                limit:10,
                start:0,
                page:1
            };
            $.ajax({
                type: "post",
                url: ctx + "/user/pagedQueryUser.action",
                data: userInfo,
                contentType: "application/x-www-form-urlencoded",
                dataType: "json",
                success: function (data) {
                    result = data.data.data;
                    alert(result.username)

                },
                error: function () {


                }
            });


    });


</script>
</html>