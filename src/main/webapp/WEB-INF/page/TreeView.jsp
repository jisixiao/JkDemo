<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <%@include file="/WEB-INF/common/base.jsp" %>

    <title>metro-zTree</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<script>
    var zTree;
    var demoIframe;


    function addHoverDom(treeId, treeNode) {
        var sObj = $("#" + treeNode.tId + "_span");//获取节点信息  treeNode.tId  由上至下 部分父子 tree_N

        if (treeNode.editNameFlag || $("#addBtn_" + treeNode.tId).length > 0) return;

        /*

         此处 BUG  在子节点上 还会显示 添加按钮

         */
        var addStr = "<span class='button remove' id='removeBtn_" + treeNode.tId
            + "' title='add node' onfocus='this.blur();'></span>";
        addStr += "<span class='button add' id='addBtn_" + treeNode.tId + "'></span>";
        addStr += "<span class='button edit' id='editBtn_" + treeNode.tId + "'></span>";
        sObj.after(addStr);//加载添加按钮


        //添加 按钮
        var btn = $("#addBtn_" + treeNode.tId);
        if (btn)
            if (treeNode.isParent)

                btn.bind("click", function () {
                    var zTree = $.fn.zTree.getZTreeObj("tree");
                    //获取父节点 id treeNode.fModuleid  父节点的ID是 fModuleid  fParentid为0
                    var fpId = treeNode.fModuleid;
                    //子节点 id 父节点 +（拼接）（子节点个数+1）
                    var fmId;
                    //  此 父节点下 子节点的个数
                    var totalLeftCount;


                    //获取 fParentid为fpId的次子节点总数   data 模板 ：data: "orderId=" + orderId + "&commant=" + commant
                    var data = "fModuleid=" + fpId;
                    $.aj_Post("/menuTree/getfModuleidContent", data, function (data) {
                        //获取 子节点个数
                        alert(data.data);
                    }, function (e) {
                        alert("数据请求错误");
                    });
                    //判断 是否大于 9
                    zTree.addNodes(treeNode, {
                        fModuleid: (1000 + newCount),
                        fParentid: treeNode.id,
                        isParent: false,
                        fFullname: "new node" + (newCount++)
                    });
                    return false;
                });


        //删除 按钮
        var btn = $("#removeBtn_" + treeNode.tId);
        if (btn)
            btn.bind("click", function () {
                var zTree = $.fn.zTree.getZTreeObj("tree");
                var callbackFlag = $("#callbackTrigger").attr("checked");
                zTree.removeNode(treeNode, callbackFlag);
            });

        //修改 按钮
        var btn = $("#editBtn_" + treeNode.tId);
        if (btn)
            btn.bind("click", function () {
                var zTree = $.fn.zTree.getZTreeObj("tree");
                zTree.editName(treeNode);
            });

    }
    ;


    function removeHoverDom(treeId, treeNode) {
        $("#addBtn_" + treeNode.tId).unbind().remove();
        $("#removeBtn_" + treeNode.tId).unbind().remove();
        $("#editBtn_" + treeNode.tId).unbind().remove();
    }
    ;

    var setting = {
//        async: {
//            enable: true,//启动异步加载
//            url: getUrl,//地址
//            dataType: "text"//json xml html
//        },

        check: {
            enable: true,
        },
        view: {//显示 view
            addHoverDom: addHoverDom,//当鼠标移动到节点上时，显示用户自定义控件
            removeHoverDom: removeHoverDom,//离开节点时的操作
            dblClickExpand: false,
            showLine: true,
            selectedMulti: false
        },
        data: {
            simpleData: {
                enable: true,
                idKey: "fModuleid",
                pIdKey: "fParentid",

                rootPId: ""
            },
            key: {
                name: "fFullname"
            }
        },

        edit: {
            enable: true,//单独设置为true时，可加载修改、删除图标
            showRemoveBtn: false,
            showRenameBtn: false
            , editNameSelectAll: true
        },
        callback: {
//            beforeClick: function (treeId, treeNode) {
//                var zTree = $.fn.zTree.getZTreeObj("tree");
//                if (treeNode.isParent) {
//                    zTree.expandNode(treeNode);
//                    return false;
//                } else {
//                    demoIframe.attr("src", treeNode.file + ".html");
//                    return true;
//                }
//            },
            beforeRemove: beforeRemove,
            beforeRename: beforeRename,
            onRemove: onRemove,
            onRename: onRename //修改事件

        }
    };


    var zNodes;


    var log, className = "dark";


    //修改节点
    function onRename(e, treeId, treeNode, isCancel) {
        //需要对名字做判定的，可以来这里写~~
//        $.post('./index.php?r=data/modifyname&id='+treeNode.id+'&name='+treeNode.name);
//        alert("http://blog.csdn.net/wangjingna/article/details/50487111")
        alert(treeNode.fParentid + treeNode.fModuleid + treeNode.isParent + treeNode.fFullname);
        var data = {
            fModuleid: treeNode.fModuleid,
            fFullname: treeNode.fFullname,
            isParent: treeNode.isParent
        }
        $.ajaxTemplet.aj_Post("url", data, function (e) {

        }, function (e) {

        })
    }
    ;
    //修改名称节点 前
    function beforeRename(treeId, treeNode, newName, isCancel) {
//        if (newName.length == 0) {
//            alert("节点名称不能为空.");
//            return false;
//        }
//        return true;
        if (confirm("你确信要添加？")) {
            return true;
        }
        else {
            return false;
        }

    }
    //删除节点
    function onRemove(e, treeId, treeNode) {
        //需要对删除做判定或者其它操作，在这里写~~
        $.post('./index.php?r=data/del&id=' + treeNode.id);
    }
    //删除节点 后
    function beforeRemove(treeId, treeNode) {
        var zTree = $.fn.zTree.getZTreeObj("tree");
        zTree.selectNode(treeNode);
        return confirm("确认删除 节点 -- " + treeNode.name + " 吗？");
    }


    var newCount = 1;
    /**
     * 添加父节点
     * @param e
     */
    function add(e) {
        //获取父节点的个数，数据库查询fParentid的个数
        var fpId;
        //查询父节点  fParentid为0
        var data = {
            fParentid: 0
        };


        $.ajaxTemplet.aj_Post("/menuTree/getfParentidContent.action", data, function (data) {

            fpId = data.data;
            var fmId = "0";
            var zTree = $.fn.zTree.getZTreeObj("tree"),
                isParent = e.data.isParent,

                nodes = zTree.getSelectedNodes(),
                treeNode = nodes[0];

            treeNode = zTree.addNodes(null, {
                //fModuleid 父节点 个数+1
                fModuleid: parseInt(fpId) + 1,
                fParentid: fmId,
                isParent: isParent,
                fFullname: "new node" + (newCount++)
            });
            if (treeNode) {
                zTree.editName(treeNode[0]);
            } else {
                alert("叶子节点被锁定，无法增加子节点");
            }
        }, function (e) {


        });


    }
    ;
    function edit() {
        var zTree = $.fn.zTree.getZTreeObj("tree"),
            nodes = zTree.getSelectedNodes(),
            treeNode = nodes[0];
        if (nodes.length == 0) {
            alert("请先选择一个节点");
            return;
        }
        zTree.editName(treeNode);
    }
    ;
    function remove(callbackFlag, treeNode) {
//        var zTree = $.fn.zTree.getZTreeObj("tree"),
//            nodes = zTree.getSelectedNodes(),
//            treeNode = nodes[0];
//        if (nodes.length == 0) {
//            alert("请先选择一个节点");
//            return;
//        }
//        var callbackFlag = $("#callbackTrigger").attr("checked");
        zTree.removeNode(treeNode, callbackFlag);
    }
    ;
    function clearChildren(e) {
        var zTree = $.fn.zTree.getZTreeObj("tree"),
            nodes = zTree.getSelectedNodes(),
            treeNode = nodes[0];
        if (nodes.length == 0 || !nodes[0].isParent) {
            alert("请先选择一个父节点");
            return;
        }
        zTree.removeChildNodes(treeNode);
    }
    ;


    $(document).ready(function () {
        var t = $("#tree");
        $.ajax({
            url: ctx + "/home/menu/getMenuList.action",
            type: "post",
            contentType: "application/x-www-form-urlencoded",
            dataType: "json",
            success: function (data) {
                t = $.fn.zTree.init(t, setting, data);
            }, error: function () {

            }
        });

        demoIframe = $("#testIframe");
        demoIframe.bind("load", loadReady);
        var zTree = $.fn.zTree.getZTreeObj("tree");
//        zTree.selectNode(zTree.getNodeByParam("id", 101));//默认选定
        $("#addParent").bind("click", {isParent: true}, add);

    });

    function loadReady() {
        var bodyH = demoIframe.contents().find("body").get(0).scrollHeight,
            htmlH = demoIframe.contents().find("html").get(0).scrollHeight,
            maxH = Math.max(bodyH, htmlH), minH = Math.min(bodyH, htmlH),
            h = demoIframe.height() >= maxH ? minH : maxH;
        if (h < 530) h = 530;
        demoIframe.height(h);
    }


</script>
<ul id="tree" class="ztree" style="width:560px; overflow:auto;"></ul>
<a id="addParent" href="#" title="增加父节点"
   onclick="return false;">增加父节点</a> ]
</body>
</html>