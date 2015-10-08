<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../asserts/3rd/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../../asserts/3rd/bootstrap-table/bootstrap-table.css">
<link rel="stylesheet" href="../../asserts/3rd/bootstrap-editable/bootstrap3-editable/css/bootstrap-editable.css">
<link rel="stylesheet" href="../../asserts/css/overwrite.css">
</head>
<body>
<div>
    <table id="item_table"
           data-show-refresh="true"
           data-show-columns="true"
           data-search="true"
           data-page-size="25"
           data-sort-name="rat"
           data-sort-order="desc"
           data-toolbar=".toolbar">
        <thead>
        <tr>
            <th data-field="buyer"  data-sortable="true">采购人</th>
            <th data-field="intime"  data-sortable="true">延期数量</th>
            <th data-field="total"  data-sortable="true">总数量</th>
            <th data-field="rat"  data-sortable="true">及时率(%)</th>
        </tr>
        </thead>
    </table>
</div>
<script src="../../asserts/3rd/jquery/jquery.js"></script>
<script src="../../asserts/3rd/bootstrap/js/bootstrap.min.js"></script>
<script src="../../asserts/3rd/bootstrap-table/bootstrap-table.js"></script>
<script src="../../asserts/3rd/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
<script src="../../asserts/webo/poplayer.js"></script>
<script src="../../asserts/webo/util.js"></script>
<script src="../../asserts/js/ui.js"></script>
<script>
    var $table = $("#item_table")
    function responseHandler(res){
        return res.rows
    }
    $(function(){
        $table.bootstrapTable({url:"/purchase/list/buyertimely", method:"post", responseHandler:responseHandler, sidePagination:"server", pagination:true, height:getTableHeight()});
        $(window).resize(function () {
            $table.bootstrapTable('resetView', {
                height: getTableHeight()
            });
        });
    });
</script>
</body>
</html>