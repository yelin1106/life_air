<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<!-- 클릭시 변환하는 색에 대해서는(information_type&choice)주석으로 처리하였습니다-->
<html>
<head>
<meta charset="UTF-8">
<title>LifeAir</title>
<style>
	* {margin: 0; padding: 0;}
	
	body{background-color: #ececf0; overflow-y: auto;}
	
	#main{background-color: #ececf0; margin: 0 auto; }
	#questiondiv{background-color: #474747; position: relative; display: table; text-align: center;}
	#question{display: table-cell; text-align: center; vertical-align: middle;font-family: "Roboto"; font-weight: 100; font-stretch: normal; font-style: normal; letter-spacing: normal; text-align: center; color: #ffffff; line-height: 1.42;}
	
	#contentdiv{text-align: center; position: relative;}
	#content{font-family:'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; color: #474747; line-height: 1.43;}
	
	#announcediv{text-align: center; position: relative;}
	#announce{font-family: 'Noto Sans CJK KR'; font-weight: 300; font-stretch: normal; font-style: normal; line-height: 1.63; letter-spacing: -0.8px; color: #707070;}
	
	#inputnamediv{background-color: #ffffff; opacity: 0.5; position: relative; display: table; text-align: left;}
	/*#inputnamediv{background-color: #474747; position: relative; display: table; text-align: left;}*/
	#name{position: relative; font-family: 'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; text-align: left; color: #474747; border: none; outline: none; background-color: transparent;}
	/*#name{position: relative; font-family: 'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; text-align: left; color: #ffffff; border: none; outline: none; background-color: transparent;}*/
	#name::placeholder{font-family: 'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; text-align: left; color: #474747;}
	#x_btn{position: relative;}
	/*#name::placeholder{font-family: 'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; text-align: left; color: #ffffff;}
	#x_btn{position: relative;}*/
	#randomname{position: relative; font-family:'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; text-align: left; color: #474747; border: none; outline: none; background-color: transparent;}
	/*#randomname{position: relative; font-family:'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; text-align: left; color: #ececf0; border: none; outline: none; background-color: transparent;}*/
	
	.selectbox{background-color: #ffffff; opacity: 0.5; text-align: center; position: relative; float: left;}
	.selectlabel{font-family: 'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.17; letter-spacing: -1.2px; text-align: center; color: #474747; position: relative;}
	
	.selected{background-color: #474747; opacity: 1; text-align: center; position: relative; float: left;}
	.selectedlabel{color: #ffffff; font-family: 'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.17; letter-spacing: -1.2px; text-align: center; position: relative;}
	
	#footplane{position: relative;}
	
	@media all and (min-width: 360px) and (max-width: 768px) { /*모바일 */
		#main{width:360px; height: 640px;}
		#backpage{width: 27.7px; height: 25.6px; position: relative; top:32px; left:20px;}
		#questiondiv{width: 160px; height: 32px; border-radius: 16px; top:40px; left: 100px;}
		#question{font-size: 24px;}
		
		#contentdiv{top:48px;}
		#content{font-size: 28px; letter-spacing: -1.4px;}
		
		#announcediv{top:45px;}
		#announce{font-size: 16px;}
		
		#inputnamediv{width: 320px; height: 56px; border-radius: 32px; top:56px; left: 20px;}
		#name{width: 180px; height: 36px; top:10px; left:24px; font-size: 24px; line-height: 1.42; letter-spacing: -1.2px;}
		#x_btn{width: 24px; height: 24px; top:12px; left:28px;}
		#randomname{font-size: 16px; line-height: 2.13; letter-spacing: -0.8px; top: 7px; left:38px;}
		
		.selectbox{width: 96px; height: 96px; border-radius: 10px;}
		.selectlabel{font-size: 24px; top:30px;}
		#woman{top:90px; left:20px;} #man{top:90px; left:36px;} #etc{top:90px; left:52px; font-size: 16px;}
		#etclabel{font-size: 16px;}
		
		.selected{border-radius: 76px; width: 152px; height: 152px;}
		.selectedlabel{font-size: 24px; top:58px;}
		
		#footplane{width: 52px; height: 52px; top:322px; left:-130px; padding-bottom: 66px; }
	}
	
	@media all and (min-width: 768px) { /*태블릿 */
		#main{width:768px; height: 1024px;}
		#backpage{width: 39.5px; height: 36.5px; position: relative; top:100px; left:72px;}
		#questiondiv{width: 228px; height: 46px; border-radius: 23px; top:158px; left: 270px;}
		#question{font-size: 34px;}
		
		#contentdiv{top:185px;}
		#content{font-size: 40px; letter-spacing: -2px;}
		
		#announcediv{top:185px;}
		#announce{font-size: 22px;}
		
		#inputnamediv{width: 456px; height: 80px; border-radius: 40px; top:246px; left: 156px;}
		#name{width: 263px; height: 50px; top:13px; left:34px; font-size: 34px; line-height: 1.42; letter-spacing: -1.2px;}
		#x_btn{width: 34px; height: 34px; top:18px; left:28px;}
		#randomname{font-size: 22px; line-height: 2.13; letter-spacing: -0.8px; top: 10px; left:48px;}
		
		.selectbox{width: 137px; height: 137px; border-radius: 10px;}
		.selectlabel{font-size: 34px; top:44px;}
		#woman{top:280px; left:156px;} #man{top:280px; left:178px;} #etc{top:280px; left:200px;}
		#etclabel{font-size: 22px;}
		
		.selected{border-radius: 150px; width: 150px;; height: 150px;}
		.selectedlabel{font-size: 34px; top:50px;}
		
		#footplane{width: 76px; height: 75px; top:518px; left:-70px; padding-bottom: 149px;}
	}
</style>
</head>

<body>
	<div id = "main">
		<img src = "image/뒤로가기.svg" id = "backpage" onClick="location.href = 'Q07.html'">
		
		<div id = "questiondiv">
			<label id = "question">Information</label>
		</div>
		
		<div id ="contentdiv"><label id = "content">사람 (1) 의 상세정보</label></div>
		<div id = "announcediv"><label id = "announce">※ 상세정보를 입력해주세요.</label></div>
		
		<div id = "inputnamediv">
			<input type = "text" id = "name" placeholder = "이름">
			<img src = "image/엑스.svg" id = "x_btn">
			<!--<img src = "image/엑스_화이트.svg" id = "x_btn">-->
			<button id = "randomname">가명부여</button>
		</div>
		
		<div class = "selectbox " id = "woman"><label class = "selectlabel ">여성</label></div>
		<!--선택시
		<div class = "selectbox selected" id = "woman"><label class = "selectlabel selectedlabel">여성</label></div>
		-->
		<div class = "selectbox" id = "man"><label class = "selectlabel">남성</label></div>
		<div class = "selectbox" id = "etc"><label class = "selectlabel" id = "etclabel">기타 /<br>인터섹스</label></div>
		
		<img src = "image/plane.svg" id = "footplane" onClick="location.href = 'Q07_type.html'">
	</div>
</body>
</html>