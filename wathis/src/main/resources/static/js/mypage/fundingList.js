var loadDelevery= false;
$(function(){
    $(".deleveryChk").click(function(){
    	
        if(!loadDelevery){
            loadDelevery=true;
            var data={
                "carriers":$(this).data("carriers"),
                "tracks":$(this).data("tracks")
            }
            var option={
                "url":"/delveryAPI/parseDelivery",
                "data":data
            }
            var deleveryTableBody ="";
            var deleveryInfoBody="";
            var ajaxResult = ajaxStan(option);
            if(ajaxResult.status){
                if(!ajaxResult.data.message){
                    
                    for(var i=ajaxResult.data.progresses.length-1;i>=0;i--){
                        var date = ajaxResult.data.progresses[i].time.split("T");
                        var time = date[1].split("+");
                        deleveryTableBody+='\
                            <tr class="border-bottom">\
                                <td class="align-center pt10 pb10">\
                                    <p>'+date[0]+'</p>\
                                    <p>'+time[0]+'</p>\
                                </td>\
                                <td class="align-center pt10 pb10">'+ajaxResult.data.progresses[i].location.name+'</td>\
                                <td class="align-center pt10 pb10">\
                                    <p>'+ajaxResult.data.progresses[i].status.text+'</p>\
                                    <p class="tiny-content">'+ajaxResult.data.progresses[i].description+'</p>\
                                </td>\
                            </tr>\
                        ';
        
                    }
                    deleveryInfoBody='\
                        <tr>\
                            <td class="bold">받는 사람</td>\
                            <td>'+ajaxResult.data.to.name+'</td>\
                        </tr>\
                        <tr>\
                            <td class="bold">택배사</td>\
                            <td>'+ajaxResult.data.carrier.name+' ('+ajaxResult.data.carrier.tel+')</td>\
                        </tr>\
                        <tr>\
                            <td class="bold">송장번호</td>\
                            <td>'+$(this).data("tracks")+'</td>\
                        </tr>\
                        <tr>\
                            <td class="bold">보낸 사람</td>\
                            <td>'+ajaxResult.data.from.name+'</td>\
                        </tr>\
                    ';
                    $(".delevery-table tbody").html(deleveryTableBody);
                    $(".delevery-info tbody").html(deleveryInfoBody);
                    $(".delevery-status").html(ajaxResult.data.state.text);
                    targetActive(this);
                }else{
                    alert("배송 시작전입니다.");
                    loadDelevery=false;
                }
            }else{ 
                alert("시스템 오류입니다. 잠시후에 다시 시도해 주세요.");
                loadDelevery=false;
            }
        }else{
            targetActive(this);
        }
    });
});