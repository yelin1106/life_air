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
	
	#backpage{position: relative;}
	
	#passengerdiv{position: relative;}
	#passenger{font-family: 'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.5; letter-spacing: -0.5px; color: #707070;}
	#familynamediv{position: relative;}
	#familyname{font-family: 'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.5; letter-spacing: -0.5px; color: #707070;}
	#passport{position: relative; text-align: center;}
	
	#capture{position: relative; text-align: center;}
	
	@media all and (min-width: 360px) and (max-width: 768px) { /*모바일 */
		#main{width:360px; height: 640px;}
		#backpage{width: 27.7px; height: 25.6px; top:32px; left:20px;}
		
		#passport{width: 360px; height: 360px; top:120px;}
		#passengerdiv{top:23px; left:151px;}
		#passenger{font-size: 10px;}
		#familynamediv{top:28px; left:151px;}
		#familyname{font-size: 5px;}
		
		#capture{width: 56px; height: 56px; top:130px; left:152px; padding-bottom: 62px;}
	}
	
	@media all and (min-width: 768px) { /*태블릿 */
		#main{width:768px; height: 1024px;}
		#backpage{width: 41.3px; height: 38.3px; top:-400px; left:72px;}
		
		#passport{width: 538px; height: 539px; top:200px; left:115px;}
		#passengerdiv{top:58px; left:386px;}
		#passenger{font-size: 14px;}
		#familynamediv{top:78px; left:386px;}
		#familyname{font-size: 7px;}
		
		#capture{width: 84px; height: 84px; top:250px; left:382px; padding-bottom: 98px;}
	}
</style>
</head>

<body>
	<div id = "main">
		<img src = "image/뒤로가기_영국.svg" id = "backpage" onClick="location.href = 'ticket_영국.html'">
		
		<img src = "image/뽐내기_영국.svg" id = "passport">
		<div id = "passengerdiv"><label id = "passenger">청승넨/여성</label></div>
		<div id = "familynamediv"><label id = "familyname">청승넨의 가족</label></div>
		
		<img src = "image/저장_영국.svg" id = "capture">
	</div>
</body>
</html>