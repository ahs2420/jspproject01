
$(function(){
	 
	$('#uploadFile').change(function(){
		if(checkFile(this)){
			if(checkFileSize(this,3)){
				imgPreview(this);
				$(".img-file").addClass("on");
				$("#preview").slideDown();
				return true;
			}
		}
    });
	$("#preview").click(function(){
		$(".img-file").removeClass("on");
		$('#uploadFile').val("");
		$("#preview").slideUp();
	});
});