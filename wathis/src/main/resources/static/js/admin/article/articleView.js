
//댓글 달기
$(function(){
    $("#commentDo").click(function(){
        var form = $(this).data("form");
        var $form = $(form);
        var $comment=$form.find("[name=comment]");
        bReturn=$comment.itemChk();
        if(!bReturn){
            return false;
        }
        var data = $form.serialize();
        console.log(data);
        var option = {
            "url":$(this).data("url"),
            "data":data
        };
        var ajaxResult = ajaxStan(option);
        if(ajaxResult.status=="success"){
            if(ajaxResult.data.status){
                $comment.val("");
                getComment();
                return true;
            }
            alert(ajaxResult.data.msg);
        }else{
            alert("시스템 오류입니다. 관리자에게 문의해 주세요.");
        }
    });
});
$(function(){
    getComment();
});
$(function(){
    //수정하기 클릭시 나오는거
    $(document).on("click",".update-toggle",function(){
        $($(this).data("target")).slideToggle();
    });
    //삭제
    $(document).on("click",".comment-delete",function(){
        if(confirm("삭제하신 정보는 복구 불가능합니다.\n선택하신 댓글을 삭제하시겠습니까?")){
            var $this = $(this);
            var data ={
                "boardCode" : $this.data("board-code"),
                "cid" : $this.data("cid")
            };
            var option={
                "url":$this.data("url"),
                "data":data
            };
    
            var ajaxResult = ajaxStan(option);
            if(ajaxResult.status=="success"){
                if(ajaxResult.data.status){
                    getComment();
                    return true;
                }
                alert(ajaxResult.data.msg);
            }else{
                alert("시스템 오류입니다. 관리자에게 문의해 주세요.");
            }
        }
    });
    //수정
    $(document).on("click",".update-submit",function(){
        var $target=$($(this).data("target"));
        var data=$target.serialize();
        var option={
            "url":$(this).data("url"),
            "data":data
        };
        var ajaxResult = ajaxStan(option);
        if(ajaxResult.status=="success"){
            if(ajaxResult.data.status){
                getComment();
                return true;
            }
            alert(ajaxResult.data.msg);
        }else{
            alert("시스템 오류입니다. 관리자에게 문의해 주세요.");
        }

    });
})
//ajax 댓글 가져오기
function getComment(){
    var target=".commentList";
    var $target = $(target);
    var data ={
        "boardCode" : $target.data("board-code"),
        "aid" : $target.data("aid")
    };
    var option={
        "url":$target.data("url"),
        "data":data
    };
    var ajaxResult = ajaxStan(option);
    var item="";
 
    if(ajaxResult.status=="success"){
        if(ajaxResult.data.status){
            for(var comment of ajaxResult.data.cvoList){
                item+='\
                        <div class="commentArea margin-t10">\
                            <div class="commentInfo">\
                				댓글번호 : '+comment.cid+' / 작성자 : '+comment.writer+'\
                                <a data-target=".update-form'+comment.cid+'" class="btn update-toggle">수정</a>\
                                <a data-url="/comment/deleteComment" data-cid="'+comment.cid+'" data-board-code="'+$target.data("board-code")+'" class="btn comment-delete mr5">삭제</a>\
                                <div class="margin-t10">내용 : '+comment.comment+'</div>\
                            </div>\
                            <div class="margin-t20 dis-none update-form'+comment.cid+'">\
                                <form name="update-form'+comment.cid+'">\
                                    <input type="hidden" name="cid" value="'+comment.cid+'">\
                                    <input type="hidden" name="boardCode" value="'+$target.data("board-code")+'">\
                                    <div class="comment-wrap">\
                                        <div class="comment-left lalign">\
                                            <textarea class="bo-gray w-100p h-100p padding-a-10 font-18 noto" name="comment">'+comment.comment+'</textarea>\
                                        </div>\
                                        <div class="comment-right ralign">\
                                            <button type="button" data-target="[name=update-form'+comment.cid+']" data-url="/comment/updateComment" class="update-submit bold orange font-18 bo-gray h-100p w-100p">\
                                                	수정\
                                            </button>\
                                        </div>\
                                    </div>\
                                </form>\
                            </div>\
                        </div>\
                        <hr class="margin-tb20 bg-color-6" />\
                    ';
            }
            $target.html(item);
            $target.parent(".tbl-spacing").parent(".categories-area").css("display","block");
            return true;
        }
        $target.parent(".tbl-spacing").parent(".categories-area").css("display","none");
       // alert(ajaxResult.data.msg);
    }else{
       // alert("시스템 오류입니다. 관리자에게 문의해 주세요.");
    }
}