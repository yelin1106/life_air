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
	
	#main{background-color: #ececf0; margin: 0 auto; }
	#questiondiv{background-color: #474747; position: relative; display: table; text-align: center;}
	#question{display: table-cell; text-align: center; vertical-align: middle;font-family: "Roboto"; font-weight: 100; font-stretch: normal; font-style: normal; letter-spacing: normal; text-align: center; color: #ffffff; line-height: 1.42;}
	
	#contentdiv{text-align: center; position: relative;}
	#content{font-family:'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; color: #474747; line-height: 1.43;}
	
	#announcediv{text-align: center; position: relative;}
	#announce{font-family: 'Noto Sans CJK KR'; font-weight: 300; font-stretch: normal; font-style: normal; line-height: 1.63; letter-spacing: -0.8px; color: #707070;}
	
	.selectbox{background-color: #f1f1f3; text-align: center; position: relative; float: left;}
	.selectlabel{font-family: 'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.17; letter-spacing: -1.2px; text-align: center; color: #474747; opacity: 0.5; position: relative;}
	.x_btn{position: relative;}
	.heart{position: relative; float: left;}
	
	.selected{background-color: #474747; opacity: 1; text-align: center; position: relative; float: left;}
	.selectedlabel{color: #ffffff; opacity: 1; font-family: 'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.17; letter-spacing: -1.2px; text-align: center; position: relative;}
	
	#footerplane{position: relative;}
	
	@media all and (min-width: 360px) and (max-width: 768px) { /*모바일 */
		#main{width:360px; height: 640px;}
		#backpage{width: 27.7px; height: 25.6px; position: relative; top:32px; left:20px;}
		#questiondiv{width: 160px; height: 32px; border-radius: 16px; top:40px; left: 100px;}
		#question{font-size: 24px;}
		
		#contentdiv{top:48px;}
		#content{font-size: 28px; letter-spacing: -1.4px;}
		
		#announcediv{top:45px;}
		#announce{font-size: 16px;}
		
		.selectbox{width: 320px; height: 56px; border-radius: 32px;  left:20px;}
		.selectlabel{font-size: 24px; top:13px; left:-16px;}
		.x_btn{width: 24px; height: 24px; top:-13px; left:130px;}
		.heart{width: 22.6px; height: 17px; top:20px; left:16px;}
		#person{top:80px;} #animal{top:96px;} #plant{top:112px;} #furniture{top:128px;}
		
		#footerplane{width: 52px;height: 52px; top:180px; left:150px; padding-bottom: 66px;}
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
		
		.selectbox{width: 456px; height: 80px; border-radius: 40px;  left:156px;}
		.selectlabel{font-size: 34px; top:18px; left:-22px;}
		.x_btn{width: 35px; height: 34px; top:-18px; left:180px;}
		.heart{width: 32.3px; height: 24.2px; top:28px; left:22px;}
		#person{top:229px;} #animal{top:252px;} #plant{top:275px;} #furniture{top:298px;}
		
		#footerplane{width: 74px;height: 74px; top:700px; left:-120px;padding-bottom: 149px;}
	}
</style>
</head>

<body>
	<div id = "main">
		<img src = "image/뒤로가기.svg" id = "backpage" onClick="location.href = 'Q06.html'">
		
		<div id = "questiondiv">
			<label id = "question">Question <font style = "font-weight: normal;">07</font></label>
		</div>
		
		<div id ="contentdiv"><label id = "content">당신의 동반자가 궁금해요</label></div>
		<div id = "announcediv"><label id = "announce">※ 버튼을 클릭하여 상세정보를 입력해주세요.</label></div>
		
		<div class = "selectbox" id = "person">
			<img src = "image/하트.svg" class = "heart">
			<div class = "selectlabel">데이비드</div>
			<img src = "image/엑스.svg" class = "x_btn">
		</div>
		
		<!--선택시
		<div class = "selectbox selected" id = "person">
			<div class = "selectlabel selectedlabel">사람(1)</div>
			<img src = "image/엑스_화이트.svg" class = "x_btn">
		</div>
		-->
		
		<div class = "selectbox" id = "animal">
			<img src = "image/하트.svg" class = "heart">
			<div class = "selectlabel">이스트</div>
			<img src = "image/엑스.svg" class = "x_btn">
		</div>
		
		<div class = "selectbox" id = "plant">
			<img src = "image/하트.svg" class = "heart">
			<div class = "selectlabel">현철</div>
			<img src = "image/엑스.svg" class = "x_btn">
		</div>
		
		<div class = "selectbox" id = "furniture">
			<img src = "image/하트.svg" class = "heart">
			<div class = "selectlabel">내친구</div>
			<img src = "image/엑스.svg" class = "x_btn">
		</div>
		
		<img src = "image/plane.svg" id = "footerplane" onClick = "location.href = 'Q08.html'">
	</div>
</body>
</html>