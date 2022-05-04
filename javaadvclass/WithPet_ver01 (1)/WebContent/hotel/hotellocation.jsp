<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Verti by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>WithPet :: 지도찾기</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/assets/css/main.css" />
	</head>
	<body class="is-preload homepage">
		<div id="page-wrapper">

			<%@ include file='/header.jsp' %>
			
			<!-- Banner -->
				<div id="banner-wrapper" style="align : center">
					<div id="banner" class="box container">
						<!--여기사이에  -->
                        
<p>지역을 선택하세요</p>
<div id="map" style="width:600px;height:600px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2d77568325da0db92aea622ad602dbda"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(36.77253733472615, 127.82223873769071), // 지도의 중심좌표
        level: 13 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
 
iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다


// 마커를 표시할 위치와 title 객체 배열입니다 
var positions = [
    {
        title: '<div style="padding:5px;"><a href="">▶ 서울특별시</a><br><a href="">▶ 인천광역시</a><br><a href="">▶ 경기도</a></div>', 
        
        latlng: new kakao.maps.LatLng(37.566673310352336, 126.9787881302908)
    },
    {
        title: '<div style="padding:5px;"><a href="">▶ 강원도</a></div>', 
        latlng: new kakao.maps.LatLng(37.825154864674694, 128.7798460470027)
    },
    {
        title: '<div style="padding:5px;"><a href="">▶ 충청도</a></div>', 
        latlng: new kakao.maps.LatLng(36.65915987036378, 126.67045285007806)
    },
    {
        title: '<div style="padding:5px;"><a href="">▶ 강원도</a></div>', 
        latlng: new kakao.maps.LatLng(35.179793981625984, 129.07466315760195)
    },
    {
        title: '<div style="padding:5px;"><a href="">▶ 전라도</a></div>', 
        latlng: new kakao.maps.LatLng(35.19017505296151, 126.89917264356092)
    }
];

// 마커 이미지의 이미지 주소입니다
var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
    
for (var i = 0; i < positions.length; i ++) {
    
    
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new kakao.maps.Size(24, 35); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커를 표시할 위치
        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage // 마커 이미지 
    });     
     // 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            position : positions[i].latlng,
            content :  positions[i].title
});
     // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
        infowindow.open(map, marker); 
}
</script>
                        
						<!--여기사이에  -->
					</div>
				</div>


			<%@ include file='/footer.jsp' %>

	</body>
</html>