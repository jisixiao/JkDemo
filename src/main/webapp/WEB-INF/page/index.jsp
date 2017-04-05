<%@ page language="java" pageEncoding="UTF-8" %>

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
                    <form id="defaultForm" method="post" action="target.php" class="form-horizontal">
                        <fieldset>

                            <div class="form-group">
                                <label class="col-lg-3 control-label">用户名</label>
                                <div class="col-lg-5">
                                    <input type="text" class="form-control" name="username"/>
                                </div>
                            </div>


                        </fieldset>


                        <fieldset>


                            <div class="form-group">
                                <label class="col-lg-3 control-label">Password</label>
                                <div class="col-lg-5">
                                    <input type="password" class="form-control" name="password"/>
                                </div>
                            </div>


                        </fieldset>


                        <div class="form-group">
                            <div class="col-lg-9 col-lg-offset-3">
                                <button type="submit" class="btn btn-primary">Submit</button>
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

//                        stringLength: {
//                            min: 6,
//                            max: 30,
//                            message: 'The username must be more than 6 and less than 30 characters long'
//                        },
//                        regexp: {
//                            regexp: /^[a-zA-Z0-9_\.]+$/,
//                            message: 'The username can only consist of alphabetical, number, dot and underscore'
//                        }
                    }
                },

                password: {
                    validators: {
                        notEmpty: {
                            message: '密码不可为空！！'
                        },
                        threshold :  4,
                        remote: {//ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}
                            url: ctx + '/checkPassWordValid.action',
                            message: '密码错误！！',
                            delay: 3000,//每输入一个字符，就发ajax请求，服务器压力还是太大，设置2秒发送一次ajax（默认输入一个字符，提交一次，服务器压力太大）
                            type: 'post',
                            data: function(validator) {
                                return {
                                    username: $('[name="username"]').val(),
                                };
                            }
                        }

//                        identical: {
//                            field: 'confirmPassword',
//                            message: 'The password and its confirm are not the same'
//                        }
                    }
                }
            }
        });
    });
</script>
</html>


