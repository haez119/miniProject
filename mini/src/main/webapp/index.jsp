<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d14d1dc3b31245d47fe608698724ea37"></script>
<script>
	$(document).ready(function() {
		
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(35.870626, 128.589425),
			level: 3 
		};

		var map = new kakao.maps.Map(container, options);
		
		// 마커가 표시할 위치
		var markerPosition  = new kakao.maps.LatLng(35.870626, 128.589425); 
		
		// 마커 생성
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});
		
		var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
        });
		
		// 마커가 표시되도록 설정
		marker.setMap(map);
		
		// 마커 지우기
		
		// marker.setMap(null);

		
	});	
		
	</script>
<title></title>

</head>
<body>
	<%-- <% response.sendRedirect("main.do"); %> --%>
	
	<div align="right">
		<h1>오시는길</h1>
		<div id="map" style="width:500px;height:400px;" ></div>
	</div>
	
	
	
	
	
	
</body>
</html>