//배공지 목록에서 주소 입력 자동으로 되게
$(function(){
    $(".deleveryChk").click(function(){
        var bRead=($(this).data("postcode")=="")?false:true;
        (bRead)?$("#daum-map-btn").css("display","none"):$("#daum-map-btn").css("display","block");
        $("#newDeleveryChk").val(bRead);
        $("#postcode").val($(this).data("postcode")).attr("readonly",bRead);
        $("#address").val($(this).data("address")).attr("readonly",bRead);
        $("#detailAddress").val($(this).data("detail-address")).attr("readonly",bRead);
        $("#extraAddress").val($(this).data("extra-address")).attr("readonly",bRead);
        $("#deliveryName").val($(this).data("delivery-name")).attr("readonly",bRead);
        $("#deliveryPhone").val($(this).data("delivery-phone")).attr("readonly",bRead);
        $("#dis-post").html($(this).data("postcode")+' '+$(this).data("address")+' '+$(this).data("extra-address"));
    });
});
//폼 확인
$(function(){
    $("form[name=product-payment]").submit(function(){
        var bReturn=chkItem($(this));
        return bReturn;
    });
});
//카드번호 유효기간 / 자동으로 들가게
$(function(){
    $("#cardValidity").keydown(function(){
        var val = $(this).trimVal();
        if(val.length==2&&event.keyCode!=8){
            $(this).val(val.toString().replace(/(.{2})/g,"$1/"));
        }
    });
});
