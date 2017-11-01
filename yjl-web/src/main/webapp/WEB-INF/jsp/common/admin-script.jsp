<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<script>
    function initTable() {
        var url = "<%=basePath%>admin/getProductList";
        $(".product-table").bootstrapTable({
            method:'GET',
            dataType:'json',
            striped:true,
            url:url,
            pagination:true,
            paginationVAlign:"top",
            columns:[
                {
                    field : 'name',
                    title : '展品名称',
                    align : 'center',
                    valign : 'middle'
                },{
                    field : 'category',
                    title : '分类',
                    align : 'center',
                    valign : 'middle'
                },{
                    field : 'create_time',
                    title : '上架时间',
                    align : 'center',
                    valign : 'middle',
                    formatter:function(value,row,index){
                        return new Date(parseInt(value)).toLocaleString().replace(/:\d{1,2}$/,' ');
                    }
                },{
                    field : 'price',
                    title : '拍卖价格',
                    align : 'center',
                    valign : 'middle'
                },{
                    field : 'evaluate',
                    title : '评价',
                    align : 'center',
                    valign : 'middle'
                },{
                    field : 'id',
                    title : '操作',
                    align : 'center',
                    valign : 'middle',
                    formatter:function(value,row,index){
                        var edit = "<a href='<%=basePath%>admin/edit/"+value+"'>编辑</a>  ";
                        var del = "<a href='<%=basePath%>admin/del/"+value+"'>删除</a>";
                        return edit+del;
                    }
                }
            ]
        })
    }
    function getOrderList(){
        console.log("getOrderList");
        var url = "<%=basePath%>admin/getOrderList";
        $(".product-table").bootstrapTable('destroy');
        $(".product-table").bootstrapTable({
            method:'GET',
            dataType:'json',
            striped:true,
            url:url,
            pagination:true,
            paginationVAlign:"top",
            columns:[
                {
                    field : 'order.name',
                    title : '拍卖者',
                    align : 'center',
                    valign : 'middle'
                },
                {
                    field : 'productName',
                    title : '展品名称',
                    align : 'center',
                    valign : 'middle'
                },{
                    field : 'category',
                    title : '分类',
                    align : 'center',
                    valign : 'middle'
                },{
                    field : 'order.price',
                    title : '拍卖价格',
                    align : 'center',
                    valign : 'middle'
                },{
                    field : 'order.telephone',
                    title : '联系方式',
                    align : 'center',
                    valign : 'middle'
                },{
                    field : 'order.email',
                    title : '邮箱',
                    align : 'center',
                    valign : 'middle'
                },{
                    field : 'order.message',
                    title : '留言',
                    align : 'center',
                    valign : 'middle'
                },{
                    field : 'order.create_time',
                    title : '拍卖时间',
                    align : 'center',
                    valign : 'middle',
                    formatter:function(value,row,index){
                        return new Date(parseInt(value)).toLocaleString().replace(/:\d{1,2}$/,' ');
                    }
                }
            ]
        });
    }
    function getNewsList(){
        //window.location.href="<%=basePath%>admin/index";
        var url = "<%=basePath%>news/getNewsList";
        $(".product-table").bootstrapTable('destroy');
        $(".product-table").bootstrapTable({
            method:'GET',
            dataType:'json',
            striped:true,
            url:url,
            pagination:true,
            paginationVAlign:"top",
            columns:[
                {
                    field : 'title',
                    title : '公告标题',
                    align : 'center',
                    valign : 'middle'
                },{
                    field : 'create_time',
                    title : '创建时间',
                    align : 'center',
                    valign : 'middle',
                    formatter:function(value,row,index){
                        return new Date(parseInt(value)).toLocaleString().replace(/:\d{1,2}$/,' ');
                    }
                }, {
                    field: 'id',
                    title: '操作',
                    align: 'center',
                    valign: 'middle',
                    formatter: function (value, row, index) {
                        var edit = "<a href='<%=basePath%>news/edit/" + value + "'>编辑</a>  ";
                        var del = "<a href='<%=basePath%>news/del/" + value + "'>删除</a>";
                        return edit + del;
                    }
                }
            ]
        });
    }
</script>
