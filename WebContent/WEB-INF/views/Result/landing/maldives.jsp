<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>LifeAir</title>
<style>
	* {margin: 0; padding: 0;}
	
	body{background-color: #ececf0; overflow-y: auto;}
	
	#main{background-color: #ececf0; margin: 0 auto;}
	#boardingdiv{background-color: #79e6d1; position: relative; display: table; text-align: center;}
	#boarding{display: table-cell; text-align: center; vertical-align: middle;font-family: "Roboto"; font-weight: 100; font-stretch: normal; font-style: normal; letter-spacing: normal; text-align: center; color: #ffffff; line-height: 1.42;}
	
	#boardingpassdiv{text-align: center; position: relative;}
	#boardingpass{font-family:'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; color: #474747;}
	
	@media all and (min-width: 360px) and (max-width: 768px) { /*모바일 */
		#main{width:360px; height: 640px;}
		#boardingdiv{width: 160px; height: 32px; border-radius: 16px; top:72px; left: 100px;}
		#boarding{font-size: 24px;}
		
		#boardingpassdiv{top:88px;}
		#boardingpass{font-size: 28px; line-height: 1.43; letter-spacing: -1.4px;}
		
		#passport{width:200px; height:248px; position: relative; top:111px; left:90px;}
	
		#footplane{width: 52px; height: 52px; position: relative; top:259px; left:-50px; padding-bottom: 66px; }
	}
	
	@media all and (min-width: 768px) { /*태블릿 */
		#main{width:768px; height: 1024px;}
		
		#boardingdiv{width: 235px; height: 47px; border-radius: 24px; top:158px; left: 260px;}
		#boarding{font-size: 34px;}
		
		#boardingpassdiv{top:182px;}
		#boardingpass{font-size: 40px; line-height: 1.43; letter-spacing: -1.4px;}
		
		#passport{width:294px; height: 364px; position: relative; top:259px; left:237px;}
	
		#footplane{width: 76px; height: 77px; position: relative; top:550px; left:30px; padding-bottom:128px;}
	}
</style>
</head>

<body>
	<div id = "main">
		<div id = "boardingdiv">
			<label id = "boarding">Landing</label>
		</div>
		
		<div id = "boardingpassdiv">
			<label id = "boardingpass">여행지에 도착했어요</label>
		</div>
		
		<img src = "image/여권_몰디브.svg" id = "passport">
		
		<img src = "image/하단_몰디브.svg" id = "footplane" onClick="location.href = 'ticket_몰디브.html'">
	</div>
</body>
</html>