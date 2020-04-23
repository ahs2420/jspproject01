$(function(){
    $(window).scroll(function(){
        //id값에 애니메이션 이름 추가하면 사용가능
        try {
            fadeAnimation("fadeInUp");
        } catch (error) {
            //console.log("fadeInUp 없음")
        }
        try{
            fadeAnimation("fadeInLeft");
        }catch (error) {
            //console.log("fadeInLeft 없음")
        }
        try{
            fadeAnimation("fadeInRight");
        }catch (error) {
            //console.log("fadeInRight 없음")
        }
    });
});