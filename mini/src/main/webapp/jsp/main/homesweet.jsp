<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<!-- 순서 1. 스타일, 2. 스크립트 - 1. 제이쿼리 2. 나머지 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script> -->

</head>
<body>
<!--바로가기 메뉴-->
<noscript><p>JavaScript를 지원하지않는 브라우저입니다. 일부 콘텐츠가 정상적으로 작동하지 않을 가능성이 있습니다. </p></noscript> 




<div id="wrap_out">
	<style type="text/css">
	body { margin: 0px; padding: 0px; }
	.jbFixed { position: fixed; top: 0px; left: 0; width: 100%}
</style>
<meta name="viewport" content="width=device-width, initial-scale=0">
<script>
/*
  $( document ).ready( function() {
       var jbOffset = $( '#contents' ).offset();
  $( window ).scroll( function() {
       if ( $( document ).scrollTop() > jbOffset.top ) {
            $( '.jbMenu' ).addClass( 'jbFixed' );
          }
       else {
            $( '.jbMenu' ).removeClass( 'jbFixed' );
          }
        });
 } );
 */
</script>
<div class="jbMenu">
	<div id="header">
		<div class="wrap">
			<h1><a href="/main.asp"><img src="../images/common/logo.png" alt="Rooms A"></a></h1>
			<h2>주메뉴</h2>
			<ul id="nav">
				<li><a href="/sub_01/sub01.asp">룸즈에이</a></li>
				<li><a href="/sub_01/sub01_1.asp">테마소개</a></li>
				<li><a href="/sub_02/sub02_1.asp">예약</a></li>
				<li><a href="/sub_07/event_list.asp">이벤트/공지</a></li>
				<li><a href="/sub_01/dd.asp">오시는 길</a></li>
<!--			<li><a href="/sub_08/sub_01.html">가맹문의</a></li> -->
			</ul> <!--// nav -->
		</div> <!--// wrap -->
	
	</div> <!--// header -->
</div> <!--//jbMenu-->
	<div id="contents">
		<!-- 비주얼 영역 -->
		<div id="visual" class="slick-initialized slick-slider">

                   <div aria-live="polite" class="slick-list draggable" tabindex="0"><div class="slick-track" style="opacity: 1; width: 7280px; transform: translate3d(-4160px, 0px, 0px);"><img src="/upload_file/main/2_매장-오픈지도_0429_수정.jpg" width="100%" alt="visual" class="slick-slide slick-cloned" data-slick-index="-1" aria-hidden="true" style="width: 1040px;"><img src="/upload_file/main/hall.jpg" width="100%" alt="visual" class="slick-slide" data-slick-index="0" aria-hidden="true" style="width: 1040px;"><img src="/upload_file/main/main_b1.jpg" width="100%" alt="visual" class="slick-slide" data-slick-index="1" aria-hidden="true" style="width: 1040px;"><img src="/upload_file/main/3_홍대점-오픈(웹용).jpg" width="100%" alt="visual" class="slick-slide" data-slick-index="2" aria-hidden="true" style="width: 1040px;"><img src="/upload_file/main/조조할인-홈페이지-배너_0707.jpg" width="100%" alt="visual" class="slick-slide slick-active" data-slick-index="3" aria-hidden="false" style="width: 1040px;"><img src="/upload_file/main/2_매장-오픈지도_0429_수정.jpg" width="100%" alt="visual" class="slick-slide" data-slick-index="4" aria-hidden="true" style="width: 1040px;"><img src="/upload_file/main/hall.jpg" width="100%" alt="visual" class="slick-slide slick-cloned" data-slick-index="5" aria-hidden="true" style="width: 1040px;"></div></div>

                   

                   

                   

                   

		<button type="button" data-role="none" class="slick-prev" aria-label="previous" style="display: block;">Previous</button><button type="button" data-role="none" class="slick-next" aria-label="next" style="display: block;">Next</button></div> <!--// visual -->
       <!-- 이벤트바로가기 -->  
    <div id="event" style="text-align: right;"><a href="/sub_07/event_list.asp" target="_self"><h1>»이벤트 바로가기</h1></a></div>
        <!-- 지점별 테마소개 -->  
		<div class="wrap">
			<div id="cont1">
				<div class="wrap_tit">
					<h3>지점별 테마 소개</h3>
					<div class="box_link">
						<dl>
							<dt>지점선택</dt>
							<dd style="display: none;">
								<ul>
									<li><a href="#">대학로점</a></li>
									<li><a href="#">안양범계점</a></li>
<!--								<li><a href="#">홍성점</a></li> -->
									<li><a href="#">대전은행점</a></li>
									<li><a href="#">부산남포점</a></li>
									<li><a href="#">부산서면점</a></li>
									<li><a href="#">홍대점</a></li>
									<li><a href="#">대전둔산점</a></li>
									<li><a href="#">광주수완점</a></li>
									<li><a href="#">대구동성로점</a></li>
									<li><a href="#">포항점</a></li>
									<li><a href="#">웨스턴돔점</a></li>
									<li><a href="#">의정부점</a></li>
									<li><a href="#">강남점</a></li>
									<li><a href="#">동성로2호점</a></li>
								</ul>
							</dd>
						</dl>
						<button type="button" class="btn_select"></button>
					</div><!--//.box_link-->
				</div><!--//.wrap_tit-->
				<div class="wrap_cont0 wrap_cont"><!-- 대학로 지점 컨텐츠 -->
					<ul>

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=A&amp;JIJEM=S1">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/킹스맨 웹 1(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">Secret Agent</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">잠입/수사</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★★</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=B&amp;JIJEM=S1">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/안개꽃 웹 1(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">안개꽃</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">감성/로맨스</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=C&amp;JIJEM=S1">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/게인타임 웹 1(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">Gain Time</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">문제해결/공상</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★★</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=D&amp;JIJEM=S1">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/낭랑카페 Web.jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">낭랑카페</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">힐링/판타지</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★☆☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=E&amp;JIJEM=S1">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/행방불냥 Web(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">행방불냥</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">고양이/큐트</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★☆☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

					</ul>
				</div><!--//.wrap_cont0-->

				<div class="wrap_cont1 wrap_cont" style="display: none;"><!--범계점 테마방-->
					<ul>

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=A&amp;JIJEM=S2">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/킹스맨 웹 1(4).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">Secret Agent</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">잠입/수사</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★★</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=B&amp;JIJEM=S2">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/안개꽃 웹 1(8).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">안개꽃</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">감성/로맨스</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=C&amp;JIJEM=S2">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/낭랑카페 Web(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">낭랑카페</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">힐링/판타지</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★☆☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=D&amp;JIJEM=S2">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/요정들의 술집 Web.jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">요정들의 술집</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">코믹/판타지</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★☆☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

					</ul>
				
				</div><!--//.wrap_cont1-->

				<div class="wrap_cont2 wrap_cont" style="display: none;"><!-- 대전은행점 -->
					<ul>

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=A&amp;JIJEM=S4">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/히어로 웹.jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">히어로 아카데미</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">히어로/아케이드</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=B&amp;JIJEM=S4">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/낭랑카페 웹(3).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">낭랑카페</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">힐링/판타지</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★☆☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=C&amp;JIJEM=S4">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/안개꽃 웹 1(6).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">안개꽃</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">감성/로맨스</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=D&amp;JIJEM=S4">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/기억술사 웹 1(2).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">기억술사</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">판타지/감성</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

					</ul>
				</div><!--//.wrap_cont3-->
					<!--더 추가할경우 selectbox.js 수정 필요-->

				<div class="wrap_cont3 wrap_cont" style="display: none;"><!-- 부산남포점 -->
					<ul>

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=A&amp;JIJEM=S5">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/제인하우스 포스터 웹(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">제인하우스</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">공포</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=B&amp;JIJEM=S5">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/안개꽃 웹 1(3).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">안개꽃</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">감성/로맨스</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=C&amp;JIJEM=S5">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/행방불냥 Web(3).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">행방불냥</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">고양이/큐트</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★☆☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=D&amp;JIJEM=S5">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/킹스맨 웹 1(3).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">Secret Agent</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">잠입/수사</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★★</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=E&amp;JIJEM=S5">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/낭랑카페 Web(5).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">낭랑카페</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">힐링/판타지</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★☆☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=F&amp;JIJEM=S5">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/제목 없음-1.jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">초콜릿 팩토리</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">환상/판타지</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★★</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

					</ul>
				</div><!--//.wrap_cont4-->

				<div class="wrap_cont4 wrap_cont" style="display: none;"><!-- 부산서면점 -->
					<ul>

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=A&amp;JIJEM=S6">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/프레임 하이커 웹(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">프레임 하이커</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">판타지/꿈</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★★</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=B&amp;JIJEM=S6">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/퍼팩트 플랜 웹 1(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">퍼팩트 플랜</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">잠입/해킹</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★★</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=C&amp;JIJEM=S6">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/너와 나의 이야기 웹(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">너와 나의 이야기</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">감성/스토리</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=D&amp;JIJEM=S6">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/아직 버리지못한 지갑 웹(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">아직 버리지못한 지갑</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">감성/스토리</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=E&amp;JIJEM=S6">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/히어로 웹(3).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">히어로 아카데미</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">히어로/아케이드</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=F&amp;JIJEM=S6">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/요정들의 술집 Web(3).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">요정들의 술집</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">코믹/판타지</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★☆☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

					</ul>
				</div><!--//.wrap_cont5-->

				<div class="wrap_cont5 wrap_cont" style="display: none;"><!-- 부산서면점 -->
					<ul>

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=A&amp;JIJEM=S7">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/키메이커 웹(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">키메이커 (85분)</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">모큐멘터리(3인이상 추천)</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★★</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=B&amp;JIJEM=S7">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/rhx 웹(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">RH-X (80분)</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">연구/탈출(3인이상 추천)</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★★</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=C&amp;JIJEM=S7">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/신의 여인들 웹.jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">신의 여인들</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">스토리</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=D&amp;JIJEM=S7">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/콤마 웹.jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">콤마</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">환생/감성</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★☆☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=E&amp;JIJEM=S7">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/뜻밖의 여행(웹)(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">뜻밖의 여행</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">여행</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★☆☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=F&amp;JIJEM=S7">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/필활 웹(2).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">필활(70분)</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">역사/잠입</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=G&amp;JIJEM=S7">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/태자귀(홈페이지)(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">태자귀</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">공포/설화</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=H&amp;JIJEM=S7">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/뽀득뽀득 웹.jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">뽀득뽀득</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">큐트/목욕</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=I&amp;JIJEM=S7">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/골든서클 웹(2).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">골든서클</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">요원/첩보</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=J&amp;JIJEM=S7">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/우행시 웹.jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">우리들의 행복했던 시간</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">스토리/감성</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=K&amp;JIJEM=S7">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/maintheme.jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">암행(70분)</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">역사/조사</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

					</ul>
				</div><!--//.wrap_cont7-->

				<div class="wrap_cont6 wrap_cont" style="display: none;"><!-- 대전둔산점 -->
					<ul>

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=A&amp;JIJEM=S8">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/뜻밖의 여행(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">뜻밖의 여행</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">여행</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=B&amp;JIJEM=S8">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/신의 여인들(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">신의 여인들</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">스토리</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=C&amp;JIJEM=S8">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/시크릿에이전트(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">Secret Agent</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">잠입/수사</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★★</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=D&amp;JIJEM=S8">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/좀비 바이러스(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">좀비 바이러스</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">좀비/미션</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★☆☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=E&amp;JIJEM=S8">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/고스트 프로토콜(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">고스트 프로토콜</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">잠입/미션</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

					</ul>
				</div><!--//.wrap_cont6-->

				<div class="wrap_cont7 wrap_cont" style="display: none;"><!-- 광주수완점 -->
					<ul>

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=A&amp;JIJEM=S9">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/요정들의 술집 Web(5).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">요정들의 술집</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">코믹/판타지</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★☆☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=B&amp;JIJEM=S9">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/낭랑카페 Web(7).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">낭랑카페</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">힐링/판타지</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=C&amp;JIJEM=S9">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/히어로 웹(5).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">히어로 아카데미</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">히어로/아케이드</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=D&amp;JIJEM=S9">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/뽀득뽀득 웹(3).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">뽀득뽀득</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">큐트/목욕</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★★</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=E&amp;JIJEM=S9">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/너와 나의 이야기 웹(3).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">너와 나의 이야기</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">감성/스토리</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=F&amp;JIJEM=S9">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/킹스맨 웹(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">Secret Agent</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">잠입/수사</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=G&amp;JIJEM=S9">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/방과 후 웹(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">방과 후 (70분)</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">공포/스릴러</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

					</ul>
				</div><!--//.wrap_cont6-->

				<div class="wrap_cont8 wrap_cont" style="display: none;"><!-- 대구동성로점 -->
					<ul>

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=A&amp;JIJEM=S10">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/뽀득뽀득 웹(5).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">뽀득뽀득</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">큐트/목욕</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=B&amp;JIJEM=S10">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/노블리스트 웹(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">노블리스트 (70분)</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">스토리/스릴러</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=C&amp;JIJEM=S10">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/취중진담 웹(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">취중진담</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">감성/스토리</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=D&amp;JIJEM=S10">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/포스터-홈페이-변환용(반짝반짝)_320x480.jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">반짝반짝</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">잠입/탈취</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=E&amp;JIJEM=S10">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/(아이돌 내남친)포스터 웹_저장용 copy.jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">아이돌 남친</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">로맨스/스릴러</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

					</ul>
				</div><!--//.wrap_cont8-->

				<div class="wrap_cont9 wrap_cont" style="display: none;"><!-- 포항점 -->
					<ul>

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=A&amp;JIJEM=S11">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/낭랑카페 Web(9).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">낭랑카페</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">힐링/판타지</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★☆☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=B&amp;JIJEM=S11">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/너와 나의 이야기 웹(5).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">너와 나의 이야기</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">감성/스토리</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=C&amp;JIJEM=S11">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/안개꽃 웹 1(10).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">안개꽃</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">감성/로맨스</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=D&amp;JIJEM=S11">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/킹스맨 웹 1(7).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">Secret Agent</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">잠입/수사</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★★</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

					</ul>
				</div><!--//.wrap_cont8-->

				<div class="wrap_cont10 wrap_cont" style="display: none;"><!-- 웨스턴돔점 -->
					<ul>

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=A&amp;JIJEM=S12">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/0413뽀득(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">뽀득뽀득</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">큐트/목욕</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=B&amp;JIJEM=S12">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/0413반짝(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">반짝반짝</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">잠입/탈취</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=C&amp;JIJEM=S12">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/킹스맨 웹 1(1)(2).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">Secret Agent</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">잠입/수사</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★★</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=D&amp;JIJEM=S12">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/웹-포스터-변환용_이상한돈가스_웨돔(1).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">이상한 돈가스</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">큐트/코믹</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★☆☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=E&amp;JIJEM=S12">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/web_타임키퍼.jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">타임키퍼</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">시간/판타지</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

					</ul>
				</div><!--//.wrap_cont8-->

				<div class="wrap_cont11 wrap_cont" style="display: none;"><!-- 웨스턴돔점 -->
					<ul>

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=C&amp;JIJEM=S13">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/web_반짝반짝.jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">반짝반짝</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">잠입/탈취</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=B&amp;JIJEM=S13">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/web_뽀득뽀득.jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">뽀득뽀득</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">큐트/목욕</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=A&amp;JIJEM=S13">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/web_이상한-돈가스.jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">이상한 돈가스</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">큐트/코믹</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=D&amp;JIJEM=S13">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/web_낭랑카페.jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">낭랑카페</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">힐링/판타지</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★☆☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=G&amp;JIJEM=S13">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/킹스맨 웹 1(1)(2)(3).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">Secret Agent(3인이상)</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">잠입/수사 (3인이상 추천)</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★★</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=H&amp;JIJEM=S13">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/안개꽃(3).png" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">안개꽃</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">감성/로맨스</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=F&amp;JIJEM=S13">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/게인 타임(5).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">Gain Time</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">문제해결/공상</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★★</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=E&amp;JIJEM=S13">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/web_타임키퍼(3).jpg" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">타임키퍼</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">시간/판타지</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

					</ul>
				</div><!--//.wrap_cont8-->

				<div class="wrap_cont12 wrap_cont" style="display: none;"><!-- 강남점 -->
					<ul>

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=A&amp;JIJEM=S14">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/S14_1.JPG" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">광야(70분)</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">역사/작전</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=B&amp;JIJEM=S14">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/S14_2.JPG" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">왕자님이 찾으십니다.(70분)</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">판타지</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★★</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

					</ul>
				</div><!--//.wrap_cont8-->

				<div class="wrap_cont13 wrap_cont" style="display: none;"><!-- 동성로2호점 -->
					<ul>

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=A&amp;JIJEM=S15">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/S15_1.JPG" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">띵가띵가</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">큐트/코믹</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★☆☆</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

    		     <a href="/sub_02/sub02_1.asp?D_ROOM=B&amp;JIJEM=S15">
			          <li style="float:left;width:30%;margin:1%;">
					     <table>
						    <tbody><tr>
							    <td>
                                     <img src="/upload_file/room/S15_2.JPG" style="width:90%;height:420px;"><br><br>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">아이덴티티</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
                                        <span style="font-size:28px;color:#fff;">첩보/코믹</span>
                                </td>
							</tr> 	
						    <tr>
							    <td>
									   <span style="font-size:28px;color:#fff;">★★★★★</span>
                                </td>
							</tr>
                         </tbody></table>
                      </li>						 
                 </a> 

					</ul>
				</div><!--//.wrap_cont8-->

			</div><!--//#cont1-->
			<div id="cont2">
                <br><br><br><br>
				<div class="cont2_2">
					<h4>오시는 길</h4>
					<ul>
					    <li style="float:left;">
         					<div class="store1">
		         				<div class="box_map">
				          			<a href="http://map.naver.com/?searchCoord=e94612c69ad6b0bf1c6085c4ba3c2c1b20e66f0e5e904bd1d924637788077fad&amp;query=66O47KaI7JeQ7J20&amp;tab=1&amp;lng=f9049c56650d0949524958ca3a147fac&amp;mapMode=0&amp;mpx=09440120%3A37.5562387%2C126.9199388%3AZ11%3A0.0344705%2C0.0154961&amp;lat=88ccef705b02e28216d9a8526bc22855&amp;dlevel=12&amp;enc=b64&amp;menu=location" target="_blank"><img src="http://prt.map.naver.com/mashupmap/print?key=p1531197641432_-344479952" width="400" height="240" alt="지도 크게 보기" title="지도 크게 보기" border="0" style="vertical-align:top;"></a>
          						</div>
		         				<p><span class="address">종로구 대학로10길 15-15 해안빌딩 B1</span>
          						<span class="time">11:00 AM ~ 11:30 PM</span></p>
              				</div>
                        </li> 
					    <li style="float:left;">
         					<div class="store2" style="display: none;">
		        				<div class="box_map">
         							<a href="https://map.naver.com/?searchCoord=e94612c69ad6b0bf1c6085c4ba3c2c1b20e66f0e5e904bd1d924637788077fad&amp;query=66O47KaI7JeQ7J20IOyViOyWkeuylOqzhOygkA%3D%3D&amp;menu=location&amp;tab=1&amp;lng=670a21ad506a65e981f9dd05f1a84b06&amp;mapMode=0&amp;mpx=09440120%3A37.5562387%2C126.9199388%3AZ11%3A0.0344705%2C0.0154961&amp;lat=9019083f9fc2b902e47e06c4922c1606&amp;dlevel=11&amp;enc=b64" target="_blank"><img src="http://prt.map.naver.com/mashupmap/print?key=p1531197748806_-763970575" width="400" height="240" alt="지도 크게 보기" title="지도 크게 보기" border="0" style="vertical-align:top;"></a>
		           				</div>
           						<p><span class="address">안양시 동안구 평촌대로227번길 48 5층</span>
        						<span class="time">10:00 AM ~ 11:00 PM</span></p>
		         			</div>
                        </li>
					    <li style="float:left;">
				         	<div class="store3" style="display: none;">
               					<div class="box_map">
          							<a href="https://map.naver.com/?searchCoord=8102d00812c26cf7a4db07413c2ecf43b9057a9d159a050c2e0605abcc5e421a&amp;query=66O47KaI7JeQ7J20IOuMgOyghOydgO2WieygkA%3D%3D&amp;tab=1&amp;lng=acec48f854a00b745768a1f906e2d984&amp;mapMode=0&amp;mpx=ad037bfbc9d811bf405186d963a3b5378d23b08a065e32c9262dd0418f233f21aba9663b2abc17eb8eb0e0c18f232d49&amp;lat=d05e3c9b4add29e80c8959310fb90181&amp;dlevel=11&amp;enc=b64&amp;menu=location&amp;__fromRestorer=true" target="_blank"><img src="http://prt.map.naver.com/mashupmap/print?key=p1531366364666_223197907" width="400" height="240" alt="지도 크게 보기" title="지도 크게 보기" border="0" style="vertical-align:top;"></a>
         						</div>
		         				<p><span class="address">대전광역시 중구 중앙로164번길 28, 4층</span>
           						<span class="time">10:00 AM ~ 11:00 PM</span></p>							
			         		</div>
                        </li>
					    <li style="float:left;">
         					<div class="store4" style="display: none;">
		         				<div class="box_map">
							        <a href="https://map.naver.com/?searchCoord=37c8826258627905b4cf62d7bf37a1941c6c26f7eaa3e6e49b899e777f41b8e7&amp;query=67aA7IKw6rSR7Jet7IucIOykkeq1rCDqtJHrs7XroZwgMzYsIDPsuLU%3D&amp;tab=1&amp;lng=1a45f9811ba3e2447f788f5983325034&amp;mapMode=0&amp;mpx=8df80dc8732670fef3670a6dd7ec936d53adc981cc9cf7b8075ca2d503fc1525de6615f4d321290353fb320f2c5a861f&amp;lat=fa03e9203aee893f9c8c23b1f6642df5&amp;dlevel=11&amp;enc=b64&amp;menu=location&amp;__fromRestorer=true" target="_blank"><img src="http://prt.map.naver.com/mashupmap/print?key=p1531368158277_765191694" width="400" height="240" alt="지도 크게 보기" title="지도 크게 보기" border="0" style="vertical-align:top;"></a>
        						</div>
		        				<p><span class="address">부산광역시 중구 광복로 36, 3층</span>
         						<span class="time">10:00 AM ~ 12:00 PM</span></p>							
            				</div>
                        </li> 
					    <li style="float:left;">
        					<div class="store5" style="display: none;">
		        				<div class="box_map">
                                    <a href="https://map.naver.com/?searchCoord=e9f53e84576c36df8819b2e5a87e22019432426467f78f79925ff67d2843e79d&amp;query=67aA7IKw6rSR7Jet7IucIOu2gOyCsOynhOq1rCDspJHslZnrjIDroZw2ODDrsojqsIDquLg5LDPsuLU%3D&amp;tab=1&amp;lng=b151cd3b55bb43882309bf0b8301197f&amp;mapMode=0&amp;mpx=bffbb05e2ece3d900248e8ff573f2d88e7d90b2dd4de94cfc6405bd6a86e1dac185e2b81ca1826f0a23dc8ba503dccf44f0f991310335daef7aa4dbd28bad006&amp;lat=c00466854abcdbc19b3b21f9b2c641c4&amp;dlevel=12&amp;enc=b64&amp;menu=location" target="_blank"><img src="http://prt.map.naver.com/mashupmap/print?key=p1541145740781_1504203649" width="400" height="240" alt="지도 크게 보기" title="지도 크게 보기" border="0" style="vertical-align:top;"></a>						
        						</div>
         						<p><span class="address">부산광역시 부산진구 중앙대로680번가길9,3층</span>
        						<span class="time">10:00 AM ~ 12:00 PM</span></p>							
         					</div>
					    </li>
					    <li style="float:left;">
        					<div class="store6" style="display: none;">
		        				<div class="box_map">
                                     <a href="https://map.naver.com/?searchCoord=d1b590e4bcceea41783d53298adc27953d2316e6b1fe39790ae636ec4c928334&amp;query=7ISc7Jq4IOuniO2PrOq1rCDshJzqtZDrj5kgMzQzLTEx67KI7KeAIOuNlOuqqOyehOu5jOuUqQ%3D%3D&amp;menu=location&amp;tab=1&amp;lng=3aa7382e478749df9e6321a7e33c0a1a&amp;__fromRestorer=true&amp;mapMode=0&amp;mpx=eb06f3de0420251001394d0788997859de0307b6d093744e50834887dde9d4379f4630f56df88870e0a8ebc63b993cb6&amp;lat=f464f47b6ac6427ee50e3c9f8aa6d807&amp;dlevel=12&amp;enc=b64&amp;menu=location" target="_blank"><img src="http://prt.map.naver.com/mashupmap/print?key=p1546491589157_1754367092" width="400" height="240" alt="지도 크게 보기" title="지도 크게 보기" border="0" style="vertical-align:top;">
    								  </a>
		         				</div>
         						<p><span class="address">서울 마포구 서교동 343-11번지 더모임빌딩 지하 1층 룸즈에이</span>
         						<span class="time">10:00 AM ~ 12:00 PM</span></p>							
        					</div>
                        </li>
					    <li style="float:left;">
        					<div class="store7" style="display: none;">
		        				<div class="box_map">
                                     <a href="https://map.naver.com/?searchCoord=7f4b655f40e6d8d6b99c9a23c0ffbf76423909459842003eea0f19f67c46aee1&amp;query=64yA7KCE6rSR7Jet7IucIOyEnOq1rCDrjIDrjZXrjIDroZwgMTg167KI6ri4IDIyLCA37Li1KOuRlOyCsOuPmSk%3D&amp;tab=1&amp;lng=a44b908edf457b3c0e843cab12cb7064&amp;mapMode=0&amp;mpx=7fd52305341962e131e0f23ff0d085dd5dc8e73f839904a40c554f93894f07e07a6def9ac10013953f44617a9b1ae62a6f5badd8354456470d190b363a6b5055&amp;lat=14f142fd38016d9e93bc551d88211538&amp;dlevel=12&amp;enc=b64&amp;menu=location" target="_blank"><img src="http://prt.map.naver.com/mashupmap/print?key=p1556006189288_1734428361" width="400" height="240" alt="지도 크게 보기" title="지도 크게 보기" border="0" style="vertical-align:top;">
									 </a>
		         				</div>
         						<p><span class="address">대전광역시 서구 대덕대로 185번길 22, 7층(둔산동)</span>
         						<span class="time">AM 10:00 ~ PM 11:30</span></p>							
        					</div>
                        </li>
					    <li style="float:left;">
        					<div class="store8" style="display: none;">
								<div class="box_map">
                                     <a href="https://map.naver.com/?searchCoord=e63c6a483a29f00235ff2c54a7ce6b41985a110160e52d67f8686246cad63661&amp;query=6rSR7KO86rSR7Jet7IucIOq0keyCsOq1rCDsnqXsi6DroZwgMTQ367KI6ri4IDUtMTIgNey4tSjsiJjsmYTrj5kp&amp;tab=1&amp;lng=118851195e73e3e34e04ef6e090a5cd8&amp;mapMode=0&amp;mpx=01bbd2a9737b089fa32c962ece31211fc6b9538fa6af92c5f64df9a3a82994f40deaa348d3318a9787b9f600905fc44a9a941e258eebbd332e49edb92ae3e3d5&amp;lat=291fed619474c39f3a025ac239de4280&amp;dlevel=12&amp;enc=b64&amp;menu=location" target="_blank"><img src="http://prt.map.naver.com/mashupmap/print?key=p1570327527515_1206489156" width="400" height="240" alt="지도 크게 보기" title="지도 크게 보기" border="0" style="vertical-align:top;"></a>
									 
		         				</div>
         						<p><span class="address">광주광역시 광산구 장신로 147번길 5-12 5층(수완동)</span>
         						<span class="time">AM 10:00 ~ PM 11:30</span></p>							
        					</div>
                        </li>
					    <li style="float:left;">
        					<div class="store9" style="display: none;">
								<div class="box_map">
                                     <a href="https://v4.map.naver.com/?searchCoord=e0e8904fcc7c1e1d32902a4abbffe992fcab67e94e4f91cccd3aae5a3309514e&amp;query=64yA6rWs6rSR7Jet7IucIOykkeq1rCDrj5nshLHroZw26ri4IDE2IDTsuLUo6rO17Y%2BJ64%2BZKQ%3D%3D&amp;tab=1&amp;lng=0cdd72fe3ca1c0fd2cefd1f643ea9da8&amp;mapMode=0&amp;mpx=0505df5932e946da41b8971aab4566f3ddd9a522bd0667d0349056f9fbda7ba8f47c489807121f19b93886f3dced43cc1e9e9953be09629121a0bfaddfe5166d&amp;lat=add8ae07cc7e654cba8debd24dae5fa6&amp;dlevel=12&amp;enc=b64&amp;menu=location" target="_blank"><img src="http://prt.map.naver.com/mashupmap/print?key=p1599480132736_601577325" width="400" height="240" alt="지도 크게 보기" title="지도 크게 보기" border="0" style="vertical-align:top;"></a> 
								 </div>
         						<p><span class="address">대구광역시 중구 동성로6길 16 4층(공평동)</span>
         						<span class="time">AM 10:00 ~ PM 11:30</span></p>							
        					</div>
                        </li>
					    <li style="float:left;">
        					<div class="store10" style="display: none;">
								<div class="box_map">
                                   <a href="https://v4.map.naver.com/?searchCoord=6ecc8d9dc0bdce6b478aadb062a726a285702f4a99f3ab62e1455ca968fadd4e&amp;query=6rK967aBIO2PrO2VreyLnCDrtoHqtawg7KSR7JWZ66GcIDI3MyDsiqTtg4Dtg4Dsm4wgNey4tQ%3D%3D&amp;menu=location&amp;tab=1&amp;lng=a6131e7af2d0c2231e05d7173b2d12dd&amp;mapMode=0&amp;mpx=b19e74c42730c365ede50bc95252b80e79621a23379115fee6417a93a2def4714cb4fc14072f13800d1c31fa5b96595cc895eff0342310a1fb6cc87b0c6855e8&amp;lat=eb07d0e62153493728d1ca5eb6817841&amp;dlevel=12&amp;enc=b64" target="_blank"><img src="http://prt.map.naver.com/mashupmap/print?key=p1599480065540_-2059302074" width="400" height="240" alt="지도 크게 보기" title="지도 크게 보기" border="0" style="vertical-align:top;"></a>        			                              	</div>
         						<p><span class="address">경북 포항시 북구 중앙로 273 스타타워 5층</span>
         						<span class="time">AM 10:00 ~ PM 11:30</span></p>							
        					</div>
                        </li>
					    <li style="float:left;">
        					<div class="store11" style="display: none;">
								<div class="box_map">
                                  <a href="https://v4.map.naver.com/?searchCoord=27bfebbb80886f001e9832fb68c806f174f16fa29ea1283b68593e0675d9e84c&amp;query=6rK96riw64%2BEIOqzoOyWkeyLnCDsnbzsgrDrj5nqtawg7J6l7ZWt64%2BZIDg0NyDsm4Xsi6DslYTtirjtlITrnbzsnpAgMzEy7Zi4&amp;tab=1&amp;lng=152db2e8b170c5dcab8c8a0e1dd483ab&amp;mapMode=0&amp;mpx=15afad1512da864a19b6c9fadb83b31f1fd7a8307e39aec4663161545a28cacd66605b04910baf914745b425902cd377d613340609d2e073adad73022168a9b6&amp;lat=790fd59281b13b1cd648d0eff15edf36&amp;dlevel=12&amp;enc=b64&amp;menu=location" target="_blank"><img src="http://prt.map.naver.com/mashupmap/print?key=p1586246683864_514401705" width="400" height="240" alt="지도 크게 보기" title="지도 크게 보기" border="0" style="vertical-align:top;">
								  </a>
		         				</div>
         						<p><span class="address">경기도 고양시 일산동구 장항동 847 웅신아트프라자 312호</span>
         						<span class="time">AM 10:00 ~ PM 11:30</span></p>							
        					</div>
                        </li>
					    <li style="float:left;">
        					<div class="store12" style="display: none;">
								<div class="box_map">
<a href="https://v4.map.naver.com/?mpx=c762b79e3b5e64b7daa7d165a2d17fd401527a641bdfb7fdc77ccacc7bb9eafa017908fba79ee7830140ca7fc76d4848467c233eefc3d8f61f7d64c4ec89b789&amp;searchCoord=b835e8cd0b228c3cbc33fbef3defad0780e18575bf606367bb6eeae171687213&amp;query=6rK96riw64%2BEIOydmOygleu2gOyLnCDsi5zrr7zroZwgMTIx67KI6ri4IDUyLCA07Li1KOydmOygleu2gOuPmSk%3D&amp;menu=location&amp;tab=1&amp;lng=0acecf240930223c2c56b1d3f132ed11&amp;mapMode=0&amp;lat=d3980e43b5d233064775fb3755f836ac&amp;dlevel=12&amp;enc=b64" target="_blank"><img src="http://prt.map.naver.com/mashupmap/print?key=p1599479987275_-1272213863" width="400" height="240" alt="지도 크게 보기" title="지도 크게 보기" border="0" style="vertical-align:top;"></a>
		         				</div>
         						<p><span class="address">경기도 의정부시 시민로 121번길 52, 4층(의정부동)</span>
         						<span class="time">AM 10:00 ~ PM 11:30</span></p>							
        					</div>
                        </li>
					    <li style="float:left;">
        					<div class="store13" style="display: none;">
								<div class="box_map">
<a href="https://v4.map.naver.com/?searchCoord=b835e8cd0b228c3cbc33fbef3defad0780e18575bf606367bb6eeae171687213&amp;query=7ISc7Jq4IOqwleuCqOq1rCDthYztl6TrnoDroZwgNOq4uCAzNSDsp4DtlZgy7Li1&amp;menu=location&amp;tab=1&amp;lng=88311fc80c961f43ec2e4e58349f1b59&amp;mapMode=0&amp;mpx=c762b79e3b5e64b7daa7d165a2d17fd401527a641bdfb7fdc77ccacc7bb9eafa017908fba79ee7830140ca7fc76d4848467c233eefc3d8f61f7d64c4ec89b789&amp;lat=92a814b60c34ad80ab99801615803891&amp;dlevel=12&amp;enc=b64" target="_blank"><img src="http://prt.map.naver.com/mashupmap/print?key=p1599823678566_-454382322" width="400" height="240" alt="지도 크게 보기" title="지도 크게 보기" border="0" style="vertical-align:top;"></a>
		         				</div>
         						<p><span class="address">서울 강남구 테헤란로 4길 35 지하2층</span>
         						<span class="time">AM 10:00 ~ PM 11:30</span></p>							
        					</div>
                        </li>
					    <li style="float:left;">
        					<div class="store14" style="display: none;">
								<div class="box_map">
<a href="https://v4.map.naver.com/?searchCoord=27bfebbb80886f001e9832fb68c806f174f16fa29ea1283b68593e0675d9e84c&amp;query=64yA6rWs6rSR7Jet7IucIOykkeq1rCDrj5nshLHroZwy6ri4IDUwLTE4KOyCvOuNleuPmTHqsIApIDTsuLU%3D&amp;tab=1&amp;lng=7449d1cb5e9be509cc01c5555ba0ad6a&amp;mapMode=0&amp;mpx=15afad1512da864a19b6c9fadb83b31f1fd7a8307e39aec4663161545a28cacdbc7d745fc441e0b0a820b9f9503659a6301da58bebe3fe01118e0fd4a185e94a&amp;lat=f348953865f74b5904bfdf2d29bd7fe4&amp;dlevel=12&amp;enc=b64&amp;menu=location" target="_blank"><img src="http://prt.map.naver.com/mashupmap/print?key=p1602662687846_1246442680" width="400" height="240" alt="지도 크게 보기" title="지도 크게 보기" border="0" style="vertical-align:top;"></a>
                                </div>
         						<p><span class="address">대구광역시 중구 동성로2길 50-18(삼덕동1가) 4층</span>
         						<span class="time">AM 10:00 ~ PM 11:30</span></p>							
        					</div>
                        </li>

						<li style="float:left;">
						    <div>
             					<ul class="tab_map">
            						<li class="tab_on">대학로</li>
             						<li>안양범계</li>
           		    				<li>대전은행</li>
           			    			<li>부산남포</li>
             						<li>부산서면</li>
            						<li>홍대점</li>
            						<li>대전둔산점</li>
            						<li>광주수완점</li>
            						<li>대구동성로점</li>
            						<li>포항점</li>
            						<li>일산웨스턴돔점</li>
            						<li>의정부점</li>
            						<li>강남점</li>
            						<li>동성로2호점</li>
            					</ul>
                            </div>
                        </li> 
                     </ul>
				</div>
				<div class="cont2_1">
				  <ul>
				     <li>대학로점<br>02) 747-9003</li>
				     <li>안양범계점<br>031) 388-4127</li>
				     <li>대전은행점<br>042) 223-2226</li>
				     <li>부산남포점<br>051) 243-0022</li>
				     <li>부산서면점<br>051) 816-4147</li>
				     <li>홍대점<br>02) 333-0058</li>
				     <li>대전둔산점<br> 042) 476-9200</li>
				     <li>광주수완점<br> 062) 959-8069</li>
				     <li>대구동성로점<br> 053) 427-3838</li>
				     <li>포항점<br> 054) 247-4147</li>
                     <li>일산웨스턴돔점<br>031) 901-2444</li>
                     <li>의정부점<br>031) 821-0446 </li>
                     <li>강남점<br>02) 558-7546 </li>
                     <li>동성로2호점<br>053) 000-0000 </li>
				</ul></div>

			</div><!--//#cont2-->
		</div><!--//.wrap-->
	</div> <!--// contents -->

	<!-- 반응형 하단메뉴 -->
	<div id="footer">
	<div class="wrap">
		<div class="inner">
			<div class="store_main">
				<dl>
					<dd>
					   <img src="/images/common/logo.png"><br>
					   <span>COPYRIGHT©2017룸즈에이 .ALL RIGHTS RESERVED.<a href="/sub/sub_ya.html">이용약관</a><a href="/sub/sub_info.html">개인정보 취급방침</a></span><br>
					   사업자등록번호: (주) 252-86-00226 ㅣ &nbsp;E-mail: rooms_a@naver.com<br>
					   광주수완점 사업자등록번호: 635-68-00354 ㅣ &nbsp;E-mail : limdaekyung@naver.com<br>
					   룸즈에이
					</dd>
				</dl>
			</div>
		</div>
	</div> <!--// wrap -->
</div> <!--// footer -->


</div> <!--// #wrap_out -->

</body>

</body>
</html>