<%@ page language="java" pageEncoding="UTF-8" %>

<html xmlns="http://www.w3.org/1999/xhtml">


<head>
    <%@ include file="/WEB-INF/common/base.jsp" %>
    <title>欢迎</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <%--<meta name="description" content="">--%>
    <%--<meta name="author" content="">--%>
    <%--<link rel="icon" href="../../favicon.ico">--%>

    <%--<title>Signin Template for Bootstrap</title>--%>

    <%--<!-- Bootstrap core CSS -->--%>
    <%--<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">--%>

    <%--<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->--%>
    <%--<link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">--%>

    <%--<!-- Custom styles for this template -->--%>
    <%--<link href="signin.css" rel="stylesheet">--%>

    <%--<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->--%>
    <%--<!--[if lt IE 9]>--%>
    <%--<script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->--%>
    <%--<script src="../../assets/js/ie-emulation-modes-warning.js"></script>--%>

    <%--<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->--%>
    <%--<!--[if lt IE 9]>--%>
    <%--<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>--%>
    <%--<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>--%>
    <%--<![endif]-->--%>

</head>

<body>
<div class="container">

    <form id="defaultForm" class="form-signin" action="${ctx}/getUser.action" method="post">
        <h2 class="form-signin-heading">用户登入</h2>
        <label for="username" class="sr-only">用户名</label>
        <input type="text" id="username" name="username"  class="form-control" placeholder="请输入用户名" required autofocus>
        <label for="password" class="sr-only">密码</label>
        <input type="password" id="password" name="password" class="form-control" placeholder="请输入密码" required>
        <div class="checkbox">
            <label>
                <input type="checkbox" value="remember-me"> 记住密码
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" id="submit" type="submit">登入</button>
    </form>

</div>


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
<script type="text/javascript">

    $(function () {
        $("#submit").click(function() {
            $('#defaultForm').bootstrapValidator('validate');

               });
        $('#defaultForm').bootstrapValidator({ //$("form") 根据标签

            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                username: {
                    message: '用户名验证失败',
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        },
                        stringLength: {
                            min: 6,
                            max: 18,
                            message: '用户名长度必须在6到18位之间'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9_]+$/,
                            message: '用户名只能包含大写、小写、数字和下划线'
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
//                        emailAddress: {
//                            message: '邮箱地址格式有误'
//                        }
                    }
                }
            }
        });
    });
</script>
</html>


