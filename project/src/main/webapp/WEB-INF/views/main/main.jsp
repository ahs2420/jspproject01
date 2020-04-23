<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jspf"%>
<!-- 추가 css,js -->
    <link rel="stylesheet" href="/css/main.css">
    <script src="/js/main.js"></script>
</haed>
<body>
<header>
<%@ include file="/WEB-INF/views/include/nav.jspf"%>
    <!--슬라이드 이미지 1개일때는 .hero.item-only추가-->
    <div class="hero">
        <div class="owl-carousel owl-hero owl-theme">
            <div class="item">
                <a href="/product/product">
                    <div class="bg-hero-cover">
                        <div class="bg-img bg-main" style="background-image: url(/images/main/main_1.jpg);"></div>
                        <div class="container bg-txt">
                            <div class="hero-text-box">
                                <div class="small-title"></div>
                                <h1 class="title mb20">잘 먹고 잘 쉬기<br>만원 혜택 받고 시작해요</h1>
                                <div class="sub-title">IT</div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="item">
                <a href="/product/product">
                    <div class="bg-hero-cover">
                        <div class="bg-img bg-main" style="background-image: url(/images/main/main_2.jpg);"></div>
                        <div class="container bg-txt">
                            <div class="hero-text-box">
                                <div class="small-title"></div>
                                <h1 class="title mb20">잘 먹고 잘 쉬기<br>만원 혜택 받고 시작해요</h1>
                                <div class="sub-title">IT</div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="item">
                <a href="/product/product">
                    <div class="bg-hero-cover">
                        <div class="bg-img bg-main" style="background-image: url(/images/main/main_3.jpg);"></div>
                        <div class="container bg-txt">
                            <div class="hero-text-box">
                                <div class="small-title"></div>
                                <h1 class="title mb20">잘 먹고 잘 쉬기<br>만원 혜택 받고 시작해요</h1>
                                <div class="sub-title">IT</div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <!--슬라이더 버튼-->
        <div class="owl_hero_cotainer container flex-box flex-j-space flex-a-flexend">
            <div class="owl_hero_dots owl-dots"></div>
            <div class="owl_hero_nav owl-dots"></div>
        </div>
    </div>
</header>
<main>
        <section>
            <article class="container">
                <h1 class="title align-center mb10">
                    Latest <span class="main-color">P</span>roducts
                </h1>
                <h2 class="sub-title align-center mb20">
                    와디즈에서 새로운 프로젝트들을 만나보세요
                </h2>
                <div class="flex-box flex-j-space flex-wrap">
                    <div class="item-box mb20">
                        <a href="/product/product">
                            <div class="border-box">
                                <div class="img-box">
                                    <img src="/images/product/item_1.jpg" alt="" />
                                </div>
                                <div class="txt-box">
                                    <h3 class="title text-max-line line2 mb20">공기청정기+스마트화분, 필터와 식물로 듀얼청정! 자동물공급 까지?</h3>
                                    <p class="catogory mb20 gray">IT/가전 | 주식회사 너에게</p>
                                    <div class="progress-bar mb10">
                                        <span class="percent" style="width: 50%;"></span>
                                    </div>
                                    <div class="flex-box flex-j-space">
                                        <p>
                                            5,000만원<span class="ml5 gray">50%</span> 
                                        </p>
                                        <p class="gray">
                                            28일 남음
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <span class="border-animation border-1"></span>
                            <span class="border-animation border-2"></span>
                            <span class="border-animation border-3"></span>
                            <span class="border-animation border-4"></span>
                        </a>
                    </div>
                    <div class="item-box mb20">
                        <a href="/product/product">
                            <div class="border-box">
                                <div class="img-box">
                                    <img src="/images/product/item_1.jpg" alt="" />
                                </div>
                                <div class="txt-box">
                                    <h3 class="title text-max-line line2 mb20">공기청정기+스마트화분, 필터와 식물로 듀얼청정! 자동물공급 까지?</h3>
                                    <p class="catogory mb20 gray">IT/가전 | 주식회사 너에게</p>
                                    <div class="progress-bar mb10">
                                        <span class="percent" style="width: 50%;"></span>
                                    </div>
                                    <div class="flex-box flex-j-space">
                                        <p>
                                            5,000만원<span class="ml5 gray">50%</span> 
                                        </p>
                                        <p class="gray">
                                            28일 남음
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <span class="border-animation border-1"></span>
                            <span class="border-animation border-2"></span>
                            <span class="border-animation border-3"></span>
                            <span class="border-animation border-4"></span>
                        </a>
                    </div>
                    <div class="item-box mb20">
                        <a href="/product/product">
                            <div class="border-box">
                                <div class="img-box">
                                    <img src="/images/product/item_1.jpg" alt="" />
                                </div>
                                <div class="txt-box">
                                    <h3 class="title text-max-line line2 mb20">공기청정기+스마트화분, 필터와 식물로 듀얼청정! 자동물공급 까지?</h3>
                                    <p class="catogory mb20 gray">IT/가전 | 주식회사 너에게</p>
                                    <div class="progress-bar mb10">
                                        <span class="percent" style="width: 50%;"></span>
                                    </div>
                                    <div class="flex-box flex-j-space">
                                        <p>
                                            5,000만원<span class="ml5 gray">50%</span> 
                                        </p>
                                        <p class="gray">
                                            28일 남음
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <span class="border-animation border-1"></span>
                            <span class="border-animation border-2"></span>
                            <span class="border-animation border-3"></span>
                            <span class="border-animation border-4"></span>
                        </a>
                    </div>
                    <div class="item-box mb20">
                        <a href="/product/product">
                            <div class="border-box">
                                <div class="img-box">
                                    <img src="/images/product/item_1.jpg" alt="" />
                                </div>
                                <div class="txt-box">
                                    <h3 class="title text-max-line line2 mb20">공기청정기+스마트화분, 필터와 식물로 듀얼청정! 자동물공급 까지?</h3>
                                    <p class="catogory mb20 gray">IT/가전 | 주식회사 너에게</p>
                                    <div class="progress-bar mb10">
                                        <span class="percent" style="width: 50%;"></span>
                                    </div>
                                    <div class="flex-box flex-j-space">
                                        <p>
                                            5,000만원<span class="ml5 gray">50%</span> 
                                        </p>
                                        <p class="gray">
                                            28일 남음
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <span class="border-animation border-1"></span>
                            <span class="border-animation border-2"></span>
                            <span class="border-animation border-3"></span>
                            <span class="border-animation border-4"></span>
                        </a>
                    </div>
                    <div class="item-box mb20">
                        <a href="/product/product">
                            <div class="border-box">
                                <div class="img-box">
                                    <img src="/images/product/item_1.jpg" alt="" />
                                </div>
                                <div class="txt-box">
                                    <h3 class="title text-max-line line2 mb20">공기청정기+스마트화분, 필터와 식물로 듀얼청정! 자동물공급 까지?</h3>
                                    <p class="catogory mb20 gray">IT/가전 | 주식회사 너에게</p>
                                    <div class="progress-bar mb10">
                                        <span class="percent" style="width: 50%;"></span>
                                    </div>
                                    <div class="flex-box flex-j-space">
                                        <p>
                                            5,000만원<span class="ml5 gray">50%</span> 
                                        </p>
                                        <p class="gray">
                                            28일 남음
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <span class="border-animation border-1"></span>
                            <span class="border-animation border-2"></span>
                            <span class="border-animation border-3"></span>
                            <span class="border-animation border-4"></span>
                        </a>
                    </div>
                    <div class="item-box mb20">
                        <a href="/product/product">
                            <div class="border-box">
                                <div class="img-box">
                                    <img src="/images/product/item_1.jpg" alt="" />
                                </div>
                                <div class="txt-box">
                                    <h3 class="title text-max-line line2 mb20">공기청정기+스마트화분, 필터와 식물로 듀얼청정! 자동물공급 까지?</h3>
                                    <p class="catogory mb20 gray">IT/가전 | 주식회사 너에게</p>
                                    <div class="progress-bar mb10">
                                        <span class="percent" style="width: 50%;"></span>
                                    </div>
                                    <div class="flex-box flex-j-space">
                                        <p>
                                            5,000만원<span class="ml5 gray">50%</span> 
                                        </p>
                                        <p class="gray">
                                            28일 남음
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <span class="border-animation border-1"></span>
                            <span class="border-animation border-2"></span>
                            <span class="border-animation border-3"></span>
                            <span class="border-animation border-4"></span>
                        </a>
                    </div>
                    <div class="item-box mb20">
                        <a href="/product/product">
                            <div class="border-box">
                                <div class="img-box">
                                    <img src="/images/product/item_1.jpg" alt="" />
                                </div>
                                <div class="txt-box">
                                    <h3 class="title text-max-line line2 mb20">공기청정기+스마트화분, 필터와 식물로 듀얼청정! 자동물공급 까지?</h3>
                                    <p class="catogory mb20 gray">IT/가전 | 주식회사 너에게</p>
                                    <div class="progress-bar mb10">
                                        <span class="percent" style="width: 50%;"></span>
                                    </div>
                                    <div class="flex-box flex-j-space">
                                        <p>
                                            5,000만원<span class="ml5 gray">50%</span> 
                                        </p>
                                        <p class="gray">
                                            28일 남음
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <span class="border-animation border-1"></span>
                            <span class="border-animation border-2"></span>
                            <span class="border-animation border-3"></span>
                            <span class="border-animation border-4"></span>
                        </a>
                    </div>
                    <div class="item-box mb20">
                        <a href="/product/product">
                            <div class="border-box">
                                <div class="img-box">
                                    <img src="/images/product/item_1.jpg" alt="" />
                                </div>
                                <div class="txt-box">
                                    <h3 class="title text-max-line line2 mb20">공기청정기+스마트화분, 필터와 식물로 듀얼청정! 자동물공급 까지?</h3>
                                    <p class="catogory mb20 gray">IT/가전 | 주식회사 너에게</p>
                                    <div class="progress-bar mb10">
                                        <span class="percent" style="width: 50%;"></span>
                                    </div>
                                    <div class="flex-box flex-j-space">
                                        <p>
                                            5,000만원<span class="ml5 gray">50%</span> 
                                        </p>
                                        <p class="gray">
                                            28일 남음
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <span class="border-animation border-1"></span>
                            <span class="border-animation border-2"></span>
                            <span class="border-animation border-3"></span>
                            <span class="border-animation border-4"></span>
                        </a>
                    </div>
                </div>
            </article>
        </section>
        <!-- <section class="reward-description">
            <div class="container" id="fadeInUp">
                <h1 class="title mb30">Lorem, ipsum dolor.</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quia aut minus. Architecto illum velit, quas cum repellendus, quia corporis consequuntur fuga ullam cumque excepturi sed. Incidunt molestiae alias beatae cupiditate excepturi. Voluptates soluta vitae quam sint doloribus non, iure magni, dolorum dolorem labore fugit placeat! Obcaecati eveniet quo magnam.</p>
            </div>
        </section> -->
        <section class="reward-info">
            <div class="flex-box flex-wrap"  id="fadeInUp">
                <div class="reward-info-item bg-img bg-black-cover" style="background-image: url(/images/main/main-info-1.jpg);">
                    <div class="reward-info-text z-index-1">
                        <h1 class="title mb10">
                            와디스 소개
                        </h1>
                        <div class="small-title mb20">
                            다양한 우리가 모여 함께 더 나은 세상을 만듭니다.
                        </div>
                        <a href="#" class="btn-stan btn-alerm bold">
                            바로가기 <i class="fas fa-arrow-right"></i>
                        </a>
                    </div>
                </div>
                <div class="reward-info-item bg-img bg-black-cover" style="background-image: url(/images/main/main-info-2.jpg);">
                    <div class="reward-info-text z-index-1">
                        <h1 class="title mb10">
                            크라우드 펀딩이란
                        </h1>
                        <div class="small-title mb20">
                            메이커의 아이디어와 신용을 믿고 제품 생산을 위한 자금을 모으는 것입니다.
                        </div>
                        <a href="#" class="btn-stan btn-alerm bold">
                            바로가기 <i class="fas fa-arrow-right"></i>
                        </a>
                    </div>
                </div>
                <div class="reward-info-item bg-img bg-black-cover" style="background-image: url(/images/main/main-info-3.jpg);">
                    <div class="reward-info-text z-index-1">
                        <h1 class="title mb10">
                            펀딩 오픈하기
                        </h1>
                        <div class="small-title mb20">
                            당신의 이야기를 소개하고 투자자와 서포터를 만나 보세요
                        </div>
                        <a href="#" class="btn-stan btn-alerm bold">
                            바로가기 <i class="fas fa-arrow-right"></i>
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <section class="bg-gray">
            <div class="container">
                <h1 class="title align-center">NEWS <span class="main-color">&</span> NOTICE</h1>
                <div class="small-title align-center">와디스의 다양한 소식을 빠르게 전달 드립니다.</div>
                <div class="flex-box flex-j-space flex-wrap">
                    <div class="news-items flex-box flex-wrap flex-j-space">
                        <div class="news-item">
                            <a href="/sbg0212/ex3.html">
                                <div class="main-color mb5 bold">[NOTICE]</div>
                                <h3 class="sub-title bold text-max-line line2 mb10">Lorem, ipsum.</h3>
                                <div class="small-title content text-max-line line3">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora facere reprehenderit qui ut saepe quibusdam tempore vel aut sed molestias eius sapiente quisquam deleniti autem, cum provident ea totam iusto?
                                </div>
                            </a>
                        </div>
                        <div class="news-item">
                            <a href="/sbg0212/ex3.html">
                                <div class="main-color mb5 bold">[NOTICE]</div>
                                <h3 class="sub-title bold text-max-line line2 mb10">Lorem, ipsum.</h3>
                                <div class="small-title content text-max-line line3">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora facere reprehenderit qui ut saepe quibusdam tempore vel aut sed molestias eius sapiente quisquam deleniti autem, cum provident ea totam iusto?
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="news-items">
                        <div class="news-item news-item-only">
                            <a class="flex-box flex-j-space flex-wrap h-100p"  href="#">
                                <div class="col-lg-12">
                                    <div class="main-color mb5 bold">[NOTICE]</div>
                                    <h3 class="sub-title bold text-max-line line2 mb10">Lorem, ipsum.</h3>
                                    <div class="small-title content text-max-line line3">
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora facere reprehenderit qui ut saepe quibusdam tempore vel aut sed molestias eius sapiente quisquam deleniti autem, cum provident ea totam iusto?
                                    </div>
                                </div>
                                <div class="bg-img col-lg-12 news-img" style="background-image:url(/images/main/main-news1.jpg)">
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="news-items flex-box flex-j-space flex-wrap">
                        <div class="news-item col-lg-6 col-sm-12">
                            <a href="/sbg0212/ex3.html">
                                <div class="main-color mb5 bold">[NOTICE]</div>
                                <h3 class="sub-title bold text-max-line line2 mb10">Lorem, ipsum.</h3>
                                <div class="small-title content text-max-line line3">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora facere reprehenderit qui ut saepe quibusdam tempore vel aut sed molestias eius sapiente quisquam deleniti autem, cum provident ea totam iusto?
                                </div>
                            </a>
                        </div>
                        <div class="news-item col-lg-6 col-sm-12">
                            <a href="/sbg0212/ex3.html">
                                <div class="main-color mb5 bold">[NOTICE]</div>
                                <h3 class="sub-title bold text-max-line line2 mb10">Lorem, ipsum.</h3>
                                <div class="small-title content text-max-line line3">
                                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora facere reprehenderit qui ut saepe quibusdam tempore vel aut sed molestias eius sapiente quisquam deleniti autem, cum provident ea totam iusto?
                                </div>
                            </a>
                        </div>
                        <div class="news-item col-lg-12">
                            <a href="/sbg0212/ex3.html">
                                <div class="flex-box flex-wrap flex-j-space">
                                    <div class="w-49p col-sm-12">
                                        <div class="main-color mb5 bold">[NOTICE]</div>
                                        <h3 class="sub-title bold text-max-line line2 mb10">Lorem, ipsum.</h3>
                                        <div class="small-title content text-max-line line3">
                                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempora facere reprehenderit qui ut saepe quibusdam tempore vel aut sed molestias eius sapiente quisquam deleniti autem, cum provident ea totam iusto?
                                        </div>
                                    </div>
                                    <div class="w-49p col-sm-12">
                                        <div class="bg-img news-img" style="background-image:url(/images/main/main-news2.jpg)">
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="container section-location">
                <div class="flex-box flex-j-space flex-a-center flex-wrap ">
                    <div class="col-lg-5 col-sm-12" id="fadeInLeft">
                        <h1 class="title mb10"><span class="main-color">L</span>ocation</h1>
                        <p class="mb20">와디스로 오시는길</p>
                        <p class="gray mb10">주소</p>
                        <p class="mb20">OO시 OO구 OO로 123 (OO동) OOOO센터 O동 O층 OO호</p>
                        <div class="flex-box flex-wrap">
                            <div class="col-lg-6 col-sm-12">
                                <p class="gray mb10">Phone:</p>
                                <p class="mb20"><a href="tel:010-1234-1234">010-1234-1234</a></p>
                            </div>
                            <div class="col-lg-6 col-sm-12">
                                <p class="gray mb10">Email:</p>
                                <p class="mb20"><a href="mailto:admin@krahs123.co.kr">admin@krahs123.co.kr</a></p>
                            </div>
                        </div>
                        <p class="gray mb10">Website:</p>
                        <p>
                            <a href="https://www.krahs123.co.kr">https://www.krahs123.co.kr</a>
                        </p>
                    </div>
                    <div class="col-lg-6 col-sm-12 google-map" id="fadeInRight">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d101324.72305476252!2d126.93800076924603!3d37.47494286708044!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca7f433e4612b%3A0x6377f5a2f91812fa!2z7JmA65SU7KaI!5e0!3m2!1sko!2skr!4v1584952546931!5m2!1sko!2skr" width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </div>
                        
                </div>
            </div>
        </section>
    </main>
<%@ include file="/WEB-INF/views/include/foot.jspf"%>
</body>
<!-- 추가 script 삽입 -->
</html>