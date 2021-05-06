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
	#boardingdiv{background-color: #474747; position: relative; display: table; text-align: center;}
	#boarding{display: table-cell; text-align: center; vertical-align: middle;font-family: "Roboto"; font-weight: 100; font-stretch: normal; font-style: normal; letter-spacing: normal; text-align: center; color: #ffffff; line-height: 1.42;}
	
	#familydiv{background-color: #f5f5f7; position: relative; text-align: left;}
	#familylabeldiv{position: relative; text-align: left;}
	#familylabel{width:280px;position: relative;font-family: 'Noto Sans CJK KR'; font-weight: 300; font-stretch: normal; font-style: normal; line-height: 1.68; letter-spacing: -1.1px; color: #707070;}
	
	#signdiv{background-color: #f5f5f7; position: relative; text-align: left;}
	#signtitle{position: relative;font-family: 'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 2.5; letter-spacing: -1.1px; color: #474747;}
	#signcontentdiv{position: relative; text-align: left;}
	#signcontent{position: relative;font-family: 'Noto Sans CJK KR'; font-weight: 300; font-stretch: normal; font-style: normal; line-height: 1.68; letter-spacing: -1.1px; color: #707070;}
	
	#myfamilydiv{background-color: #f5f5f7; position: relative; text-align: left;}
	#myfamilytitlediv{position: relative; text-align: center;}
	#myfamilytitle{font-family: 'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 2.5; letter-spacing: -1.1px; color: #474747;}
	
	#myfamilycontentdiv{background-color: #f5f5f7; position: relative; text-align: left;}
	#myfamilycontentdiv{position: relative; text-align: left;}
	#myfamilycontent{font-family: 'Noto Sans CJK KR'; font-weight: 300; font-stretch: normal; font-style: normal; line-height: 1.68; letter-spacing: -1.1px; color: #707070;}
	
	#linkdiv{position: relative; text-align: center;}
	#linklabel{float: left; position: relative;}
	#link{font-family: 'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.4; letter-spacing: -2px; color: #474747;}
	#imgl{position: relative; float: left;}
	#imgr{position: relative; float: left;}
	
	.go{position: relative; text-align: left; display: table; background-color: #f5f5f7}
	.golabeldiv{position: relative; float: left;}
	.golabel{display: table-cell; font-family: 'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 2.14; letter-spacing: -1.1px; color: #474747; opacity: 0.5;}
	.goimg{position: relative; float: left;}
	
	#plane{position: relative; text-align: center;}
	
	#line{position: relative;}
	
	#peoplediv{position: relative; text-align: center;}
	#people{opacity: 0.5; font-family:'Noto Sans CJK KR'; font-weight: 300; font-stretch: normal; font-style: normal; line-height: 1.81; letter-spacing: -0.8px; color: #474747;}
	
	@media all and (min-width: 360px) and (max-width: 768px) { /*모바일 */
		#main{width:360px; height: 640px;}
		#boardingdiv{width: 160px; height: 32px; border-radius: 16px; top:72px; left: 100px;}
		#boarding{font-size: 24px;}
		
		#familydiv{width: 320px; height: 234px; border-radius: 15px; top:128px; left:20px;}
		#familylabeldiv{width:270px; top:32px; left:25px; }
		#familylabel{font-size: 16px;}
		
		#signdiv{width: 320px; height: 468px; border-radius: 15px; top:160px; left:20px;}
		#signtitle{font-size: 16px; top:32px; left:48px;}
		#signcontentdiv{width:260px; top:50px; left:35px;}
		#signcontent{font-size: 16px;}
		
		#myfamilydiv{width: 320px; height: 630px; border-radius: 15px; top:192px; left:20px;}
		#myfamilytitlediv{top:32px;}
		#myfamilytitle{font-size: 16px;}
		#myfamilycontentdiv{width:270px; top:45px; left:25px;}
		#myfamilycontent{font-size: 16px;}
		
		#linkdiv{top:250px; left:70px;}
		#linklabel{left:10px;}
		#link{font-size: 28px;}
		#imgl{width:50px; height: 15px; top:10px;}
		#imgr{width:50px; height: 15px; top:13px; left:18px;}
		
		.go{width: 320px; height: 56px; border-radius: 32px;}
		.golabeldiv{width:280px;top:10px; left:24px;}
		.golabel{font-size: 16px;}
		.goimg{width: 24px; height: 24px; top:16px;}
		#go1{top:300px; left:20px;} #go2{top:316px; left:20px;} #go3{top:332px; left:20px;} #go4{top:348px; left:20px;}
		
		#plane{width: 52px; shape-outside: 52px; top:398px; left:154px;}
		
		#line{width:16px; height: 1px; border: none; background-color: #707070; top:438px; left:172px;}
		
		#peoplediv{width:198px; top:478px; left:81px; padding-bottom: 65px;}
		#people{font-size: 12px;}
	}
	
	@media all and (min-width: 768px) { /*태블릿 */
		#main{width:768px; height: 1024px;}
		
		#boardingdiv{width: 228px; height: 46px; border-radius: 23px; top:188px; left: 270px;}
		#boarding{font-size: 34px;}
		
		#familydiv{width: 456px; height: 327px; border-radius: 15px; top:268px; left:156px;}
		#familylabeldiv{width:380px; top:46px; left:35px;}
		#familylabel{font-size: 22px;}
		
		#signdiv{width: 456px; height: 604px; border-radius: 15px; top:314px; left:156px;}
		#signtitle{font-size: 22px; top:35px; left:68px;}
		#signcontentdiv{width:380px;top:50px; left:35px;}
		#signcontent{font-size: 22px;}
		
		#myfamilydiv{width: 456px; height: 883px; border-radius: 15px; top:360px; left:156px;}
		#myfamilytitlediv{top:35px;}
		#myfamilytitle{font-size: 22px;}
		#myfamilycontentdiv{width:386px; top:70px; left:35px;}
		#myfamilycontent{font-size: 22px;}
		
		#linkdiv{top:430px; left:228px;}
		#linklabel{left:10px;}
		#link{font-size: 40px;}
		#imgl{width:68px; height: 22px; top:15px;}
		#imgr{width:68px; height: 22px; top:18px; left:18px;}
		
		.go{width: 456px; height: 80px; border-radius: 40px;}
		.golabeldiv{width:399px; top:15px; left:34px;}
		.golabel{font-size: 22px; top:23px; left:34px;}
		.goimg{width: 35px; height: 34px; top:23px;}
		#go1{top:516px; left:-120px;} #go2{top:539px; left:156px;} #go3{top:562px; left:156px;} #go4{top:585px; left:156px;}
		
		#plane{width: 74px; shape-outside: 75px; top:650px; left:347px;}
		
		#line{width:22px; height: 1px; border: none; background-color: #707070; top:707px; left:373px;}
		
		#peoplediv{width:270px; top:764px; left:248px; padding-bottom: 156px;}
		#people{font-size: 16px;}
	}
</style>
</head>

<body>
	<div id = "main">
		<div id = "boardingdiv">
			<label id = "boarding">Life Air</label>
		</div>
		
		<div id = "familydiv">
			<div id = "familylabeldiv"><label id = "familylabel">
			인생이 긴 여행이라면 한 번뿐인 여정을 어떤이와 함께하고 싶나요?<br><br>
			성애적 관계, 친동기간, 친구를 비롯한 어떤 관계든 모두 괜찮아요. 누가 되었든 우리는 당신의 상상 속 그 누군가를 <font style = "font-weight: bold">‘가족’이라 부르고자 합니다.</font></label></div>
		</div>
		
		<div id = "signdiv">
			<div id = "signtitlediv"><label id = "signtitle"># 가족이 아니면 사인을 못한다고요?</label></div>
			
			<div id = "signcontentdiv"><label id = "signcontent">5년째 동거 중인 오복 씨와 두낭 씨, 👬 어느 날 오복 씨가 크게 다쳐 수술을 해야 했어요.<br><br>
					일분일초가 급박했지만 두낭 씨는 오복 씨의수술 동의서에 서명을 할 수 없었어요. 그들은 ‘혈연과 혼인으로 맺어진’ 가족관계가 아니었기 때문이죠. 😱💦<br><br>
					결국 난생 처음 보는 오복 씨의 친척을 찾아가 부탁을 해야 했고, 두낭 씨는 곤란함과 좌절감을 느꼈어요. <br><br>
					이런 일이 드라마 같다고요? 🙅 아닐 거예요.</label>
			</div>
		</div>
		
		<div id = "myfamilydiv">
			<div id = "myfamilytitlediv"><label id = "myfamilytitle"># 지금 곁에 있는 사람이 내 가족입니다</label></div>
		
			<div id = "myfamilycontentdiv"><label id = "myfamilycontent">
				현행 민법 제 779조는 가족을🔹배우자와 직계혈족 및 형제자매🔹로 규정해 동거인은 긴 시간 함께해도 법적 보호를 받을 수 없어요.<br><br>
				‘먼 친인척’이 ‘가까운 생활동반자’를 대체하는 일이 더는 일어나지 않도록, 법률상 1인 가구로 분류되어 재정적인 어려움을 겪지 않도록 생활동반자법은 ✨지금 곁에 있는 사람을 가족으로 인정해주는✨법안입니다.<br><br>
				어제를 곱씹고, 오늘을 헤아리며 내일로 뻗어가는 공동체. 당신이 원하는 누구든 이 안에 들어갈 수 있어요. 😉 👌<br><br>
				라이프항공은 당신과 동반자가 온전한 권리를 보장받으며, 인생이라는 기나긴 여정을 함께하길 기원합니다.🕊<br><br>
				생활동반자법에 대해 더 알아보고 싶다면 하단의 링크를 참고해 주세요.</label>
			</div>
		</div>
		
		<div id = "linkdiv">
			<img src = "image/자세히_관련자료L.svg" id = "imgl">
			<div id = "linklabel"><label id = "link">관련자료</label></div>
			<img src = "image/자세히_관련자료R.svg" id = "imgr">
		
		</div>
		
		<div class = "go" id = "go1">
			<div class = "golabeldiv"><label class = "golabel">새로운 가족의 탄생, 생활동반자법 논의</label></div>
			<img src = "image/자세히.svg" class = "goimg" onClick = "location.href = 'https://newneek.co/post/7fa74'">
		</div>
		
		<div class = "go" id = "go2">
			<div class = "golabeldiv"><label class = "golabel">혈연, 혼인이 아니라도 가족이 …</label></div>
			<img src = "image/자세히.svg" class = "goimg" onClick = "location.href = 'https://www.sisain.co.kr/news/articleView.html?idxno=41320'">
		</div>
		
		<div class = "go" id = "go3">
			<div class = "golabeldiv"><label class = "golabel">베프랑 평생 같이 살면 안될까요? …</label></div>
			<img src = "image/자세히.svg" class = "goimg"  onClick = "location.href = 'https://www.youtube.com/watch?v=JXaEQNHUGhU&feature=youtu.be'">
		</div>
		
		<div class = "go" id = "go4">
			<div class = "golabeldiv"><label class = "golabel">가족을 조립한다고? 조립식 가족의 …</label></div>
			<img src = "image/자세히.svg" class = "goimg" onClick = "location.href = 'http://www.hani.co.kr/arti/society/society_general/654957.html'">
		</div>
		
		<img src = "image/plane_자세히.svg" id = "plane">
		
		<div id = "line"></div>
			
		<div id = "peoplediv">
			<label id = "people">
				<font style = "font-weight: bold;">기획/디자인</font> 이청아, 이승미, 김수빈, 곽성하
				<font style = "font-weight: bold;">프론트엔드</font> 이유현, 신유림  &nbsp; <font style = "font-weight: bold;">백엔드</font> 이연정
				<font style = "font-weight: bold;">이메일</font> mbti_lab@naver.com<br>
				<font style = "font-weight: bold;">연락</font> insta @mbti_lab
			</label>
		</div>
	</div>
</body>
</html>