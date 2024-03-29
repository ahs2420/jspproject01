$(function () {
    $('.owl-carousel').owlCarousel({
        loop: false,
        nav: true,
        dots: false,
        navContainerClass: 'owl-nav custom',
        navText: ['<i class="fas fa-chevron-left"></i>', '<i class="fas fa-chevron-right"></i>'],
        responsive: {
            0: {
                items: 3,
                slideBy: 3
            },
            425: {
                items: 4,
                slideBy: 4
            },
            768: {
                items: 6,
                slideBy: 6
            },
            1080: {
                items: 10,
                slideBy: 10
            }
        }
    });
});

function ajax(url) {
    var returnData = $.ajax({
        async: false,
        type: "post",
        url: url,
        dataType: "HTML",
        succesc: function (data) {
            return data;
        }
    });
    return returnData;
}
$(function() {
	$("form").submit(function() {
		var bReturn = true;
		$(".news-search-input").each(function(){
			if($.trim($(this).val())==""){
				alert($(this).data("error")+"해주세요");
				$(this).focus();
				bReturn=false;
				return false;
			}
		});
		return bReturn;
	});
});