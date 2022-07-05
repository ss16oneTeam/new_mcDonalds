<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ include file="/layout/header.jsp" %>  

<!doctype html>
<html lang="ko">
<head>
<script>
	if(self.location.protocol == "http:" && self.location.hostname.indexOf('mcdonalds.co.kr') != -1) {
		self.location.href = self.location.href.replace('http',"https");
	}
</script>

<!-- Google Tag Manager -->
<script>
	window.dataLayer = window.dataLayer || [];

	(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0], j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src= 'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f); })(window,document,'script','dataLayer','GTM-W5TBQX4');
</script>
<!-- End Google Tag Manager -->

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title></title>
<meta name="description" id="description" contents="메뉴, 레스토랑, 프로모션 등 안내"/>
<meta name="keywords" contents="McDonald's, McDrive, McDelivery, McMorning, Happy Meal, Signature Burger, McAllday, McCafe"/>
<link rel="shortcut icon" type="image/x-icon" href="https://www.mcdonalds.co.kr/kor/images/favicon.ico">
<link rel="stylesheet" href="https://www.mcdonalds.co.kr/kor/css/common.css?t=2022012502"> 
<link rel="alternate" href="https://www.mcdonalds.co.kr">
<script src="https://www.mcdonalds.co.kr/kor/js/libs.js"></script>
<script src="https://www.mcdonalds.co.kr/kor/js/common.js?t=2022012502"></script>
<script src="https://www.mcdonalds.co.kr/kor/js/popup.js"></script>
<!-- <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7d2849da01922567115797fadd6e5ca4"></script> -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-15032749-2"></script>
<script>
	function gtag(){dataLayer.push(arguments);}
	gtag('js', new Date());
	
	 gtag('config', 'UA-15032749-2');
</script>
	
<!-- Facebook Pixel Code -->
<script>
	!function(f, b, e, v, n, t, s) {
		if (f.fbq)
			return;
		n = f.fbq = function() {
			n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
					.push(arguments)
		};
		if (!f._fbq)
			f._fbq = n;
		n.push = n;
		n.loaded = !0;
		n.version = '2.0';
		n.queue = [];
		t = b.createElement(e);
		t.async = !0;
		t.src = v;
		s = b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t, s)
	}(window, document, 'script', 'https://connect.facebook.net/en_US/fbevents.js');
	
	fbq('init', '2808577885918545');
	fbq('track', 'PageView');
</script>
<noscript>
	<img height="1" width="1" src="https://www.facebook.com/tr?id=2808577885918545&ev=PageView&noscript=1" />
</noscript>
<!-- End Facebook Pixel Code -->
	
<script>
	$(window).on('load',function()
	{
		// commonJs.menu.TopActive(idx(0~3))	menu : 0 , store : 1 , what's news : 2 , story : 3 서브페이지에 메뉴 순번에 맞춰서 활성화 
		// commonJs.menu.TopDeActive()			활성화 해제
		// commonJs.menu.TopActive( 2 );
		// setWebTitle();
	});
	function loadTemplate(id) { return document.getElementById(id).innerHTML;}
	function replaceTemplate(templateStr, data) {
		var result = templateStr;
		for (var key in data) {
			var pattern = new RegExp("{"+key+"}","g");
			result = result.replace(pattern, data[key]);
		}
		return result;
	}
	function makeHtml(id,data){
		return replaceTemplate(loadTemplate(id),data);
	}
	function setWebTitle(){
		
		var title = $("[data-title]").data("title");
		var des = $("[data-desc]").data("desc");
		if(title != undefined && $.trim(title) !="N"){
			 $(document).attr("title",title +" - " + $(document).attr("title"));
		}
		if(des != undefined && $.trim(des) !=""){
			 $("#description").attr("contents",$("#description").attr("contents")+" "+des);
		}
		
	}
	function setCookie( name, value, expiredays ) 
	{ 
			var todayDate = new Date(); 
			todayDate.setDate( todayDate.getDate() + expiredays ); 
			document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";" 
	}
	function getCookie(cname) {
	    var name = cname + "=";
	    var decodedCookie = decodeURIComponent(document.cookie);
	    var ca = decodedCookie.split(';');
	    for(var i = 0; i <ca.length; i++) {
	        var c = ca[i];
	        while (c.charAt(0) == ' ') {
	            c = c.substring(1);
	        }
	        if (c.indexOf(name) == 0) {
	            return c.substring(name.length, c.length);
	        }
	    }
	    return "";
	}
	function altEscapeTag(){
		$("img").each(function (i,ob){
			$(ob).attr("alt",$(ob).attr("alt").replace(/(<([^>]+)>)/ig,""));
		});
	}
</script>
</head>
<body>	

<!-- Google Tag Manager (noscript) -->
<noscript>
	<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W5TBQX4" height="0" width="0" style="display:none;visibility:hidden"></iframe>
</noscript> 
<!-- End Google Tag Manager (noscript) -->

<div class="skipMenu"><a href="#container">본문 바로가기</a></div>
<!-- 	<div class="wrapper ">
		<header class="header">상단 고정 fixed 클래스 추가, 메뉴의 depth1 오버시 open 클래스 추가
         
		<div class="headArea">
			<strong class="hLogo"><a href="/" class="logo" title="메인으로 이동"><img src="https://www.mcdonalds.co.kr/kor/images/common/logo.png" alt="맥도날드"></a></strong>
			<nav class="hMenu">
				<div class="menu">
					<ul class="depth1">
						<li>li 오버시 on 클래스 추가
	                        <a href="javascript:gotoMenu(1);" class="dth1 current">Menu</a>현재페이지 메뉴에 current 클래스 추가
							<ul class="depth2">
								<li><a href="javascript:gotoMenu(1);" class="dth2">버거</a></li>
								<li><a href="javascript:gotoMenu(14);" role="button">맥런치</a></li>
								<li><a href="javascript:gotoMenu(3);" class="dth2">맥모닝</a></li>
                           		<li><a href="javascript:gotoMenu(15);" role="button">해피 스낵</a></li>
                           		<li><a href="javascript:gotoMenu(7);" class="dth2">사이드 &amp; 디저트</a></li>
                           		<li><a href="javascript:gotoMenu(9);" class="dth2">맥카페 &amp; 음료</a></li>
                           		<li><a href="javascript:gotoMenu(5);" class="dth2">해피밀</a></li>
                          		<li><a href="javascript:gotoMenu(11);" class="dth2">365일 즐거운 혜택</a></li>
							</ul>
						</li>
						<li>
                        	<a href="/kor/store/main.do" class="dth1 ">Store</a>
                        	<ul class="depth2">
								<li><a href="/kor/store/main.do" class="dth2">매장찾기</a></li>
								<li><a href="/kor/store/mcdelivery.do" class="dth2">맥딜리버리</a></li>
								<li><a href="/kor/store/mcdrive.do" class="dth2">맥드라이브</a></li>
								<li><a href="/kor/store/rental.do" class="dth2">임차문의</a></li>
 							</ul>
						</li>
						<li>
                        	<a href="/kor/promotion/list.do" class="dth1  ">What’s New</a>
                        	<ul class="depth2">
                           		<li><a href="/kor/promotion/list.do" class="dth2">프로모션</a></li>
                           		<li><a href="/kor/news/list.do" class="dth2">새로운 소식</a></li>
                           		 li><a href="/kor/kitchen.do" class="dth2">주방공개의 날</a></li
                           		<li><a href="/kor/happymeal/list.do" class="dth2">이달의 해피밀</a></li> 
							</ul>
						</li>
						<li>
                        	<a href="/kor/story/main.do" class="dth1  ">Story</a>
                        	<ul class="depth2">
                           		<li><a href="/kor/story/intro/brandintro.do" class="dth2">브랜드 소개</a></li>
                           		<li><a href="/kor/story/society/list.do" class="dth2">사회적 책임과 지원</a></li>
                           		<li><a href="/kor/story/competition/farmToRestaurant.do" class="dth2">맥도날드 품질 이야기</a></li>
                           		<li><a href="/kor/story/people/crew.do" class="dth2">맥도날드 사람들</a></li>
                        	</ul>
						</li>
					</ul>
				</div>
				//menu
               <form id="commonSearchForm" method="post">
	               <div class="util">
						<a href="/kor/store/rental.do" class="renter" title="임차문의로 이동">임차문의</a>               
	                  	<a href="/kor/story/people/recruit.do" class="recruit" title="인재채용으로 이동">RECRUIT</a>
	                  	<a href="/eng/main.do" class="lang" title="영문사이트로 이동">ENG</a>
	                  	<div class="topSearch">검색 활성화인 경우 open 클래스 추가
	                     	<button type="button" class="srch">검색 열기</button>
	                     	<fieldset class="srchField">
	                        	<legend>통합검색</legend>
	                        	<div class="form">
	                           		<input type="text" name="commonSearchWord" id ="commonSearchWord" placeholder="매장 또는 메뉴정보를 검색하실 수 있습니다." title="검색어 입력" onkeypress="if( event.keyCode==13 ){gotoCommonSearch();}" >
	                           		<button type="button" class="btnMC btnM" onclick="gotoCommonSearch()">검색하기</button>
	                        	</div>
	                        	<button type="button" class="close">검색 닫기</button>
							</fieldset>
						</div>
					</div>
				</form>
				//util
			</nav>
		</div> -->
		<form id="gotoMenuForm" method="post">
			<input type="hidden" name="sub_category_seq" id="gotoform_sub_category_seq">
		</form>
<script>
	function gotoMenu(val){
		$("#gotoform_sub_category_seq").val(val);
		$("#gotoMenuForm").attr("action","list.do");
		$("#gotoMenuForm").submit();
	}
	function gotoCommonSearch(){
		if($.trim($("#commonSearchWord").val())==""){
			alert("검색어을 입력해 주세요");
			$("#commonSearchWord").focus();
		}else{
			$("#commonSearchForm").attr("action","/kor/search.do");
			$("#commonSearchForm").submit();
		}
	}
</script>

		</header>
		<!-- //header -->
		<div id="container">
			<div class="content">
            	<div class="visualArea bgMenu01">
               		<div class="inner">
	                  	<h1 class="titDep1">버거</h1>
	                  	<p class="subCopy">빅맥<sub class="reg">®</sub>에서 맥스파이시<sub class="reg">®</sub> 상하이버거까지, <br>주문 즉시 바로 조리해 더욱 맛있는, 맥도날드의 다양한 버거를 소개합니다.</p>
	                  	<ul class="navPath">
	                     	<li><a href="promotion.do">Home</a></li>
	                     	<li><a href="javascript:gotoMenu(1)">Menu</a></li>
	                     	<li><a href="javascript:gotoMenu(1)">버거</a></li>
	                  	</ul>
               		</div>
            	</div>
      
			<div class="contArea">
				<div class="inner">
					<div class="menuView">
						<div class="viewTop">
                        	<div class="name">
                           		<h2 class="ko"></h2>
                           		<em class="en"></em>
                        	</div>
							<div class="info" data-title="" data-desc="버거 메뉴">
								<div class="visual"><img src="" alt=""></div>
	 							<div class="desc"></div>
	                           
	                           
								<div class="other">
									<a href="javascript:goDetail(${val });" class="arrow prev">
										<span class="arr">이전 메뉴</span>
										<div class="img">
											<img src="" alt="">
										</div>
										<strong class="tit"></strong>
									</a>
	                              	<a href="javascript:goDetail(${val });" class="arrow next">
										<span class="arr">다음 메뉴</span>
										<div class="img">
											<img src="" alt="">
										</div>
										<strong class="tit"></strong>
									</a>
								</div>
							</div>
						</div>
						
						<div class="viewCon">
							<div class="toggle">
								<h4 class="tit">영양정보</h4>
								<button type="button" aria-selected="false" aria-controls="toggle02" aria-expanded="false">영양정보 보기</button>
								<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
								<div id="toggle02" class="toggleCon">
									<table class="tableType01 nutrDesc">
   										<caption>영양정보 - 영양소별 함량, 영양소기준치 정보표</caption>
                                 		<colgroup><col style="width:15%"><col></colgroup>
                                 		<thead>
	                                   		<tr>
	                                       		<th scope="row">영양소</th>
	                                       		<th scope="col">중량(g)</th>
	                                       		<th scope="col">중량(ml)</th>
	                                       		<th scope="col">열량</th>
	                                       		<th scope="col">당</th>
	                                       		<th scope="col">단백질</th>
	                                       		<th scope="col">포화지방</th>
	                                       		<th scope="col">나트륨</th>
	                                       		<th scope="col">카페인</th>
											 </tr>
										</thead>
										<tbody>
 											<tr>
												<c:forEach items="${ detailList }" var="dto">
		                                          	<th scope="row">함량</th>
		                                          	<td>${ dto.WEIGHT_G }</td>
		                                          	<td>${ dto.WEIGHT_ML }</td>
		                                          	<td>${ dto.KCAL }</td>
		                                          	<td>${ dto.SUGAR }</td>
		                                          	<td>${ dto.PROTEIN }</td>
		                                          	<td>${ dto.FAT }</td>
		                                          	<td>${ dto.NATRIUM }</td>
		                                          	<td>${ dto.CAFFEINE }</td>
 												</c:forEach>
                                    		</tr>
                                    		<tr>
                                       			<c:forEach items="${ detailStandardList }" var="dsl">
                                          			<th scope="row">함량</th>
                                          			<td>${ dsl.standg }</td>
                                          			<td>${ dsl.standml }</td>
                                          			<td>${ dsl.standkcal }</td>
                                          			<td>${ dsl.standsugar }</td>
                                          			<td>${ dsl.standprotein }</td>
                                          			<td>${ dsl.standfat }</td>
                                          			<td>${ dsl.standnatrium }</td>
                                          			<td>${ dsl.standcaffe }</td>
                                       			</c:forEach>
											</tr>
                                 		</tbody>
                              		</table>
                     			</div>
							</div>
                     
                        	<div class="toggle">
                           		<h4 class="tit">알레르기 정보</h4>
                           		<button type="button" aria-selected="false" aria-controls="toggle03" aria-expanded="false">알레르기 정보 보기</button><!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
                           		<div id="toggle03" class="toggleCon">
                              		<div class="allerDesc">
                                 		<p></p>
                              		</div>
                           		</div>
                        	</div>
                        
                     		<div class="toggle">
                           		<h4 class="tit">원산지 정보</h4>
                           		<button type="button" aria-selected="false" aria-controls="toggle04" aria-expanded="false">원산지 정보 보기</button>
                           		<div id="toggle04" class="toggleCon">
                              		<ul class="origin_info">
                                 	</ul>
                           		</div>
                        	</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //contArea -->
			<form   id="searchForm" method="post">
	            <input type="hidden" name="page" id="page" value="1">
	            <input type="hidden" name="seq" id="seq" >
	            <input type="hidden" name="sub_category_seq" id="sub_category_seq" value="1">
			</form>
<script>
	function goDetail(seq){
		$("#seq").val(seq);
		$("#searchForm").attr("action","detail.do");
		$("#searchForm").submit();
	} 
</script>

			</div>
			<div class="aside fixedB">
            	<a href="/kor/story/competition/farmToRestaurant.do" class="go_story" title="품질 이야기로 이동">품질 이야기</a>
            	<a href="https://www.mcdelivery.co.kr/kr/" class="goDelivery" target="_blank" title="새창 열림">Mcdelivery</a>
			</div>
			<button type="button" class="btnTop">맨 위로 가기</button>
		</div>
      	<!-- //container -->
      	<footer class="footer">
			<div class="footArea">
			<ul class="fUtil">
				<li class="privacy"><a href="/kor/etc/private.do">개인정보 처리방침</a></li>
               	<li><a href="/kor/etc/location.do">위치정보 이용약관</a></li><!-- 추가 -->
               	<li><a href="/kor/etc/sitemap.do">사이트맵</a></li>
               	<li><a href="/kor/store/rental.do">임차문의</a></li>
               	<li><a href="https://voc.mcd.co.kr/MC/HOM/faqMain.jsp" target="_blank" title="새창 열림">고객문의</a></li>
               	<!-- <li><a href="javascript:systemCheck('https://voc.mcd.co.kr/MC/HOM/faqMain.jsp')" title="새창 열림">고객문의</a></li> -->               
                <li><a href="/kor/story/people/recruit.do">인재채용</a></li> 
			</ul>
			<ul class="fSns">
				<li><a href="https://www.facebook.com/McDonaldsKorea" class="fb" target="_blank" title="새창 열림">맥도날드 페이스북</a></li>
               	<li><a href="https://www.instagram.com/mcdonalds_kr/" class="ig" target="_blank" title="새창 열림">맥도날드 인스타그램</a></li>
               	<li><a href="https://www.youtube.com/user/McDonaldsKor" class="yt" target="_blank" title="새창 열림">맥도날드 유투브</a></li>
               	<li><a href="https://story.kakao.com/ch/mcdonalds/feed" class="ks" target="_blank" title="새창 열림">맥도날드 카카오스토리</a></li>
               	<li class="web_accessibility">
					<a href="http://www.webwatch.or.kr/Situation/WA_Situation.html?MenuCD=110" class="web_accessibility" title="국가 공인 인증기관 : 웹와치" target="_blank">
						<img src="/kor/images/common/web_accessibility.png" alt="과학기술정보통신부 WA(WEB접근성) 품질인증 마크, 웹와치(WebWatch) 2022.1.6 ~ 2023.1.5" title="WA 품질인증 마크, 웹와치(WebWatch) 2022.1.6 ~ 2023.1.5"/>
					</a>
				</li> 
			</ul>
            <div class="fInfo">
				<ul class="info">
                  	<li>한국맥도날드(유)</li> 
                  	<li>대표이사: 김기원</li>
                  	<li>사업자등록번호: 101-81-26409</li>
                  	<li>전화주문: 1600-5252</li>
               	</ul>
               	<p class="copy">COPYRIGHT &copy; 2019 ALL RIGHTS RESERVED BY McDonald's.</p>
			</div>
		</div>   
	</footer>
	<!-- //footer -->
</div>
<!-- //wrapper -->
   
<script id="storeListPop" type="text/templet">
	<li>
		<span class="formWrap labelR">
			<input type="radio" name="store_info" id="ck_{a_scode}" data-a_loc_x="{a_loc_x}" data-a_loc_y="{a_loc_y}" data-a_scode="{a_scode}" data-a_company="{a_company}"  value="{a_scode}" onclick="showStorePopMaker(this)">
			<label for="ck_{a_scode}">{a_company}</label>   
		</span>
		<div class="addrArea">
			<p class="addr"><em class="hide">주소</em>{a_address_2}</p>
			<p class="phone"><em class="hide">연락처</em><span>{a_tel_1}</span><span>{a_tel_2}</span></p>
		</div>
	</li>
</script>

<script>
	if(("${val}" == "M010") || ("${val}" =="M011")|| ("${val}" =="M012")){
      	$("title").text("맥런치");
      	$(".visualArea").attr("class","visualArea bgMenu07");
      	$(".inner .titDep1").html("맥런치");
      	$(".inner .subCopy").html("오전 10시 30분부터 오후 2시까지 <br>점심만의 특별한 할인으로 맥런치 세트를 즐겨보세요!");
      	$(".inner .navPath li:last-of-type a").attr("href","javascript:gotoMenu(14);")
                                          		.html("맥런치");
      
      	$(".tabType01").append("<li data-title='맥런치' data-desc='맥런치' ><a href='javascript:gotoMenu(14);' role='button' aria-selected='true'>맥런치 세트<a></li>");
   	}
   	else if(("${val}" == "M013") || ("${val}" =="M014")|| ("${val}" =="M015")|| ("${val}" =="M016")|| ("${val}" =="M017")|| ("${val}" =="M018")){
      	$("title").text("맥모닝");
      	$(".visualArea").attr("class","visualArea bgMenu02");
      	$(".inner .titDep1").html("맥모닝");
      	$(".inner .subCopy").html("새벽 4시부터 오전 10시 30분까지<br> 갓 구워내 신선한 맥모닝으로 따뜻한 아침 식사를 챙겨 드세요!");
      	$(".inner .navPath li:last-of-type a").attr("href","javascript:gotoMenu(3);")
        	                                  .html("맥모닝");
      
      	$(".tabType01").append("<li data-title='맥모닝' data-desc='맥모닝메뉴' ><a href='javascript:gotoMenu(3);' role='button'>단품메뉴</a></li>")
        	          .append("<li><a href='javascript:gotoMenu(4);' role='button'>세트메뉴</a></li>");
      
   	}
   	else if(("${val}" == "M019") || ("${val}" =="M020")|| ("${val}" =="M021")){
      	$("title").text("해피 스낵");
      	$(".visualArea").attr("class","visualArea bgMenu08");
      	$(".inner .titDep1").html("해피 스낵");
      	$(".inner .subCopy").html("시즌 별 인기 스낵을 하루종일<br>할인 가격으로 만나보세요!");
      	$(".inner .navPath li:last-of-type a").attr("href","javascript:gotoMenu(15);")
      	                                    .html("해피 스낵");
      	
      	$(".tabType01").append("<li data-title='해피 스낵' data-desc='해피 스낵' ><a href='javascript:gotoMenu(15);' role='button' aria-selected='true'>해피 스낵<a></li>");
      	
   	}	
   	else if(("${val}" == "M022") || ("${val}" =="M023")|| ("${val}" =="M024")|| ("${val}" =="M025")){
      	$("title").text("사이드 & 디저트");
      	$(".visualArea").attr("class","visualArea bgMenu04");
      	$(".inner .titDep1").html("사이드 &amp; 디저트");
      	$(".inner .subCopy").html("가볍게 즐겨도, 버거와 함께 푸짐하게 즐겨도, <br>언제나 맛있는 사이드와 디저트 메뉴!");
      	$(".inner .navPath li:last-of-type a").attr("href","javascript:gotoMenu(7);")
        	                                  .html("사이드 &amp; 디저트");
      
      	$(".tabType01").append("<li data-title='사이드 &amp; 디저트' data-desc='사이드 & 디저트' ><a href='javascript:gotoMenu(7);' role='button'>사이트</a></li>")
        	          .append("<li><a href='javascript:gotoMenu(8);' role='button'>디저트</a></li>");
      
   	}
   	else if(("${val}" == "M026") || ("${val}" =="M027")|| ("${val}" =="M028")|| ("${val}" =="M029")|| ("${val}" =="M030")|| ("${val}" =="M031")){
      	$("title").text("맥카페 & 음료");
      	$(".visualArea").attr("class","visualArea bgMenu05");
      	$(".inner .titDep1").html("맥카페 &amp; 음료");
      	$(".inner .subCopy").html("언제나 즐겁게, 맥카페와 다양한 음료를 부담없이 즐기세요!");
      	$(".inner .navPath li:last-of-type a").attr("href","javascript:gotoMenu(9);")
        	                                  .html("맥카페 &amp; 음료");
      
      	$(".tabType01").append("<li data-title='맥카페 &amp; 음료' data-desc='맥카페 & 음료' ><a href='javascript:gotoMenu(9);' role='button'>맥카페</a></li>")
        	          .append("<li><a href='javascript:gotoMenu(10);' role='button'>음료</a></li>");
      
   	}
   	else if(("${val}" == "M032") || ("${val}" =="M033")|| ("${val}" =="M034")|| ("${val}" =="M035")|| ("${val}" =="M036")){
      	$("title").text("해피밀");
      	$(".visualArea").attr("class","visualArea bgMenu03");
      	$(".inner .titDep1").html("해피밀");
      	$(".inner .subCopy").html("맛과 즐거움 모두 해피밀을 통해 느껴보세요!");
      	$(".inner .navPath li:last-of-type a").attr("href","javascript:gotoMenu(5);")
        	                                  .html("해피밀");
      
     	$(".tabType01").append("<li data-title='해피밀' data-desc='해피밀메뉴' ><a href='javascript:gotoMenu(5);' role='button'>AM 04:00~AM 10:30</a></li>")
        				 .append("<li><a href='javascript:gotoMenu(6);' role='button'>AM 10:30~AM 04:00</a></li>");
   	}
</script>   


<script>
   
	if("${val}" == "M001"){
		$("title").html("맥크리스피™ 디럭스 버거");
      	$(".contArea .inner .menuView .viewTop .name .ko").append("맥크리스피™ 디럭스 버거");
      	$(".contArea .inner .menuView .viewTop .name .en").append("McCrispy™ Delux Burger");
      	$(".viewTop .info").attr("data-title","맥크리스피™ 디럭스 버거(버거)")
      	$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1653436847042.png")
      	$(".visual img").attr("alt","100% 통닭다리살 겉바속촉 케이준 치킨 패티, 촉촉한 포테이토 브리오쉬 번, 스페셜 스모키 소스가 선사하는 놀랍도록 새로운 맛의 치킨 버거!")
      	$(".info .desc").html("100% 통닭다리살 겉바속촉 케이준 치킨 패티, <br> 촉촉한 포테이토 브리오쉬 번, 스페셜 스모키 소스가 <br> 선사하는 놀랍도록 새로운 맛의 치킨 버거!<br><br> *판매 시간: 10:30AM~4AM")
      
      	$(".prev").css("display","none");
      	$(".next").attr("href","javascript:goDetail('M002')")
      	$(".next img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1653436578916.png");
      	$(".next img").attr("art","맥크리스피™ 클래식 버거");
      	$(".next .tit").append("맥크리스피™ 클래식 버거");
      
      	$(".allerDesc p").html("<b>알레르기 유발 가능 식재료</b> (난류,우유,대두,밀,토마토,닭고기,쇠고기) <br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>")
      
      	$(".origin_info").html("닭고기:브라질산");
	}else if("${val}" == "M002"){
		$("title").html("맥크리스피™ 클래식 버거");
		$(".contArea .inner .menuView .viewTop .name .ko").append("맥크리스피™ 클래식 버거");
		$(".contArea .inner .menuView .viewTop .name .en").append("McCrispy™ Delux Burger");
		$(".viewTop .info").attr("data-title","맥크리스피™ 클래식 버거(버거)")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1653436847042.png")
		$(".visual img").attr("alt","100% 통닭다리살 겉바속촉 케이준 치킨 패티, 촉촉한 포테이토 브리오쉬 번, 스페셜 스모키 소스가 선사하는 놀랍도록 새로운 맛의 치킨 버거!")
		$(".info .desc").html("100% 통닭다리살 겉바속촉 케이준 치킨 패티, <br> 촉촉한 포테이토 브리오쉬 번, 스페셜 스모키 소스가 <br> 선사하는 놀랍도록 새로운 맛의 치킨 버거!<br><br> *판매 시간: 10:30AM~4AM")
		
		$(".prev").attr("href","javascript:goDetail('M001')");
		$(".prev img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1653436578916.png");
		$(".prev img").attr("alt","맥크리스피™ 디럭스 버거");
		$(".prev .tit").append("맥크리스피™ 디럭스 버거");
		$(".next").attr("href","javascript:goDetail('M003')")
		$(".next img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1653436578916.png");
		$(".next img").attr("alt","맥크리스피™ 클래식 버거");
		$(".next .tit").append("맥크리스피™ 클래식 버거");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료</b> (난류,우유,대두,밀,토마토,닭고기,쇠고기) <br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>")
		
		$(".origin_info").html("닭고기:브라질산");
	}else if("${val}" == "M003"){
		$("title").html("빅맥®");
		$(".contArea .inner .menuView .viewTop .name .ko").append("빅맥<sub class=reg>®</sub>");
		$(".contArea .inner .menuView .viewTop .name .en").append("Big Mac<sub class=reg>®</sub>");
		$(".viewTop .info").attr("data-title","빅맥®(버거)");
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1583727855319.png");
		$(".visual img").attr("alt","빅맥®");
		$(".info .desc").html("100% 순 쇠고기 패티 두 장에 빅맥<sub class=reg>®</sub>만의  특별한 소스.</br>입안에서 살살 녹는 치즈와 신선한 양상추, 양파, 그리고 피클까지.</br>50년 넘게 전 세계인의 입맛을 사로 잡은 버거의 대명사.<br><br>	*판매 시간: 10:30AM~4AM");
		
		$(".prev").attr("href","javascript:goDetail('M002')");
		$(".prev img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1653436578916.png");
		$(".prev img").attr("art","맥크리스피™ 클래식 버거");
		$(".prev .tit").append("맥크리스피™ 클래식 버거");
		$(".next").attr("href","javascript:goDetail('M004')");
		$(".next img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1583728346366.png");
		$(".next img").attr("art","맥스파이시® 상하이 버거");
		$(".next .tit").append("맥스파이시<sub class=reg>®</sub> 상하이 버거");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료</b> (난류,우유,대두,밀,쇠고기) <br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
		
		$(".origin_info").html("쇠고기:호주산");
	}else if("${ val }" == "M004"){
		$("title").html("맥스파이시® 상하이 버거");
		$(".contArea .inner .menuView .viewTop .name .ko").append("맥스파이시<sub class=reg>®</sub> 상하이 버거");
		$(".contArea .inner .menuView .viewTop .name .en").append("McSpicy<sub class=reg>®</sub> Shanghai Burger");
		$(".viewTop .info").attr("data-title","맥스파이시® 상하이 버거(버거)");
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1583728352960.png");
		$(".visual img").attr("alt","맥스파이시® 상하이 버거");
		$(".info .desc").html("매콤한 시즈닝을 입힌 100% 닭가슴 통살 위에<br>아삭아삭한 양상추와 신선한 토마토~<br>겉은 바삭, 속은 부드러운 치킨 패티의 매콤함으로<br>입맛도 기분도 화끈하게!<br><br>*판매 시간: 10:30AM~4AM");
		
		$(".prev").attr("href","javascript:goDetail('M003')");
		$(".prev img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1583727848735.png");
		$(".prev img").attr("art","빅맥®");
		$(".prev .tit").append("빅맥<sub class=reg>®</sub>");
		$(".next").attr("href","javascript:goDetail('M005')");
		$(".next img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1583727169054.png");
		$(".next img").attr("art","1955® 버거");
		$(".next .tit").append("1955<sub>®</sub> 버거");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료</b> (난류,대두,밀,토마토,닭고기) <br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
		
		$(".origin_info").html("닭고기:국내산");
	}else if("${ val }" == "M005"){
		$("title").html("1955 버거™");
		$(".contArea .inner .menuView .viewTop .name .ko").append("1955<sub>®</sub> 버거");
		$(".contArea .inner .menuView .viewTop .name .en").append("1955<sub>®</sub> Burger");
		$(".viewTop .info").attr("data-title","1955® 버거(버거)");
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1599119647587.png");
		$(".visual img").attr("alt","1955 버거™");
		$(".info .desc").html("113g 두툼한 순 쇠고기 패티,<br>특별한 1955 소스에 깊은 풍미의 그릴드 어니언까지!<br>맥도날드가 처음 생긴 1955년의 맛을 담은<br>영원한 오리지널 1955 버거<br></br>*판매 시간: 10:30AM~4AM");
		
		$(".prev").attr("href","javascript:goDetail('M004')");
		$(".prev img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1583728346366.png");
		$(".prev img").attr("art","맥스파이시® 상하이 버거");
		$(".prev .tit").append("맥스파이시<sub class=reg>®</sub> 상하이 버거");
		$(".next").attr("href","javascript:goDetail('M006')");
		$(".next img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1617176326415.png");
		$(".next img").attr("art","더블 필레오피쉬");
		$(".next .tit").append("더블 필레오피쉬");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료</b> (난류,우유,대두,밀,돼지고기,토마토,쇠고기) <br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
		
		$(".origin_info").html("쇠고기:호주산<br>돼지고기(베이컨):외국산(아일랜드,스페인,캐나다)");
	}else if("${ val }" == "M006"){
		$("title").html("더블 필레오피쉬");
		$(".contArea .inner .menuView .viewTop .name .ko").append("더블 필레오피쉬");
		$(".contArea .inner .menuView .viewTop .name .en").append("Double Filet-O-Fish");
		$(".viewTop .info").attr("data-title","더블 필레오피쉬(버거)");
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1617184718172.png");
		$(".visual img").attr("alt","100% 알래스카 폴락 신제품 더블 필레오피쉬");
		$(".info .desc").html("100% 알래스카 폴락 패티의 바삭함, <br>맥도날드의 타르타르소스와 부드러운 스팀번이<br> 조화로운 더블 필레 오 피쉬 <br> <br>*판매 시간: 10:30AM~4AM");
		
		$(".prev").attr("href","javascript:goDetail('M005')");
		$(".prev img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1583727169054.png");
		$(".prev img").attr("art","1955® 버거");
		$(".prev .tit").append("1955<sub>®</sub> 버거");
		$(".next").css("display","none");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료</b> (난류,우유,대두,밀) <br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
		
		$(".origin_info").html("명태살필렛75%:태국산");
	}else if("${ val }" == "M007"){
		$("title").html("맥크리스피™ 디럭스 버거 세트");
		$(".contArea .inner .menuView .viewTop .name .ko").append("맥크리스피™ 디럭스 버거 세트");
		$(".contArea .inner .menuView .viewTop .name .en").append("McCrispy™ Delux Burger Meal");
		$(".viewTop .info").attr("data-title","맥크리스피™ 디럭스 버거 세트(버거)");
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1653437194655.png");
		$(".visual img").attr("alt","100% 통닭다리살 겉바속촉 케이준 치킨 패티, 촉촉한 포테이토 브리오쉬 번, 스페셜 스모키 소스가 선사하는 놀랍도록 새로운 맛의 치킨 버거!");
		$(".info .desc").html("100% 통닭다리살 겉바속촉 케이준 치킨 패티, <br> 촉촉한 포테이토 브리오쉬 번, 스페셜 스모키 소스가 <br> 선사하는 놀랍도록 새로운 맛의 치킨 버거!<br><br> *판매 시간: 10:30AM~4AM");
		
		$(".prev").css("display","none");
		$(".next").attr("href","javascript:goDetail('M008')");
		$(".next img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1653437047097.png");
		$(".next img").attr("art","맥크리스피™ 클래식 버거 세트");
		$(".next .tit").append("맥크리스피™ 클래식 버거 세트");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료</b> (난류,우유,대두,밀,토마토,닭고기,쇠고기`) <br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
		
		$(".origin_info").html("닭고기:브라질산");
	}else if("${ val }" == "M008"){
		$("title").html("맥크리스피™ 클래식 버거 세트");
		$(".contArea .inner .menuView .viewTop .name .ko").append("맥크리스피™ 클래식 버거 세트");
		$(".contArea .inner .menuView .viewTop .name .en").append("McCrispy™ Classic Burger Meal");
		$(".viewTop .info").attr("data-title","맥크리스피™ 클래식 버거 세트(버거)");
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1653437059493.png");
		$(".visual img").attr("alt","맥크리스피™ 클래식 버거 세트_감자튀김과 콜라 M사이즈 포함");
		$(".info .desc").html("100% 통닭다리살 겉바속촉 케이준 치킨 패티! <br> 치킨 버거 본연의 맛에 충실한 클래식 버거 <br><br>*판매 시간: 10:30AM~4AM");
		
		$(".prev").attr("href","javascript:goDetail('M007')");
		$(".prev img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1583728346366.png");
		$(".prev img").attr("art","맥크리스피™ 디럭스 버거 세트");
		$(".prev .tit").append("맥크리스피™ 디럭스 버거 세트");
		$(".next").attr("href","javascript:goDetail('M009')");
		$(".next img").attr("src","");
		$(".next img").attr("art","레고랜드® 투게더팩");
		$(".next .tit").append("레고랜드<sub class=reg>®</sub> 투게더팩");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료</b> (난류,우유,대두,밀,돼지고기,토마토,쇠고기) <br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
		
		$(".origin_info").html("쇠고기:호주산<br>돼지고기(베이컨):외국산(아일랜드,스페인,캐나다)");
	}else if("${ val }" == "M009"){
		$("title").html("레고랜드® 투게더팩");
		$(".contArea .inner .menuView .viewTop .name .ko").append("레고랜드® 투게더팩");
		$(".contArea .inner .menuView .viewTop .name .en").append("LEGOLAND® Together Pack");
		$(".viewTop .info").attr("data-title","레고랜드® 투게더팩(버거)");
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1651050521096.png");
		$(".visual img").attr("alt","레고랜드® 투게더팩");
		$(".info .desc").html("레고랜드 <br> 투게더팩 <br><br>*판매 시간: 10:30AM~4AM");
		
		$(".prev").attr("href","javascript:goDetail('M008')");
		$(".prev img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1653437047097.png");
		$(".prev img").attr("art","맥크리스피™ 클래식 버거 세트");
		$(".prev .tit").append("맥크리스피™ 클래식 버거 세트");
		$(".next").css("display","none");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료</b> (난류,우유,대두,밀,돼지고기,토마토,쇠고기) <br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
		
		$(".origin_info").html("쇠고기:호주산<br>돼지고기(베이컨):외국산(아일랜드,스페인,캐나다)");
	}else if("${ val }" == "M010"){
		$("title").html("맥크리스피™ 디럭스 버거 세트");
		$(".contArea .inner .menuView .viewTop .name .ko").append("맥크리스피™ 디럭스 버거 세트");
		$(".contArea .inner .menuView .viewTop .name .en").append("McCrispy™ Delux Burger Meal");
		$(".viewTop .info").attr("data-title","맥크리스피™ 디럭스 버거 세트(버거)");
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1653437194655.png");
		$(".visual img").attr("alt","100% 통닭다리살 겉바속촉 케이준 치킨 패티, 촉촉한 포테이토 브리오쉬 번, 스페셜 스모키 소스가 선사하는 놀랍도록 새로운 맛의 치킨 버거!");
		$(".info .desc").html("100% 통닭다리살 겉바속촉 케이준 치킨 패티, <br> 촉촉한 포테이토 브리오쉬 번, 스페셜 스모키 소스가 <br> 선사하는 놀랍도록 새로운 맛의 치킨 버거!<br><br> 점심만의 특별한 할인으로 즐길 수 있는 [맥런치 세트]를 만나보세요<br>	* 맥런치 판매시간 : 오전 10시 30분부터 오후 2시까지<br>* 맥런치 할인은 매장 방문에 한함");
		
		$(".prev").css("display","none");
		$(".next").attr("href","javascript:goDetail('M011')");
		$(".next img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1653437557666.png");
		$(".next img").attr("art","맥크리스피™ 클래식 버거 세트");
		$(".next .tit").append("맥크리스피™ 클래식 버거 세트");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료</b> (난류,우유,대두,밀,토마토,닭고기,쇠고기`) <br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
		
		$(".origin_info").html("닭고기:브라질산");
	}else if("${ val }" == "M011"){
		$("title").html("맥크리스피™ 클래식 버거 세트");
		$(".contArea .inner .menuView .viewTop .name .ko").append("맥크리스피™ 클래식 버거 세트");
		$(".contArea .inner .menuView .viewTop .name .en").append("McCrispy™ Classic Burger Meal");
		$(".viewTop .info").attr("data-title","맥크리스피™ 클래식 버거 세트(버거)");
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1653437059493.png");
		$(".visual img").attr("alt","맥크리스피™ 클래식 버거 세트_감자튀김과 콜라 M사이즈 포함");
		$(".info .desc").html("100% 통닭다리살 겉바속촉 케이준 치킨 패티! <br> 치킨 버거 본연의 맛에 충실한 클래식 버거 <br><br> 점심만의 특별한 할인으로 즐길 수 있는 [맥런치 세트]를 만나보세요<br>	* 맥런치 판매시간 : 오전 10시 30분부터 오후 2시까지<br>* 맥런치 할인은 매장 방문에 한함");
		
		$(".prev").attr("href","javascript:goDetail('M010')");
		$(".prev img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1653438180854.png");
		$(".prev img").attr("art","맥크리스피™ 디럭스 버거 세트");
		$(".prev .tit").append("맥크리스피™ 디럭스 버거 세트");
		$(".next").attr("href","javascript:goDetail('M011')");
		$(".next img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1614148652215.png");
		$(".next img").attr("art","빅맥® 세트");
		$(".next .tit").append("빅맥<sub class=reg>®</sub> 세트");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료</b> (난류,우유,대두,밀,돼지고기,토마토,쇠고기) <br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
		
		$(".origin_info").html("쇠고기:호주산<br>돼지고기(베이컨):외국산(아일랜드,스페인,캐나다)");
	}else if("${val}" == "M012"){ 
		$("title").html("빅맥® 세트");
		$(".contArea .inner .menuView .viewTop .name .ko").append("빅맥® 세트");
		$(".contArea .inner .menuView .viewTop .name .en").append("Big Mac®<br> Meal");
		$(".viewTop .info").attr("data-title","빅맥® 세트(버거)")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1631113400879.png");
		$(".visual img").attr("alt","맥런치 빅맥® 세트_감자튀김과 콜라M사이즈 포함");
		$(".info .desc").html("100% 순 쇠고기 패티 두 장에 빅맥<sub class=reg>®</sub>만의  특별한 소스.</br>입안에서 살살 녹는 치즈와 신선한 양상추, 양파, 그리고 피클까지.</br>50년 넘게 전 세계인의 입맛을 사로 잡은 버거의 대명사.<br><br>점심만의 특별한 할인으로 즐길 수 있는 [맥런치™ 세트]를 만나보세요<br><br>* 맥런치 판매시간 : 오전 10시 30분부터 오후 2시까지<br>* 맥런치 할인은 매장 방문에 한함");
		
		$(".prev").attr("href","javascript:goDetail('M011')");
		$(".prev img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1653437047097.png");
		$(".prev img").attr("alt","맥크리스피™ 클래식 버거 세트");
		$(".prev .tit").append("맥크리스피™ 클래식 버거 세트");
		$(".next").css("display","none");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료</b> (난류,우유,대두,밀,쇠고기) <br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>")
		
		$(".origin_info").html("쇠고기:호주산");
	}else if("${val}" == "M032"){ //뒤부터 작업 부분
		$("title").html("에그 맥머핀");
		$(".contArea .inner .menuView .viewTop .name .ko").append("에그 맥머핀");
		$(".contArea .inner .menuView .viewTop .name .en").append("Egg McMuffin");
		$(".viewTop .info").attr("data-title","에그 맥머핀")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/uploadFolder/product/prov_201901290308474630.png")
		$(".visual img").attr("alt","캐나디안 스타일 베이컨과 계란의 클래식한 만남")
		$(".info .desc").html(" 캐나디안 스타일 베이컨과 계란의 클래식한 만남<br> 맥도날드의 아침을 탄생하게 한 바로 그 메뉴.<br><br>*판매 시간: 4AM~10:30AM")
		
		$(".prev").css("display","none");
		$(".next").attr("href","javascript:goDetail('M033')")
		$(".next img").attr("src","https://www.mcdonalds.co.kr/uploadFolder/prothum/Bacon_Egg_McMuffinTM01.png");
		$(".next img").attr("art","베이컨 에그 맥머핀");
		$(".next .tit").append("베이컨 에그 맥머핀");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료</b> (우유,대두,밀) <br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>")
		
		$(".origin_info").html("돼지고기(베이컨):외국산(아일랜드,스페인,캐나다)");
	}else if("${val}" == "M033"){ 
		$("title").html("베이컨 에그 맥머핀");
		$(".contArea .inner .menuView .viewTop .name .ko").append("베이컨 에그 맥머핀");
		$(".contArea .inner .menuView .viewTop .name .en").append("Bacon Egg McMuffin");
		$(".viewTop .info").attr("data-title","베이컨 에그 맥머핀")
		$(".visual img").attr("src","   https://www.mcdonalds.co.kr/uploadFolder/product/prov_201901290309065310.png")
		$(".visual img").attr("alt","베이컨 에그 맥머핀")
		$(".info .desc").html(" 부드러운 계란, 바삭바삭한 베이컨과 고소한 치즈가<br> 갓 구워진 따뜻한 맥머핀<br><br>*판매 시간: 4AM~10:30AM")
		
		$(".prev").attr("href","javascript:goDetail('M032')");
		$(".prev img").attr("src","   https://www.mcdonalds.co.kr/uploadFolder/prothum/Egg_McMuffinTM01.png");
		$(".prev img").attr("alt","에그 맥머핀");
		$(".prev .tit").append("에그 맥머핀");
		$(".next").attr("href","javascript:goDetail('M034')")
		$(".next img").attr("src","https://www.mcdonalds.co.kr/uploadFolder/prothum/Hotcakes_2pc01.png");
		$(".next img").attr("alt","핫케익 2조각");
		$(".next .tit").append("핫케익 2조각");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료</b> (난류,우유,대두,밀,토마토,닭고기,쇠고기) <br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>")
		
		$(".origin_info").html("-");
	}else if("${val}" == "M034"){ 
		$("title").html("핫케익 2조각");
		$(".contArea .inner .menuView .viewTop .name .ko").append("핫케익 2조각");
		$(".contArea .inner .menuView .viewTop .name .en").append("Hotcakes 2pcs");
		$(".viewTop .info").attr("data-title","핫케익 2조각")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/uploadFolder/product/prov_201902111059484930.png")
		$(".visual img").attr("alt","핫케익 2조각")
		$(".info .desc").html(" 부드럽게 구워낸 핫케이크에<br>향긋한 버터와 달콤한 시럽을 살며시 부어 <br>오늘 하루도 기분 좋게 시작하세요.<br><br>*판매 시간: 4AM~10:30AM")
		
		$(".prev").attr("href","javascript:goDetail('M033')");
		$(".prev img").attr("src","   https://www.mcdonalds.co.kr/uploadFolder/prothum/Sausage_Egg_McMuffinTM01.png");
		$(".prev img").attr("alt","소시지 에그 맥머핀");
		$(".prev .tit").append("소시지 에그 맥머핀");
		$(".next").css("display","none");
		
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료</b> (난류,우유,대두,밀,토마토,닭고기,쇠고기) <br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>")
		
		$(".origin_info").html("-");
	}else if("${val}" == "M035"){ 
		$("title").html("생수");
		$(".contArea .inner .menuView .viewTop .name .ko").append("생수");
		$(".contArea .inner .menuView .viewTop .name .en").append("Mineral Water");
		$(".viewTop .info").attr("data-title","생수")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/uploadFolder/product/prov_201901290258201760.png")
		$(".visual img").attr("alt","생수")
		$(".info .desc").html(" 활력을 되찾아주는 깔끔한 미네랄 생수. ")
		
		$(".prev").css("display","none");
		$(".next").attr("href","javascript:goDetail('M036')")
		$(".next img").attr("src","   https://www.mcdonalds.co.kr/upload/product/pcthum/1583728276558.png");
		$(".next img").attr("alt","불고기버거");
		$(".next .tit").append("불고기버거");
	}else if("${val}" == "M036"){ 
		$("title").html("불고기 버거");
		$(".contArea .inner .menuView .viewTop .name .ko").append("불고기 버거");
		$(".contArea .inner .menuView .viewTop .name .en").append("Bulgogi Burger");
		$(".viewTop .info").attr("data-title","불고기 버거")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1583727805044.png")
		$(".visual img").attr("alt","불고기 버거")
		$(".info .desc").html(" 한국인의 입맛에 딱 맞는 불고기 소스에 잘 재운 패티와<br>고소한 마요네즈, 신선한 양상추의 맛있는 조합.<br><br>*판매 시간: 4AM~10:30AM")
		
		$(".prev").attr("href","javascript:goDetail('M035')");
		$(".prev img").attr("src","   https://www.mcdonalds.co.kr/uploadFolder/prothum/Mineral_Water01.png");
		$(".prev img").attr("alt","생수");
		$(".prev .tit").append("생수");
		$(".next").css("display","none");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료</b> (난류,우유,대두,밀,토마토,닭고기,쇠고기) <br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>")
		
		$(".origin_info").html("돼지고기:국내산  <br>*제주 지역의 경우, 함박패티:덴마크산으로 제공");
	}else if("${val}" == "M026"){ //맥카페
		$("title").html("아이스크림 라떼");
		$(".contArea .inner .menuView .viewTop .name .ko").append("아이스크림 라떼");
		$(".contArea .inner .menuView .viewTop .name .en").append("Ice Cream Latte");
		$(".viewTop .info").attr("data-title","아이스크림 라떼")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1655284683488.png")
		$(".visual img").attr("alt","아이스크림 라떼")
		$(".info .desc").html(" 입안 가득 달콤한 아이스크림과 바로 내린 100% 친환경 커피 & 신선한 우유를 담은 진한 라떼의 만남!")
		
		$(".prev").css("display","none");
		$(".next").attr("href","javascript:goDetail('M027')")
		$(".next img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1655284881171.png");
		$(".next img").attr("alt","디카페인 아이스 바닐라 라떼");
		$(".next .tit").append("디카페인 아이스 바닐라 라떼");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료</b> (난류,우유,대두,밀,토마토,닭고기,쇠고기) <br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>")
	}else if("${val}" == "M027"){ 
		$("title").html("디카페인 아이스 바닐라 라떼");
		$(".contArea .inner .menuView .viewTop .name .ko").append("디카페인 아이스 바닐라 라떼");
		$(".contArea .inner .menuView .viewTop .name .en").append("Decaffeine Iced Vanilla Latte");
		$(".viewTop .info").attr("data-title","디카페인 아이스 바닐라 라떼")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1655284890900.png")
		$(".visual img").attr("alt","디카페인 아이스 바닐라 라떼")
		$(".info .desc").html("바로 내린 100% 친환경 커피의 진한 맛과 향,<br>1A등급 우유, 그리고 천연 바닐라 향으로 달콤함까지!<br>이제 디카페인으로도 즐겨보세요! ")
		
		$(".prev").attr("href","javascript:goDetail('M026')");
		$(".prev img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1655284679265.png");
		$(".prev img").attr("alt","아이스크림 라떼");
		$(".prev .tit").append("아이스크림 라떼");
		$(".next").attr("href","javascript:goDetail('M028')")
		$(".next img").attr("src","   https://www.mcdonalds.co.kr/upload/product/pcthum/1610888584502.png");
		$(".next img").attr("alt","에스프레소");
		$(".next .tit").append("에스프레소");
		
		
	}else if("${val}" == "M028"){ 
		$("title").html("에스프레소");
		$(".contArea .inner .menuView .viewTop .name .ko").append("에스프레소");
		$(".contArea .inner .menuView .viewTop .name .en").append("Espresso");
		$(".viewTop .info").attr("data-title","에스프레소")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1610888594337.png")
		$(".visual img").attr("alt","에스프레소")
		$(".info .desc").html("바로 내린 100% 친환경 에스프레소 ")
		
		$(".prev").attr("href","javascript:goDetail('M027')");
		$(".prev img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1655284881171.png");
		$(".prev img").attr("alt","디카페인 아이스 바닐라 라떼");
		$(".prev .tit").append("디카페인 아이스 바닐라 라떼");
		$(".next").css("display","none");
		
	}else if("${val}" == "M029"){ //음료
		$("title").html("바닐라 쉐이크 Medium");
		$(".contArea .inner .menuView .viewTop .name .ko").append("바닐라 쉐이크 Medium");
		$(".contArea .inner .menuView .viewTop .name .en").append("Vanilla Shake Medium");
		$(".viewTop .info").attr("data-title","바닐라 쉐이크 Medium")
		$(".visual img").attr("src","   https://www.mcdonalds.co.kr/uploadFolder/product/prov_201901290255488970.png")
		$(".visual img").attr("alt","바닐라 쉐이크 Medium")
		$(".info .desc").html(" 신선한 우유에 달콤한 바닐라 시럽으로 맛을 더한<br>깔끔한 쉐이크!")
		
		$(".prev").css("display","none");
		$(".next").attr("href","javascript:goDetail('M030')")
		$(".next img").attr("src","https://www.mcdonalds.co.kr/uploadFolder/prothum/Strawberry_Shake_Medium01.png");
		$(".next img").attr("alt","딸기 쉐이크 Medium");
		$(".next .tit").append("딸기 쉐이크 Medium");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료 (우유)<br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
		
	}else if("${val}" == "M030"){ 
		$("title").html("딸기 쉐이크 Medium");
		$(".contArea .inner .menuView .viewTop .name .ko").append("딸기 쉐이크 Medium");
		$(".contArea .inner .menuView .viewTop .name .en").append("Strawberry Shake Medium");
		$(".viewTop .info").attr("data-title","딸기 쉐이크 Medium")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/uploadFolder/product/prov_201901290257347040.png")
		$(".visual img").attr("alt","딸기 쉐이크 Medium")
		$(".info .desc").html("신선한 우유에 상큼한 딸기 시럽으로 맛을 더한<br>부드러운 쉐이크! ")
		
		$(".prev").attr("href","javascript:goDetail('M029')");
		$(".prev img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1563522039552.png");
		$(".prev img").attr("alt","바닐라 쉐이크 Medium");
		$(".prev .tit").append("바닐라 쉐이크 Medium");
		$(".next").attr("href","javascript:goDetail('M031')")
		$(".next img").attr("src","   https://www.mcdonalds.co.kr/upload/product/pcthum/1641520283353.png");
		$(".next img").attr("alt","오렌지 주스");
		$(".next .tit").append("오렌지 주스");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료 (우유)<br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
	}else if("${val}" == "M031"){ 
		$("title").html("오렌지 주스");
		$(".contArea .inner .menuView .viewTop .name .ko").append("오렌지 주스");
		$(".contArea .inner .menuView .viewTop .name .en").append("Orange Juice");
		$(".viewTop .info").attr("data-title","오렌지 주스")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1641520287213.png")
		$(".visual img").attr("alt","오렌지 주스")
		$(".info .desc").html("비타민 C를 함유한 4년 연속 세계 판매 1위 100% 오렌지 주스.")
		
		$(".prev").attr("href","javascript:goDetail('M030')");
		$(".prev img").attr("src","   https://www.mcdonalds.co.kr/uploadFolder/prothum/Strawberry_Shake_Medium01.png");
		$(".prev img").attr("alt","딸기 쉐이크 Medium");
		$(".prev .tit").append("딸기 쉐이크 Medium");
		$(".next").css("display","none");
		
	}else if("${val}" == "M022"){ //사이드
		$("title").html("맥윙™콤보");
		$(".contArea .inner .menuView .viewTop .name .ko").append("맥윙™콤보");
		$(".contArea .inner .menuView .viewTop .name .en").append("McWings™combo");
		$(".viewTop .info").attr("data-title","맥윙™콤보")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1619158591817.png")
		$(".visual img").attr("alt","맥윙™콤보떼")
		$(".info .desc").html(" 겉은 바삭! 속은 쫄~깃한 치킨 윙!<br>그리고 시원한 탄산음료!")
		
		$(".prev").css("display","none");
		$(".next").attr("href","javascript:goDetail('M023')")
		$(".next img").attr("src","https://www.mcdonalds.co.kr/uploadFolder/prothum/Shanghai_Chicken_Snack_Wrap01.png");
		$(".next img").attr("alt","상하이 치킨 스낵랩");
		$(".next .tit").append("상하이 치킨 스낵랩");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료 (난류,대두,밀,닭고기)</b> <b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>")
		$(".origin_info").html("닭고기:태국산");
	}else if("${val}" == "M023"){ 
		$("title").html("상하이 치킨 스낵랩");
		$(".contArea .inner .menuView .viewTop .name .ko").append("상하이 치킨 스낵랩");
		$(".contArea .inner .menuView .viewTop .name .en").append("Shanghai Chicken Snack Wrap");
		$(".viewTop .info").attr("data-title","상하이 치킨 스낵랩")
		$(".visual img").attr("src","   https://www.mcdonalds.co.kr/uploadFolder/product/prov_201902080435011620.png");
		$(".visual img").attr("alt","상하이 치킨 스낵랩")
		$(".info .desc").html("매콤한 치킨에 달콤한 화이트 마요 소스로 매콤달콤하게!<br>베이컨에 양상추, 또띠아까지 어우러져<br>씹는 맛까지 즐겁다!");
		
		$(".prev").attr("href","javascript:goDetail('M022')");
		$(".prev img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1619158584358.png");
		$(".prev img").attr("alt","맥윙™콤보");
		$(".prev .tit").append("맥윙™콤보");
		$(".next").css("display","none");
		
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료 (난류,대두,밀,돼지고기,닭고기)<br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
		$(".origin_info").html("닭고기:국내산<br>돼지고기(베이컨):외국산(아일랜드,스페인,캐나다)");
	}else if("${val}" == "M024"){ //디저트
		$("title").html("허쉬 프레첼 맥플러리");
		$(".contArea .inner .menuView .viewTop .name .ko").append("허쉬 프레첼 맥플러리");
		$(".contArea .inner .menuView .viewTop .name .en").append("Hershey’s Pretzel McFlurry");
		$(".viewTop .info").attr("data-title","허쉬 프레첼 맥플러리")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1651050759094.png")
		$(".visual img").attr("alt","허쉬 프레첼 맥플러리")
		$(".info .desc").html("진한 초콜릿과 함께! 달콤바삭하게!<br>맥도날드 X 허쉬 콜라보레이션 맥플러리")
		
		$(".prev").css("display","none");
		$(".next").attr("href","javascript:goDetail('M025')")
		$(".next img").attr("src","https://www.mcdonalds.co.kr/uploadFolder/prothum/Oreo_Affogato01.png");
		$(".next img").attr("alt","오레오 아포가토");
		$(".next .tit").append("오레오 아포가토");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료 (우유,대두,밀)</b> <b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>")
	}else if("${val}" == "M025"){ 
		$("title").html("오레오 아포가토");
		$(".contArea .inner .menuView .viewTop .name .ko").append("오레오 아포가토");
		$(".contArea .inner .menuView .viewTop .name .en").append("Oreo Affogato");
		$(".viewTop .info").attr("data-title","오레오 아포가토")
		$(".visual img").attr("src","      https://www.mcdonalds.co.kr/uploadFolder/product/prov_201901290249059690.png");
		$(".visual img").attr("alt","오레오 아포가토")
		$(".info .desc").html("진한 에스프레소에 바닐라 아이스크림으로<br>달콤 쌉쌀하게, 오레오 쿠키로 바삭함까지!");
		
		$(".prev").attr("href","javascript:goDetail('M024')");
		$(".prev img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1651050755083.png");
		$(".prev img").attr("alt","허쉬 프레첼 맥플러리");
		$(".prev .tit").append("허쉬 프레첼 맥플러리");
		$(".next").css("display","none");
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료 (우유,대두,밀)<br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
	}else if("${val}" == "M019"){ //해피스낵
		$("title").html("체리 맥피즈 코카-콜라");
		$(".contArea .inner .menuView .viewTop .name .ko").append("체리 맥피즈 코카-콜라");
		$(".contArea .inner .menuView .viewTop .name .en").append("Cherry McFizz with Coca-Cola");
		$(".viewTop .info").attr("data-title","체리 맥피즈 코카-콜라")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1652862175116.png");
		$(".visual img").attr("alt","체리 맥피즈 코카-콜라")
		$(".info .desc").html(" 짜릿한 탄산과 상큼한 체리의 만남!<br>인기 스낵을 하루 종일 할인하는 해피 스낵으로 만나보세요!");
		
		$(".prev").css("display","none");
		$(".next").attr("href","javascript:goDetail('M020')")
		$(".next img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1651228176707.png");
		$(".next img").attr("alt","소시지 스낵랩");
		$(".next .tit").append("소시지 스낵랩");
		
	}else if("${val}" == "M020"){ 
		$("title").html("소시지 스낵랩");
		$(".contArea .inner .menuView .viewTop .name .ko").append("소시지 스낵랩");
		$(".contArea .inner .menuView .viewTop .name .en").append("Sausage Snack Wrap");
		$(".viewTop .info").attr("data-title","소시지 스낵랩")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1651228176707.png")
		$(".visual img").attr("alt","소시지 스낵랩")
		$(".info .desc").html("육즙 가득 소시지와 스모키 베이컨 소스로 더 맛있게!<br>베이컨에 양상추, 또띠아까지 어우러져 씹는 맛까지 즐겁게!<br>인기 스낵을 하루 종일 할인하는 해피 스낵으로 만나보세요! ");
		
		$(".prev").attr("href","javascript:goDetail('M019')");
		$(".prev img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1651228176707.png");
		$(".prev img").attr("alt","체리 맥피즈 코카-콜라");
		$(".prev .tit").append("체리 맥피즈 코카-콜라");
		$(".next").attr("href","javascript:goDetail('M021')")
		$(".next img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1651228176707.png");
		$(".next img").attr("alt","에그 불고기 버거");
		$(".next .tit").append("에그 불고기 버거");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료 (난류,대두,밀,돼지고기,쇠고기)<br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
		$(".origin_info").html("돼지고기(소시지):국내산과 미국산 섞음");
	}else if("${val}" == "M021"){ 
		$("title").html("에그 불고기 버거");
		$(".contArea .inner .menuView .viewTop .name .ko").append("에그 불고기 버거");
		$(".contArea .inner .menuView .viewTop .name .en").append("Egg Bulgogi Burger");
		$(".viewTop .info").attr("data-title","에그 불고기 버거")
		$(".visual img").attr("src","   https://www.mcdonalds.co.kr/upload/product/pcfile/1652859867381.png")
		$(".visual img").attr("alt","에그 불고기 버거")
		$(".info .desc").html("불고기 버거에 국내산 1+등급 계란을 더해 맛의 정점을 찍다! <br>인기 스낵을 하루 종일 할인하는 해피 스낵으로 만나보세요!<br>* 해피 스낵 할인은 매장 방문에 한함<br>* 판매 시간: 10:30AM~4AM")
		
		$(".prev").attr("href","javascript:goDetail('M020')");
		$(".prev img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1651228176707.png");
		$(".prev img").attr("alt","소시지 스낵랩");
		$(".prev .tit").append("소시지 스낵랩");
		$(".next").css("display","none");
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료 (난류,대두,밀,돼지고기,쇠고기)<br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
		$(".origin_info").html("돼지고기:국내산");
		
	}else if("${val}" == "M013"){ //맥모닝
		$("title").html("베이컨 토마토 에그 소프트 번");
		$(".contArea .inner .menuView .viewTop .name .ko").append("베이컨 토마토 에그 소프트 번");
		$(".contArea .inner .menuView .viewTop .name .en").append("BLT Egg Soft Bun");
		$(".viewTop .info").attr("data-title","베이컨 토마토 에그 소프트 번")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1650447484422.png")
		$(".visual img").attr("alt","베이컨 토마토 에그 소프트 번")
		$(".info .desc").html(" 스팀 번과 1+등급 계란이 주는 부드러운 식감과<br>신선한 야채와 베이컨으로 꽉 찬 영양까지!<br>*판매 시간: 4AM~10:30AM");
		
		$(".prev").css("display","none");
		$(".next").attr("href","javascript:goDetail('M014')");
		$(".next img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1650447760675.png");
		$(".next img").attr("alt","소시지 토마토 에그 소프트 번");
		$(".next .tit").append("소시지 토마토 에그 소프트 번");
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료 (난류,대두,밀,돼지고기,토마토)<br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
		$(".origin_info").html("돼지고기(베이컨):외국산(아일랜드,스페인,캐나다)");
		
	}else if("${val}" == "M014"){ 
		$("title").html("소시지 토마토 에그 소프트 번");
		$(".contArea .inner .menuView .viewTop .name .ko").append("소시지 토마토 에그 소프트 번");
		$(".contArea .inner .menuView .viewTop .name .en").append("SLT Egg Soft Bun");
		$(".viewTop .info").attr("data-title","소시지 토마토 에그 소프트 번")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1650447791328.png");
		$(".visual img").attr("alt","소시지 토마토 에그 소프트 번")
		$(".info .desc").html("스팀 번과 1+등급 계란이 주는 부드러운 식감과<br>신선한 야채와 소시지로 꽉 찬 영양까지!<br>*판매 시간: 4AM~10:30AM");
		
		$(".prev").attr("href","javascript:goDetail('M013')");
		$(".prev img").attr("src","   https://www.mcdonalds.co.kr/upload/product/pcthum/1650447458784.png");
		$(".prev img").attr("alt","베이컨 토마토 에그 소프트 번");
		$(".prev .tit").append("베이컨 토마토 에그 소프트 번");
		$(".next").attr("href","javascript:goDetail('M015')");
		$(".next img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1614164820508.png");
		$(".next img").attr("alt","베이컨 토마토 에그 머핀");
		$(".next .tit").append("베이컨 토마토 에그 머핀");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료 (난류,우유,대두,밀,돼지고기,토마토)<br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
		$(".origin_info").html("포크소세지패티:미국산");
		
	}else if("${val}" == "M015"){ 
		$("title").html("베이컨 토마토 에그 머핀번");
		$(".contArea .inner .menuView .viewTop .name .ko").append("베이컨 토마토 에그 머핀");
		$(".contArea .inner .menuView .viewTop .name .en").append("BLT Egg Muffin");
		$(".viewTop .info").attr("data-title","베이컨 토마토 에그 머핀")
		$(".visual img").attr("src","   https://www.mcdonalds.co.kr/upload/product/pcfile/1646207407116.png");
		$(".visual img").attr("alt","베이컨 토마토 에그 머핀")
		$(".info .desc").html("갓 구워내 따뜻하고 신선한<br>베이컨 토마토 에그 머핀<br>*판매 시간: 4AM~10:30AM");
		
		$(".prev").attr("href","javascript:goDetail('M014')");
		$(".prev img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1650447760675.png");
		$(".prev img").css("display","block","width","90px","height","90px");
		$(".prev img").attr("alt","소시지 토마토 에그 소프트 번");
		$(".prev .tit").append("소시지 토마토 에그 소프트 번");
		$(".next").css("display","none");
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료 (난류,대두,밀,돼지고기,토마토)<br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
		$(".origin_info").html("케네디언베이컨:미국산");
		
	}else if("${val}" == "M016"){ //맥모닝 세트
		$("title").html("베이컨 토마토 에그 소프트 번 세트");
		$(".contArea .inner .menuView .viewTop .name .ko").append("베이컨 토마토 에그 소프트 번 세트");
		$(".contArea .inner .menuView .viewTop .name .en").append("BLT Egg Soft Bun Extra Value Breakfast");
		$(".viewTop .info").attr("data-title","베이컨 토마토 에그 소프트 번 세트")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1650447998981.png")
		$(".visual img").attr("alt","베이컨 토마토 에그 소프트 번 세트")
		$(".info .desc").html(" 100% 아라비카로 내린 드립 커피와<br>바삭바삭 고소한 해쉬 브라운,<br>스팀 번과 1+등급 계란이 주는 부드러운 식감과<br>신선한 야채와 베이컨으로 꽉 찬 영양까지!<br>*판매 시간: 4AM~10:30AM");
		
		$(".prev").css("display","none");
		$(".next").attr("href","javascript:goDetail('M014')");
		$(".next img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1650448372947.png");
		$(".next img").attr("alt","소시지 토마토 에그 소프트 번 세트");
		$(".next .tit").append("소시지 토마토 에그 소프트 번 세트");
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료 (난류,대두,밀,돼지고기,토마토)<br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
		$(".origin_info").html("돼지고기(베이컨):외국산(아일랜드,스페인,캐나다)");
		
	}else if("${val}" == "M017"){ 
		$("title").html("소시지 토마토 에그 소프트 번 세트");
		$(".contArea .inner .menuView .viewTop .name .ko").append("소시지 토마토 에그 소프트 번 세트");
		$(".contArea .inner .menuView .viewTop .name .en").append("SLT Egg Soft Bun Extra Value Breakfast");
		$(".viewTop .info").attr("data-title","소시지 토마토 에그 소프트 번 세트")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1650448383053.png");
		$(".visual img").attr("alt","소시지 토마토 에그 소프트 번 세트")
		$(".info .desc").html("100% 아라비카로 내린 드립 커피와<br>바삭바삭 고소한 해쉬 브라운,<br>스팀 번과 1+등급 계란이 주는 부드러운 식감과<br>신선한 야채와 소시지로 꽉 찬 영양까지!<br>*판매 시간: 4AM~10:30AM");
		
		$(".prev").attr("href","javascript:goDetail('M016')");
		$(".prev img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1650447987732.png");
		$(".prev img").attr("alt","베이컨 토마토 에그 소프트 번 세트");
		$(".prev .tit").append("베이컨 토마토 에그 소프트 번 세트");
		$(".next").attr("href","javascript:goDetail('M018')");
		$(".next img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1614164911766.png");
		$(".next img").attr("alt","베이컨 토마토 에그 머핀 세트");
		$(".next .tit").append("베이컨 토마토 에그 머핀 세트");
		
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료 (난류,우유,대두,밀,돼지고기,토마토)<br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
		$(".origin_info").html("포크소세지패티:미국산");
		
	}else if("${val}" == "M018"){ 
		$("title").html("베이컨 토마토 에그 머핀 세");
		$(".contArea .inner .menuView .viewTop .name .ko").append("베이컨 토마토 에그 머핀 세트");
		$(".contArea .inner .menuView .viewTop .name .en").append("BLT Egg Muffin Extra Value Breakfast");
		$(".viewTop .info").attr("data-title","베이컨 토마토 에그 머핀 세트")
		$(".visual img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcfile/1646207453297.png");
		$(".visual img").attr("alt","베이컨 토마토 에그 머핀 세트")
		$(".info .desc").html("갓 구워내 따뜻하고 신선한<br>베이컨 토마토 에그 머핀 세트<br>*판매 시간: 4AM~10:30AM");
		
		$(".prev").attr("href","javascript:goDetail('M017')");
		$(".prev img").attr("src","https://www.mcdonalds.co.kr/upload/product/pcthum/1650448372947.png");
		$(".prev img").attr("alt","소시지 토마토 에그 소프트 번 세트");
		$(".prev .tit").append("소시지 토마토 에그 소프트 번 세트");
		$(".next").css("display","none");
		$(".allerDesc p").html("<b>알레르기 유발 가능 식재료 (난류,대두,밀,돼지고기,토마토)<br><b>* 일부 튀김류 제품은 새우 패티와 같은 조리기구를 사용하고 있습니다.</b>");
		$(".origin_info").html("케네디언베이컨:미국산");
	}
</script>   

</body>
</html>