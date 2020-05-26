$(function() {
	$("form").submit(function() {
		var bReturn = true;
		$(".notice-list-search-input").each(function(){
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
/*<script type="text/javascript">*/
$(function () { $(window).scroll(function () { if ($(window).scrollTop()
> 100) { $(".notice-list-up").fadeIn(300);
$(".notice-list-chat").fadeIn(300); } else {
$(".notice-list-up").fadeOut(300); $(".notice-list-chat").fadeOut(300);

} }); }); $(function(){ $(".notice-list-up").click(function(){ $("html,
body").animate({scrollTop:0},300); }); }); $(function(){
$(".notice-list-chat").click(function(){
$("#tawk_5e81913535bcbb0c9aabba5a").toggle(); }); });
/*</script>*/