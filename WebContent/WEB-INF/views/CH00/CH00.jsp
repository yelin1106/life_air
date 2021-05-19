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
	#startdiv{background-color: #474747; position: relative; display: table; text-align: center;}
	#start{display: table-cell; text-align: center; vertical-align: middle;font-family: "Roboto"; font-weight: 100; font-stretch: normal; font-style: normal; letter-spacing: normal; text-align: center; color: #ffffff; line-height: 1.42;}
	
	#partnerdiv{text-align: center; position: relative;}
	#partner{font-family:'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; color: #474747; line-height: 1.43;}
	
	
	@media all and (min-width: 360px) and (max-width: 768px) { /*모바일 */
		#main{width:360px; height: 640px;}
		#startdiv{width: 160px; height: 32px; border-radius: 16px; top:256px; left: 100px;}
		#start{font-size: 24px;}
		
		#partnerdiv{top:304px;}
		#partner{font-size: 28px;  letter-spacing: -1.4px;}
		
		#footplane{width: 52px; height: 52px; position: relative; top:522px; left:154px; padding-bottom: 66px; }
	}
	@media all and (min-width: 768px) { /*태블릿 */
		#main{width:768px; height: 1024px;}
		#startdiv{width: 232px; height: 47px; border-radius: 23px; top:409px; left: 268px;}
		#start{font-size: 33px;}
		
		#partnerdiv{top:479px;}
		#partner{font-size: 40px; letter-spacing: -2px;}
		
		#footplane{width: 76px; height: 75px; position: relative; top:800px; left:346px; padding-bottom: 149px;}
	}
</style>
</head>


<body>
	<div id = "main">
		<div id = "startdiv">
			<label id = "start">Start</label>
		</div>
		<div id ="partnerdiv"><label id = "partner">그 언젠가, 당신과 함께할<br>동반자는 누구일까요?</label></div>
		<img src = "image/plane.svg" id = "footplane" onClick="location.href = 'Loading.do'">

	</div>
</body>
</html>
