
$(function(){
    // form 체크
    $(".product-select-submit").click(function(){
        var target=$("form[name=product-select]");
        var chkItem=$(".buy-item-chk:checked");
        var noChkItem=$('.buy-item-chk:not(:checked)');
        var donation=uncomma($("input[name=donation]").val());
        var isSubmit=true;
        if(chkItem.length<1){
            // 후원금 0원이면 error 처리
            alert("리워드를 선택해 주세요.");
            isSubmit=false;
            return;
        }
        chkItem.each(function(){
            // 체크된 상품중 수량,옵션 값없으면 체크
            var chkItemName=$(this).attr("id");
            var chkItemOpt=$("#"+chkItemName+"-option");
            var chkItemCnt=$("#"+chkItemName+"-count");
            if(!chkItemCnt.val()){
                alert("수량을 입력해 주세요.");
                chkItemOpt.focus();
                isSubmit=false;
                return false;
            }
            if($(this).data("type")=="option"){
                if(!chkItemOpt.val()){
                    alert("옵션을 선택해 주세요.");
                    chkItemOpt.focus();
                    isSubmit=false;
                    return false;
                }
            }
        });
        noChkItem.each(function(){
            var chkItemName=$(this).attr("id");
            var chkItemOpt=$("#"+chkItemName+"-option");
            var chkItemCnt=$("#"+chkItemName+"-count");
            chkItemOpt.attr("disabled",true);
            chkItemCnt.attr("disabled",true);
        });
        if(isSubmit){
            target.submit();
            //alert("성공");
        }else{
            return false;
        }
        
    });
});

$(function(){
    totalPrice(); // 체크 박스 항목 있을때 사욜
    $("form[name=product-select]").find("input").keyup(function(){
        totalPrice();
    }).change(function(){
        totalPrice();
    });
    $(".total-price").click(function(){
        totalPrice();
    });
    $(".input-count-change").click(function(){
        totalPrice();
    });
});
function totalPrice(){
    var changeItem=$(".total-price");
    var target=$("form[name=product-select]");
    var chkItem=$(".buy-item-chk:checked");
    var addDonation=parseInt(uncomma($("input[name=donation]").val()));
    var totalPrice=(addDonation>0)?addDonation:0;
    chkItem.each(function(){
        var unitPrice=$(this).data("price");
        var count=$("#"+$(this).attr("id")+"-count");
        totalPrice+=parseInt(unitPrice)*parseInt(uncomma(count.val()));
    });
    changeItem.text(comma(totalPrice));
    return totalPrice;
}