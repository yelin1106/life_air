<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<!-- 클릭시 변환하는 색에 대해서는(Q03_choice) 주석으로 처리하였습니다-->
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
	
	.selectbox{opacity: 0.5;background-color: #ffffff;text-align: center; position: relative;}
	.selectlabel{font-family:'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.42; letter-spacing: -1.2px; text-align: center; color: #474747; position: relative;}
	
	.selected{opacity: 1; background-color: #474747;text-align: center; position: relative;}
	.selectedlabel{font-family:'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.42; letter-spacing: -1.2px; text-align: center; color: #ffffff; position: relative;}
	
	#Q03{position: relative;}
	
	@media all and (min-width: 360px) and (max-width: 768px) { /*모바일 */
		#main{width:360px; height: 640px;}
		#backpage{width: 27.7px; height: 25.6px; position: relative; top:32px; left:20px;}
		#questiondiv{width: 160px; height: 32px; border-radius: 16px; top:40px; left: 100px;}
		#question{font-size: 24px;}
		
		#contentdiv{top:48px;}
		#content{font-size: 28px; letter-spacing: -1.4px;}
		
		.selectbox{width: 320px; height: 56px; border-radius: 32px; position: relative; left:20px; }
		.selectlabel{font-size: 16px; top:16px;}
		#star1{top:89px;}
		#star2{top:105px;}
		#star3{top:121px;}
		#star4{top:137px;}
		#star5{top:153px;}
		#star6{top:169px;}
		
		#Q03{width: 232.4px; height: 32px; top:208px; left:64px; padding-bottom: 32px;}
	}
	
	@media all and (min-width: 768px) { /*태블릿 */
		#main{width:768px; height: 1024px;}
		#backpage{width: 39.5px; height: 36.5px; position: relative; top:100px; left:72px;}
		#questiondiv{width: 228px; height: 46px; border-radius: 23px; top:158px; left: 270px;}
		#question{font-size: 34px;}
		
		#contentdiv{top:185px;}
		#content{font-size: 40px; letter-spacing: -2px;}
		
		.selectbox{width: 456.9px; height: 80px; border-radius: 40px; position: relative; left:155.6px; }
		.selectlabel{font-size: 22px; top:22px;}
		#star1{top:244.2px;}
		#star2{top:267px;}
		#star3{top:289.8px;}
		#star4{top:312.6px;}
		#star5{top:335.4px;}
		#star6{top:358.2px;}
		
		#Q03{width: 331.8px;height: 45.7px; top:456.9px; left:218.4px; padding-bottom: 84.1px;}
	}
</style>
</head>

<body>
	<div id = "main">
		<img src = "image/뒤로가기.svg" id = "backpage" onClick="location.href = 'Q02.do'">
		
		<div id = "questiondiv">
			<label id = "question">Question <font style = "font-weight: normal;">03</font></label>
		</div>
		
		<div id ="contentdiv"><label id = "content">당신은 어디에서 왔나요?</label></div>
		
		<div id = "star1" class = "selectbox"><label class = "selectlabel">어제보다 내일 더 빛나는 별, 멘칼리난</label></div>
		<!--선택 시 
			<div id = "star1" class = "selectbox selected"><label class = "selectlabel selectedlabel">어제보다 내일 더 빛나는 별, 멘칼리난</label></div>
		-->
		<div id = "star2" class = "selectbox"><label class = "selectlabel">가까이서 빛나는 따듯한 별, 프록시마 </label></div>
		<div id = "star3" class = "selectbox"><label class = "selectlabel">놀라운 균형을 가진 별, 트라피스트</label></div>
		<div id = "star4" class = "selectbox"><label class = "selectlabel">깊고 짙은 어둠에 잠긴 별, 알비레오</label></div>
		<div id = "star5" class = "selectbox"><label class = "selectlabel">불꽃 같은 아름다움이 있는 별, 바너드</label></div>
		<div id = "star6" class = "selectbox"><label class = "selectlabel">빛나는 자유로움을 가진 별, 베텔게우스</label></div>
		
		<img src = "image/Q3.svg" id = "Q03">
	</div>
</body>
</html>