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
	#chapterdiv{background-color: #474747; position: relative; display: table; text-align: center;}
	#chapter{display: table-cell; text-align: center; vertical-align: middle;font-family: "Roboto"; font-weight: 100; font-stretch: normal; font-style: normal; letter-spacing: normal; text-align: center; color: #ffffff; line-height: 1.42;}
	
	#contentdiv{text-align: center; position: relative;}
	#content{font-family:'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; color: #474747; line-height: 1.36;}
	
	@media all and (min-width: 360px) and (max-width: 768px) { /*모바일 */
		#main{width:360px; height: 640px;}
		#chapterdiv{width: 160px; height: 32px; border-radius: 16px; top:256px; left: 100px;}
		#chapter{font-size: 24px;}
		
		#contentdiv{top:304px;}
		#content{font-size: 28px;  letter-spacing: -1.4px;}
		
		#footplane{width: 52px; height: 52px; position: relative; top:522px; left:154px; padding-bottom: 66px; }
	}
	
	@media all and (min-width: 768px) { /*태블릿 */
		#main{width:768px; height: 1024px;}
		#chapterdiv{width: 232px; height: 47px; border-radius: 23px; top:409px; left: 268px;}
		#chapter{font-size: 33px;}
		
		#contentdiv{top:479px;}
		#content{font-size: 40px; letter-spacing: -2px;}
		
		#footplane{width: 76px; height: 75px; position: relative; top:800px; left:346px; padding-bottom: 149px;}
		
	}

</style>
</head>

<body>
	<div id = "main">
		<div id = "chapterdiv">
			<label id = "chapter">Chapter <font style = "font-weight: normal;">01</font></label>
		</div>
		
		<div id ="contentdiv"><label id = "content">먼저, 당신을 알려주세요</label></div>
		
		<img src = "image/plane.svg" id = "footplane" onClick="location.href = 'Q01.do'">
	
	</div>
</body>
</html>