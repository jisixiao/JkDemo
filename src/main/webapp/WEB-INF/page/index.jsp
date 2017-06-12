<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<html xmlns="http://www.w3.org/1999/xhtml">


<head>
    <%@ include file="/WEB-INF/common/base.jsp" %>
    <title>欢迎</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


</head>

<body>
<div class="container">


    <div class="container">
        <div class="row">
            <!-- form: -->
            <section>
                <div class="page-header">
                    <h1>用户登入</h1>
                </div>

                <div class="col-lg-8 col-lg-offset-2">
                    <form id="defaultForm" class="form-horizontal">
                        <fieldset>

                            <div class="form-group">
                                <label class="col-lg-3 control-label">用户名</label>
                                <div class="col-lg-5">
                                    <input type="text" id="username" class="form-control" name="username"/>
                                </div>
                            </div>


                        </fieldset>


                        <fieldset>


                            <div class="form-group">
                                <label class="col-lg-3 control-label">Password</label>
                                <div class="col-lg-5">
                                    <input type="password" id="password" class="form-control" name="password"/>
                                </div>
                            </div>


                        </fieldset>


                        <div class="form-group">
                            <div class="col-lg-9 col-lg-offset-3">
                                <button type="button" class="btn btn-primary" id="subBtn" value="提交"></button>
                            </div>
                        </div>
                    </form>
                </div>
            </section>
           <!-- :form -->
        </div>
    </div>

</div>


</body>
<script type="text/javascript">

    $(function () {

        //from校验
        $('#defaultForm').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                username: {
                    message: 'The username is not valid',
                    validators: {
                        notEmpty: {
                            message: '用户名不可为空！！'
                        },

                        //ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}
                        remote: {
                            url: ctx + '/user/checkNameValid.action',//验证地址
                            message: '用户已存在',//提示消息
                            delay: 2000,
                            type: 'POST'//请求方式
                        }
                    }
                },

                password: {
                    validators: {
                        notEmpty: {
                            message: '密码不可为空！！'
                        },
                        threshold: 4,
                        remote: {
                            url: ctx + '/user/checkPassWordValid.action',
                            message: '密码错误！！',
                            delay: 3000,
                            type: 'post',
                            data: function (validator) {
                                return {
                                    username: $('[name="username"]').val(),
                                };
                            }

                        }
                    }
                }
            }
        });
    });
    $("#subBtn").click(function () {

        /**
         * 单个 数据进行封装
         * @type {{username: (*), password: (*)}}
         */
        var userInfo = {
            username: $("#username").val(),
            password: $("#password").val()
        };
        $.ajax({
            type: "post",
            url: ctx + "/user/login.action",
            data: $("#defaultForm").serialize(),//获取表单的信息
            contentType: "application/x-www-form-urlencoded",
            dataType: "json",
            success: function (data) {

                window.location.href=ctx+"/"+data.url;
            },
            error: function () {

            }
        });
    });

</script>
</html>
