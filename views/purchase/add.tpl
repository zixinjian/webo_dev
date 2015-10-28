<!DOCTYPE html>
<html>
<head lang="zh">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../asserts/3rd/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="../../asserts/3rd/datetimepicker/jquery.datetimepicker.css">
    <link rel="stylesheet" href="../../asserts/3rd/uploadify/uploadify.css" />
    <link rel="stylesheet" href="../../asserts/3rd/jquery-ui/jquery-ui.min.css">
    <style>
        .ui-autocomplete-loading {
            background: white url("../../asserts/webo/images/ui-anim_basic_16x16.gif") right center no-repeat;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="alert" role="alert" style="display: none">添加成功！</div>
    <form class="form-horizontal" id="item_form">
        <input type="hidden" id="sn" name="sn" value="{{.sn}}">
        <div class="form-group">
        <label class="col-sm-3 control-label">类别</label>
        <div class="col-sm-6">
            <select class="input-block-level form-control" data-validate="{required: true, messages:{required:'请输入类别'}}" name="category" id="category" autocomplete="off" value="" >
                <option value="cate_engine">柴油机</option>
                <option value="cate_generator">电机</option>
                <option value="cate_waterbox">水箱</option>
                <option value="cate_epart">电器件</option>
                <option value="cate_parts">配件</option>
                <option value="cate_other">其他</option>
                <option value="cate_newpdt">新产品</option>
            </select>
        </div>
    </div>
        <input type="hidden" id="product" name="product" value="">
        <input type="hidden" id="supplier" name="supplier" value="">
        <div class="form-group">
            <label class="col-sm-3 control-label">商品名称</label>
            <div class="col-sm-6">
                <input type="text" class="input-block-level form-control" id="productname" name="productname" data-validate="{required: true, messages:{required:'请输入正确的商品名称!'}}" value="">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">型号</label>
            <div class="col-sm-6">
                <input type="text" class="input-block-level form-control" data-validate="{required: true, messages:{required:'请输入正确的型号!'}}" name="model" id="model" autocomplete="off" value="" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">品牌</label>
            <div class="col-sm-6">
                <input type="text" class="input-block-level form-control" name="brand" id="brand" autocomplete="off" value="" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">功率</label>
            <div class="col-sm-6">
                <input type="text" class="input-block-level form-control" data-validate="{required: true, number:true, messages:{required:'请输入正确的功率!'}}" name="power" id="power" autocomplete="off" value="" readonly/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">参考价</label>
            <div class="col-sm-6">
                <input type="text" class="input-block-level form-control" data-validate="{required: false, number:true, messages:{required:'请输入正确的参考价!'}}" name="productprice" id="productprice" autocomplete="off" value="" readonly='true'/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">采购人</label>
            <div class="col-sm-6">
                <select class="input-block-level form-control" data-validate="{required: true, messages:{required:'请输入采购人'}}" name="buyer" id="buyer" autocomplete="off" value="" >
                    {{range .Buyers}}
                        <option value="{{.Sn}}">{{.Name}}</option>
                    {{end}}
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">数量</label>
            <div class="col-sm-6">
                <input type="text" class="input-block-level form-control" data-validate="{required: true, messages:{required:'请输入正确的数量!'}}" name="num" id="num" autocomplete="off" value="1" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">下单日期</label>
            <div class="col-sm-6">
                <input type="text" class="input-block-level form-control datetimepicker" data-validate="{required: true, messages:{required:'请输入下单日期!'}}" name="placedate" id="placedate" autocomplete="off" value="curtime" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">需用日期</label>
            <div class="col-sm-6">
                <input type="text" class="input-block-level form-control datetimepicker" data-validate="{required: true, messages:{required:'请输入需用日期!'}}" name="requireddate" id="requireddate" autocomplete="off" value="" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">申请部门</label>
            <div class="col-sm-6">
                <input type="text" class="input-block-level form-control" data-validate="{required: true, messages:{required:'请输入申请部门!'}}" name="requireddepartment" id="requireddepartment" autocomplete="off" value="" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-3 control-label">备注</label>
            <div class="col-sm-6">
                <input type="text" class="input-block-level form-control" name="mark" id="mark" autocomplete="off" value="" />
            </div>
        </div>
    </form>
</div>

<script src="../../asserts/3rd/jquery/jquery.js"></script>
<script src="../../asserts/3rd/bootstrap/js/bootstrap.min.js"></script>
<script src="../../asserts/3rd/jquery/jquery.form.js"></script>
<script src="../../asserts/3rd/jquery/validate/jquery.metadata.js"></script>
<script src="../../asserts/3rd/jquery/validate/jquery.validate.js"></script>
<script src="../../asserts/3rd/uploadify/jquery.uploadify.js"></script>
<script src="../../asserts/3rd/datetimepicker/jquery.datetimepicker.js"></script>
<script src="../../asserts/3rd/jquery-ui/jquery-ui.min.js"></script>
<script src="../../asserts/js/validateExtend.js"></script>
<script src="../../asserts/js/ui.js"></script>
<script src="../../asserts/webo/util.js"></script>

<script>
    cateNoName = {
        cate_engine:"柴油机",
        cate_generator:"电机",
        cate_waterbox:"水箱"
    }
    cateNameValues = wbGetMapValue(cateNoName)
    var $productName = $('#productname')
    var $power = $("#power")

    function showResponse(resp) {
        if(resp.ret == "success"){
            top.hideTopModal()
            refreshContent()
        }else{
            showError("添加失败!")
        }
    }
    var refreshContent
    function onTopModalOk(options){
        if(options.refreshContent){
            refreshContent = options.refreshContent
        }
        if (! $("#item_form").valid()){
            return
        }
        $("#item_form").ajaxSubmit({
            type: "post",
            url: "{{.Service}}",
            success: showResponse
        });
    }
    function setProductValues(item){
        $("#product" ).val(item.sn);
        $("#productprice").val(item.price)
        $("#brand").val(item.brand)
        $("#supplier").val(item.supplier)
        $power.val(item.power)
    }
    function clearProductValues(){
        $("#product").val("");
        $("#productprice").val("")
        $("#supplier").val("")
        $("#brand").val("")
        $("#model").val("")
        $power.val("0")
    }
    $(function () {
        $("#power").wrapAll('<div class="input-group"></div>')
        $("#power").after('<span class="input-group-addon">KW</span>')

        var selectCate = $('#category').val()
        if(selectCate in cateNoName && $productName.val() == ""){
            $productName.val(cateNoName[selectCate]);
            $productName.attr("readonly", true)
            wbGetParentFromGroup("#productname").hide()
        }
        $('#category').change(function(){
            clearProductValues()
            var selectCate = $('#category').val()
            if(selectCate in cateNoName){
                $productName.val(cateNoName[selectCate]);
                $productName.attr("readonly", true)
                $power.val("")
                wbGetParentFromGroup("#productname").hide()
                wbGetParentFromGroup("#power").show()

            }else{
                $productName.attr("readonly", false)
                $productName.val("")
                $power.val("0")
                wbGetParentFromGroup("#productname").show()
                wbGetParentFromGroup("#power").hide()
            }
        })
        $("#model").autocomplete({
            source: "/item/autocomplete/product?category=" + $("#category").val(),
            autoFocus:true,
            focus: function( event, ui ) {
                setProductValues(ui.item)
                return false;
            },
            minLength: 1,
            select: function( event, ui) {
                $("#model").val(ui.item.model)
                setProductValues(ui.item)
                return false;
            },
            change: function( event, ui ) {

            }
        }).autocomplete( "instance" )._renderItem = function( ul, item ) {
            return $( "<li>" )
                    .append(item.keyword + "(" + item.name + ")")
                    .appendTo( ul );
        };

        $("#placedate").datetimepicker({timepicker:false,format:'Y.m.d',lang:'zh',value:new Date()})
        $("#requireddate").datetimepicker({timepicker:false,format:'Y.m.d',lang:'zh'})
    });
</script>
</body>
</html>