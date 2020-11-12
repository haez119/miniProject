<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.left-box {
  color: black;
  padding-top: 30px;
  float: left;
  width: 45%;
  
}
.right-box {
  
  color: black;
  padding-top: 30px;
  float: right;
  width: 45%;
}
</style>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d14d1dc3b31245d47fe608698724ea37&libraries=services" ></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d14d1dc3b31245d47fe608698724ea37&libraries=LIBRARY"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d14d1dc3b31245d47fe608698724ea37&libraries=services,clusterer,drawing"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function() {
	
	var addr = ${json};
	var b_name ="";
	
	
	var mapContainer = document.getElementById('map'),
		mapOptions = {
			center: new kakao.maps.LatLng(35.870626, 128.589425),
			level: 3
		};
	
	var map = new kakao.maps.Map(mapContainer, mapOptions); // 주소-좌표 변환 객체를 생성합니다 
	var geocoder = new kakao.maps.services.Geocoder(); // 주소로 좌표를 검색합니다 
	
	geocoder.addressSearch( "대구 동성로", function(result, status) { // 정상적으로 검색이 완료됐으면 
		
		if (status === kakao.maps.services.Status.OK) { 
			var coords = new kakao.maps.LatLng(result[0].y, result[0].x); 
			var message = 'latlng: new kakao.maps.LatLng(' + result[0].y + ', '; 
			message += result[0].x + ')'; 
			var resultDiv = document.getElementById('clickLatlng'); 
			resultDiv.innerHTML = message; // 결과값으로 받은 위치를 마커로 표시합니다 
			var marker = new kakao.maps.Marker({ map: map, position: coords }); // 인포윈도우로 장소에 대한 설명을 표시합니다 
			var infowindow = new kakao.maps.InfoWindow({ 
				content: '<div style="width:150px;text-align:center;padding:6px 0;"> 동성로 본점 </div>' }); 
			infowindow.open(map, marker); // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다 
			map.setCenter(coords); 
			} 
	});
	
	for(var i=0; i<addr.length; i++) {
		b_name = addr[i].branch_name;
		$('#b_sel').append('<option value="'+ b_name +'">'+ b_name +'</option>');
	}
	
	$('#b_sel').change(function () {
		var bname = this.value;
		for(var i=0; i<addr.length; i++) {
			if(bname == addr[i].branch_name ) {
				address = addr[i].address;
				console.log(bname, address);
				
				var map = new kakao.maps.Map(mapContainer, mapOptions); // 주소-좌표 변환 객체를 생성합니다 
				var geocoder = new kakao.maps.services.Geocoder(); // 주소로 좌표를 검색합니다 
				
				geocoder.addressSearch( address, function(result, status) { // 정상적으로 검색이 완료됐으면 
					
					if (status === kakao.maps.services.Status.OK) { 
						var coords = new kakao.maps.LatLng(result[0].y, result[0].x); 
						var message = 'latlng: new kakao.maps.LatLng(' + result[0].y + ', '; 
						message += result[0].x + ')'; 
						var resultDiv = document.getElementById('clickLatlng'); 
						resultDiv.innerHTML = message; // 결과값으로 받은 위치를 마커로 표시합니다 
						var marker = new kakao.maps.Marker({ map: map, position: coords }); // 인포윈도우로 장소에 대한 설명을 표시합니다 
						var infowindow = new kakao.maps.InfoWindow({ 
							content: '<div style="width:150px;text-align:center;padding:6px 0;">'+ bname +'</div>' }); 
						infowindow.open(map, marker); // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다 
						map.setCenter(coords); 
						} 
				});
				
			}
		}

		
	});
	
	
	
	
	
});
</script>
</head>
<body>
<div>
	<div class="left-box">
		<img src="${pageContext.request.contextPath}/img/캡처.PNG">
	</div>
	<div class="right-box">
		<h1 style="color: white">오시는길</h1>
		<hr style="border-color: white">
		<select name="b_sel" id="b_sel"></select>
		<p>
    	<div id="map" style="width:500px;height:350px;"></div>
    	<div id="clickLatlng"></div>
	</div>
</div>
</body>
</html>