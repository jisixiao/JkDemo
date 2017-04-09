/**
 * 封装信息
 * ajax 封装 ： http://www.jb51.net/article/85738.htm
 */

(function ($) {
    //ajax封装
    $.ajaxTemplet = {
        /**
         * ajax Post
         * @param url 地址
         * @param data 发生数据 模板：data: "orderId=" + orderId + "&commant=" + commant
         * @param successFn
         * @param errorFn
         */
        aj_Post: function (url, data, successFn, errorFn) {
            $.ajax({
                url: ctx + url,
                data: data,
                contentType: "application/x-www-form-urlencoded",
                type: "post",
                dataType: "json",
                success: function (data) {
                    successFn(data);
                },
                error: function (e) {
                    errorFn(e);
                }
            })
        },
        /**
         * ajax Post
         * @param url 地址
         * @param data 发生数据 模板：data: "orderId=" + orderId + "&commant=" + commant
         * @param successFn
         * @param errorFn
         */
        aj_Nodata_Post: function (url , successFn, errorFn) {
            $.ajax({
                url: ctx + url,

                contentType: "application/x-www-form-urlencoded",
                type: "post",
                dataType: "json",
                success: function (data) {
                    successFn(data);
                },
                error: function (e) {
                    errorFn(e);
                }
            })
        },
        /**
         *  ajax From 表单 Post
         * @param url 跳转URL地址
         * @param fromId from Id
         * @param successFn function方法 function(data)使用
         * @param errorFn function 方法
         */
        aj_From_Post: function (url, fromId, successFn, errorFn) {
            $.ajax({
                type: "post",
                url: ctx + url,
                data: $("#fromId").serialize(),
                contentType: "application/x-www-form-urlencoded",
                dataType: "json",
                success: function (data) {
                    successFn(data);

                },
                error: function (e) {
                    errorFn(e);
                }
            });

        }
    };
})(jQuery);