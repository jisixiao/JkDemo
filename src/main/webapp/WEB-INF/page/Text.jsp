
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/WEB-INF/common/base.jsp" %>

    <link href="http://cdn.bootcss.com/datatables/1.10.11/css/jquery.dataTables.min.css" rel="stylesheet"
          media="screen">
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <title>Title</title>
</head>
<body>

<div class="row">
    <form id="queryForm" action=" " method="post">
        <div class="col-xs-2">
            <input type="text" id="keyword" name="keyword" class="form-control input-sm"
                   placeholder=" 清输入搜索信息">
        </div>
        <button type="button" class="btn btn-primary btn-sm" id="btn-query">
            <i class="fa fa-search"></i>
            搜索
        </button>
    </form>
</div>




<table id="example" class="display" cellspacing="0" width="100%">
    <thead>
    <tr class="info">
        <%--<td><input type="checkbox" id="checkAll"></td>--%>
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

</body>

<script type="text/javascript">
    $(document).ready(function() {
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




        var table = $('#example').DataTable( {
            language: lang,  //提示信息
            stripeClasses: ["odd", "even"],  //为奇偶行加上样式，兼容不支持CSS伪类的场合
            processing: true,  //隐藏加载提示,自行处理
//            sScrollY: "60%",
            ordering: false, //排序操作在服务端进行，所以可以关了。
            serverSide: true,  //启用服务器端分页
            searching: false,  //禁用原生搜索
            stateSave: true,//保持翻页状态，和comTable.fnDraw(false);结合使用
            orderMulti: false,  //启用多列排序
            autoWidth: false,
            bLengthChange: false,   //去掉每页显示多少条数据方法
            order: [],  //取消默认排序查询,否则复选框一列会出现小箭头
            renderer: "bootstrap",  //渲染样式：Bootstrap和jquery-ui
            pagingType: "full_numbers",  //分页样式：simple,simple_numbers,full,full_numbers
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
//                {"data": null, "width": "10px"},
                {"data": "id"},
                {"data": "username"},
                {"data": "password"},
                {"data": "department"},
                {"data": "email"},
                {"data": "departmentId"},
                {"data": "position"},
                {"data": "authority"},
                {"data": null, "width": "60px"}
            ],
            "columnDefs": [ {
                "targets": -1,
                "data": null,
                "defaultContent": "<div class='btn-group'>" +
                "<button id='editRow' class='btn btn-primary btn-sm' data-target='#myModal' type='button'>" +
                "<i class='fa fa-edit'></i></button>" +
                "<button id='delRow' class='btn btn-primary btn-sm' type='button'>" +
                "<i class='fa fa-trash-o'></i></button>" +
                "</div>"
            } ]
        } );

        $('#example tbody').on( 'click', '#editRow', function () {
//            var data = table.row( $(this).parents('tr') ).data();
            var data = table.row($(this).parents("tr")).data();

            alert( data.username +"'s edit is: "+ data.authority);

        } );

        $('#example tbody').on( 'click', '#delRow', function () {
            var data = table.row( $(this).parents('tr') ).data();
            alert( data[0] +"'s dele is: "+ data[ 5 ] );
        } );
    } );



    //查询按钮
    $("#btn-query").on("click", function () {
        var keyword = $("#keyword").val();
        table.search(keyword).draw();

    });
</script>
</html>
