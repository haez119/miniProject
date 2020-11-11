<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d14d1dc3b31245d47fe608698724ea37&libraries=services" ></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d14d1dc3b31245d47fe608698724ea37&libraries=LIBRARY"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d14d1dc3b31245d47fe608698724ea37&libraries=services,clusterer,drawing"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
	
		var addr = ${json};
		var addresss = new Array();
		var LaMa;
		var cod;
		
		var jb = new Object();
	/* 	jb['a'] = 100;
		jb['b'] = 200;
		jb['c'] = 300; */
		
		
		for(var i=0; i<addr.length; i++) {
			
			
			var ard = addr[i].address;
			var name = addr[i].branch_name;
			
			var geocoder = new kakao.maps.services.Geocoder();
			
			geocoder.addressSearch(ard, function(result, status) {
				if (status === kakao.maps.services.Status.OK) {
					
					var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
					La = coords.La;
					Ma = coords.Ma;
				}
				LaMa = coords.La + "," + coords.Ma;
				console.log("블럭 안");
				jb.push(name,LaMa);
				
			});  
			
			// jb[name]= LaMa;
			// addresss.push( jb[name]);
			
			console.log("블럭밖");
			console.log(jb);
			
		}
		
		console.log(jb);
		// 주소-좌표 변환 객체를 생성합니다
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(35.870626, 128.589425), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
		
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		
		
		
		
	/* 
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch("대구 동성로", function(result, status) {
	
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {
	
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
				console.log(coords.La);
				console.log(coords.Ma);
				
				
		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });
	
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0; color:black">${branch_name}</div>'
		        });
		        infowindow.open(map, marker);
	
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } else {
		    	alert("주소가 정확하지 않습니다.")
		    } 
		});    
			   
		    
		     */
		    

		    
		    
	});	
		
	</script>
<title></title>

</head>
<body>
	<div align="center">
		<h1>오시는길</h1>
		<div id="map" style="width:500px;height:350px;"></div>
	</div>
</body>
</html>