<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>jquery DataTables插件自定义分页ajax实现</title>
    <%@ include file="/WEB-INF/common/base.jsp" %>

    <link href="http://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="http://cdn.bootcss.com/datatables/1.10.11/css/dataTables.bootstrap.min.css" rel="stylesheet"
          media="screen">
    <link href="http://cdn.bootcss.com/datatables/1.10.11/css/jquery.dataTables.min.css" rel="stylesheet"
          media="screen">
</head>
<body>
<div class="row-fluid">
    <div class="pull-right">
        <div class="btn-group">
            <button type="button" class="btn btn-primary btn-sm" id="btn-add">
                <i class="fa fa-plus"></i>
                <sp:message code="sys.add"/>
                添加
            </button>
            <button type="button" class="btn btn-primary btn-sm" id="btn-delAll">
                <i class="fa fa-remove"></i>
                <sp:message code="sys.delAll"/>
                删除
            </button>
            <button type="button" class="btn btn-primary btn-sm" id="btn-export">
                <i class="fa fa-sign-in"></i> <sp:message code="sys.export"/>
                导出
            </button>
            <button type="button" class="btn btn-primary btn-sm" id="btn-re">
                <i class="fa fa-refresh"></i> <sp:message code="sys.refresh"/>
                刷新
            </button>
        </div>
    </div>
    <div class="row">
        <form id="queryForm" action=" " method="post">
            <div class="col-xs-2">
                <input type="text" id="keyword" name="keyword" class="form-control input-sm"
                       placeholder="
<%--<sp:message code="sys.keyword"/>--%>
                       清输入搜索信息">
            </div>
            <button type="button" class="btn btn-primary btn-sm" id="btn-query">
                <i class="fa fa-search"></i> <sp:message code="sys.query"/>
                搜索
            </button>
        </form>
    </div>


    <table id="example" class="display table-striped table-bordered table-hover table-condensed" cellspacing="0"
           width="100%">
        <thead>
        <tr>
            <td><input type="checkbox" id="checkAll"></td>
            <th>编号</th>
            <th>姓名</th>
            <th>密码</th>
            <th>部门</th>
            <th>邮箱</th>
            <th>部门ID</th>
            <th>职位</th>
            <th>权限</th>
            <th>操作</th>
        </tr>
        </thead>
    </table>
</div>
<script src="http://cdn.bootcss.com/datatables/1.10.11/js/jquery.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="http://cdn.bootcss.com/datatables/1.10.11/js/jquery.dataTables.min.js"></script>
<script src="http://cdn.bootcss.com/datatables/1.10.11/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">


    $(function () {
        //添加、修改异步提交地址
        var url = "";

        //提示信息
        var lang = {
            "sProcessing": "处理中...",
            "sLengthMenu": "每页 _MENU_ 项",
            "sZeroRecords": "没有匹配结果",
            "sInfo": "当前显示第 _START_ 至 _END_ 项，共 _TOTAL_ 项。",
            "sInfoEmpty": "当前显示第 0 至 0 项，共 0 项",
            "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
            "sInfoPostFix": "",
            "sSearch": "搜索:",
            "sUrl": "",
            "sEmptyTable": "表中数据为空",
            "sLoadingRecords": "载入中...",
            "sInfoThousands": ",",
            "oPaginate": {
                "sFirst": "首页",
                "sPrevious": "上页",
                "sNext": "下页",
                "sLast": "末页",
                "sJump": "跳转"
            },

        };

        //初始化表格
        var table = $("#example").dataTable({
            language: lang,  //提示信息
//            autoWidth: true,  //禁用自动调整列宽
            stripeClasses: ["odd", "even"],  //为奇偶行加上样式，兼容不支持CSS伪类的场合
            processing: true,  //隐藏加载提示,自行处理
//            pageLength: 10,  //首次加载的数据条数
            sScrollY: "60%",
            ordering: false, //排序操作在服务端进行，所以可以关了。
            serverSide: true,  //启用服务器端分页
            searching: false,  //禁用原生搜索
            stateSave: true,//保持翻页状态，和comTable.fnDraw(false);结合使用
            orderMulti: false,  //启用多列排序
            autoWidth: false,
            bLengthChange: false,   //去掉每页显示多少条数据方法
//            paginate : true,
            order: [],  //取消默认排序查询,否则复选框一列会出现小箭头
            renderer: "bootstrap",  //渲染样式：Bootstrap和jquery-ui
            pagingType: "full_numbers",  //分页样式：simple,simple_numbers,full,full_numbers
//            columnDefs: [{
//                "targets": 'nosort',  //列的样式名
//                "orderable": false    //包含上样式名‘nosort’的禁止排序
//            }],


            ajax: function (data, callback, settings) {
                //封装请求参数
                var param = {};
                param.limit = data.length;//页面显示记录条数，在页面显示每页显示多少项的时候
                param.start = data.start;//开始的记录序号
                param.page = (data.start / data.length) + 1;//当前页码
                //console.log(param);
                //ajax请求数据
                $.ajax({
                    type: "GET",
                    url: ctx + "/user/pagedQueryUser.action",
                    cache: false,  //禁用缓存
                    data: param,  //传入组装的参数
                    dataType: "json",
                    success: function (result) {
                        //console.log(result);
                        //setTimeout仅为测试延迟效果
                        setTimeout(function () {
                            //封装返回数据
                            var returnData = {};
                            returnData.draw = data.draw;//这里直接自行返回了draw计数器,应该由后台返回
                            returnData.recordsTotal = result.code;//返回数据全部记录
                            returnData.recordsFiltered = result.code;//后台不实现过滤功能，每次查询均视作全部结果
                            returnData.data = result.data;//返回的数据列表
                            //console.log(returnData);
                            //调用DataTables提供的callback方法，代表数据已封装完成并传回DataTables进行渲染
                            //此时的数据需确保正确无误，异常判断应在执行此回调前自行处理完毕
                            callback(returnData);
                        }, 200);
                    }
                });
            },
            //列表表头字段
            columns: [
                {"data": null,"width":"10px"},
                {"data": "id"},
                {"data": "username"},
                {"data": "password"},
                {"data": "department"},
                {"data": "email"},
                {"data": "departmentId"},
                {"data": "position"},
                {"data": "authority"},
                {"data": null,"width":"60px"}
            ],


            //操作按钮
            columnDefs: [
                {
                    targets: 0,
                    defaultContent: "<input type='checkbox' name='checkList'>"
                },
                {
                    targets: -1,
                    defaultContent: "<div class='btn-group'>" +
                    "<button id='editRow' class='btn btn-primary btn-sm' type='button'><i class='fa fa-edit'></i></button>" +
                    "<button id='delRow' class='btn btn-primary btn-sm' type='button'><i class='fa fa-trash-o'></i></button>" +
                    "</div>"
                }
            ],
            //在每次table被draw完后回调函数
            fnDrawCallback: function () {
                var api = this.api();
                //获取到本页开始的条数
                var startIndex = api.context[0]._iDisplayStart;
                api.column(1).nodes().each(function (cell, i) {
                    cell.innerHTML = startIndex + i + 1;
                });
            }
        }).api();
        //此处需调用api()方法,否则返回的是JQuery对象而不是DataTables的API对象
    });













    //查询按钮
    $("#btn-query").on("click", function () {
        tables.fnDraw();//查询后不需要保持分页状态，回首页
    });

    //添加
    $("#btn-add").on("click", function () {
        <%--url = "<%=path%>/goodsType/add";--%>
//        $("input[name=typeId]").val(0);
//        $("input[name=typeNameCn]").val("");
//        $("input[name=typeNameEn]").val("");
//        $("#editModal").modal("show");
    });

    //批量删除
    $("#btn-delAll").on("click", function () {

    });

    //导出
    $("#btn-export").on("click", function () {
    });

    //刷新
    $("#btn-re").on("click", function () {
        tables.fnDraw(false);//刷新保持分页状态
    });

    //checkbox全选
    $("#checkAll").on("click", function () {
        if ($(this).prop("checked") === true) {
            $("input[name='checkList']").prop("checked", $(this).prop("checked"));
            //$("#dataTable tbody tr").addClass('selected');
            $(this).hasClass('selected')
        } else {
            $("input[name='checkList']").prop("checked", false);
            $("#dataTable tbody tr").removeClass('selected');
        }
    });

    //修改
    $("#dataTable tbody").on("click", "#editRow", function () {
        var data = tables.api().row($(this).parents("tr")).data();
        $("input[name=typeId]").val(data.typeIdStr);
        $("input[name=typeNameCn]").val(data.typeNameCn);
        $("input[name=typeNameEn]").val(data.typeNameEn);

        <%--url = "<%=path%>/goodsType/update";--%>

        $("#editModal").modal("show");
    });

    $("#btn-submit").on("click", function(){
        <%--$.ajax({--%>
            <%--cache: false,--%>
            <%--type: "POST",--%>
            <%--url: url,--%>
            <%--data:$("#editForm").serialize(),--%>
            <%--async: false,--%>
            <%--error: function(request) {--%>
                <%--showFail("Server Connection Error...");--%>
            <%--},--%>
            <%--success: function(data) {--%>
                <%--if(data.status == 1){--%>
                    <%--$("#editModal").modal("hide");--%>
                    <%--showSuccess("<sp:message code='sys.oper.success'/>");--%>
                    <%--tables.fnDraw();--%>
                <%--}else{--%>
                    <%--showFail("<sp:message code='sys.oper.fail'/>");--%>
                <%--}--%>
            <%--}--%>
        <%--});--%>
    });

    //删除
    $("#dataTable tbody").on("click", "#delRow", function () {
        var data = tables.api().row($(this).parents("tr")).data();
        <%--if(confirm("是否确认删除这条信息?")){--%>
            <%--$.ajax({--%>
                <%--url:'<%=path%>/goodsType/del/'+data.typeIdStr,--%>
                <%--type:'delete',--%>
                <%--dataType: "json",--%>
                <%--cache: "false",--%>
                <%--success:function(data){--%>
                    <%--if(data.status == 1){--%>
                        <%--showSuccess("<sp:message code='sys.oper.success'/>");--%>
                        <%--tables.api().row().remove().draw(false);--%>
                    <%--}else{--%>
                        <%--showFail("<sp:message code='sys.oper.fail'/>");--%>
                    <%--}--%>
                <%--},--%>
                <%--error:function(err){--%>
                    <%--showFail("Server Connection Error...");--%>
                <%--}--%>
            <%--});--%>
        <%--}--%>
    });

</script>
</body>
</html>