/**
 * Created by rick on 15/11/13.
 */


cataDict = {}
function autoFillName($name, changePower){
    console.log("$name", $name)
    var selectCate = $('#category').val()
    if (!(selectCate in cataDict)){
        return
    }
    option = cataDict[selectCate]
    if(cataDict[selectCate][0]){
        console.log("$name1", $name)
        $name.val(cataDict[selectCate][1]);
        $name.attr("readonly", true)
        if(changePower){
            $power.val("")
        }
    }else{
        $name.attr("readonly", false)
        $name.val("")
        if(changePower){
            $power.val("0")
        }
    }
}
function initCatagory($name){
    $('#category').find("option").each(function () {
        $option = $(this)
        value = $option.val()
        label = $option.text()
        cataDict[value]= [$option.attr("data-wb-a-flag")== "yes", label]
    })
    autoFillName($name)
    $('#category').change(function(){
        autoFillName($name, true)
    })
}