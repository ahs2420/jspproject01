$(function(){
    $(".deleveryChk").click(function(){
        $("#postcode").val($(this).data("postcode"));
        $("#address").val($(this).data("address"));
        $("#detailAddress").val($(this).data("detail-address"));
        $("#extraAddress").val($(this).data("extra-address"));
        $("#deliveryName").val($(this).data("delivery-name"));
        $("#deliveryPhone").val($(this).data("delivery-phone"));
        $("#dis-post").html($(this).data("postcode")+' '+$(this).data("address")+' '+$(this).data("extra-address"));
    });
})
$(function(){
    $("form[name=product-payment]").submit(function(){
        var bReturn=chkItem($(this));
        return bReturn;
    });
});