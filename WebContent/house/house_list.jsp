<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	img {
		border-radius: 7px;
	}
	
	#roominfo {
		width: 500px;
	}
	
	div {
		float: left;
	}
	
 	.house_list {
		margin: 40px;
	} 

	#google-map {
		/* border-radius: 7px; */
        width: 900px;
        height: 1000px;
        margin: 100px 40px;
        padding: 0;
	}
</style>
</head>
<body>

<div class="house_list">
	<h1>${list[0].getHcatg()} 지역에 있는 방 리스트 입니다</h1>

	<table>
		<c:if test="${!empty list}">
			<c:forEach items="${list}" var="ob">
				<tr onClick = "location.href='/ebb/houseview.do?hidx=${ob.getHidx()}'"
					onMouseOver = "this.style.background='#e9e9e9'"
					onMouseOut = "this.style.background='#FFFFFF'">
					<td align="center">
						<img src="/ebb/img/house/${ob.getHimage()}" width="300" height="250" border="0">
					</td>
					<td id="roominfo" align="center">
						방이름: ${ob.getHname()}<br>
						편의시설: ${ob.getHfacility()}<br>
						침대수: ${ob.getHbed()}<br>
						화장실수: ${ob.getHbat()}<br>
						지역: ${ob.getHcatg()}<br>
					</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
</div>

<!-- 구글맵 -->
<div id="google-map"></div>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBL4W__pbidTMRcGK9W60sVTe_sjBJBzkc&callback=initMap">
</script>
<script>
       function initMap() {
           var map = new google.maps.Map(document.getElementById('google-map'), {
               zoom: 12.5,
               center: {
                   lat: 35.87110100714382,
                   lng: 128.60169690333006
               }
           });
            
           var geocoder = new google.maps.Geocoder();

           geocodeAddress(geocoder, map);
               
           function geocodeAddress(geocoder, resultMap) {
            var locations = [];
            var house = [];
           	<c:forEach items="${list}" var="ob">
           		house.push('${ob.getHaddress()}');
           		house.push('${ob.getHname()}');
           		locations.push(house);
           		house = [];
           	</c:forEach>
               
               var infowindow = new google.maps.InfoWindow();
               for (var i = 0; i < locations.length; i++) {
                    geocoder.geocode({'address': locations[i][0]}, (function(i) {return function(result, status) {
                      //console.log(result);
                      //console.log(status);
                       if (status === 'OK') {
                           // 맵의 중심 좌표를 설정한다.
	                           resultMap.setCenter(result[0].geometry.location);
                           // 맵의 확대 정도를 설정한다.
	                           resultMap.setZoom(10);
                           // 맵 마커
	                           var marker = new google.maps.Marker({
                               map: resultMap,
                               position: new google.maps.LatLng(result[0].geometry.location.lat(), result[0].geometry.location.lng()),
                           });
                           
                           //마커 클릭리스너
                           google.maps.event.addListener(marker, 'click', (function(marker, i) {
                               return function() {
                                 infowindow.setContent(locations[i][1]);
                                 infowindow.open(map, marker);
                               }
                             })(marker, i));
                           // 위도
                           //console.log('위도(latitude) : ' + marker.position.lat());
                           // 경도
                           //console.log('경도(longitude) : ' + marker.position.lng());
                        	
                        } else {
                          alert('지오코드가 다음의 이유로 성공하지 못했습니다 : ' + status);
                      	 } 
                      

                  };
                    })(i)
                    ); 
               }
           }  
       }
   </script>
</body>
</html>































