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
	
	#selectbox{background-color: #f5f5f7; text-align: center; position: relative; float: left;}
	#selectlabel{font-family: 'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.17; letter-spacing: -1.2px; text-align: left; background-color:transparent; position: relative; outline: none; border: none; color: #474747; opacity: 0.5;}
	#selectlabel{background: url("image/선택화살표.svg") no-repeat 100% 50%; -webkit-appearance: none;-moz-appearance: none;appearance: none; outline: none;}
	#selectlabel::-ms-expand {display: none;}
	
	.selected{background-color: #474747; opacity: 1; text-align: center; position: relative; float: left;}
	#selectedlabel{font-family: 'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.17; letter-spacing: -1.2px; text-align: left; background-color:transparent; position: relative; outline: none; border: none; color: #ffffff;}
	#selectedlabel{background: url("image/선택화살표_화이트.svg") no-repeat 100% 50%; -webkit-appearance: none;-moz-appearance: none;appearance: none; outline: none;}
	#selectedlabel::-ms-expand {display: none;}
	
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
		
		#inputnamediv{width: 320px; height: 56px; border-radius: 32px; top:100px; left: 20px;}
		#name{width: 180px; height: 36px; top:10px; left:24px; font-size: 24px; line-height: 1.42; letter-spacing: -1.2px;}
		#x_btn{width: 24px; height: 24px; top:12px; left:28px;}
		#randomname{font-size: 16px; line-height: 2.13; letter-spacing: -0.8px; top: 7px; left:38px;}
		
		#selectbox{width: 320px; height: 56px; border-radius: 32px; top:124px; left:20px;}
		#selectlabel{font-size: 24px; width:280px; height: 56px; left:5px; background-size: 24px 24px;}
		
		.selected{width: 320px; height: 56px; border-radius: 32px; top:124px; left:20px;}
		#selectedlabel{font-size: 24px; width:280px; height: 56px; left:5px;}
		
		#footplane{width: 52px; height: 52px; top:222px; left:154px; padding-bottom: 66px; }
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
		
		#selectbox{width: 456px; height: 80px; border-radius: 40px; top:277px; left:156px;}
		#selectlabel{font-size: 34px; width:400px; height: 80px; left:5px; background-size: 35px 35px;}
		
		.selected{width: 456px; height: 80px; border-radius: 40px; top:277px; left:156px;}
		#selectedlabel{font-size: 34px; width:400px; height: 80px; left:5px; background-size: 35px 35px;}
		
		#footplane{width: 76px; height: 75px; top:518px; left:-100px; padding-bottom: 149px;}
	}
</style>
</head>

<body>
	<div id = "main">
		<img src = "image/뒤로가기.svg" id = "backpage" onClick="location.href = 'Q07.html'">
		
		<div id = "questiondiv">
			<label id = "question">Information</label>
		</div>
		
		<div id ="contentdiv"><label id = "content">동물 (1) 의 상세정보</label></div>
		<div id = "announcediv"><label id = "announce">※ 상세정보를 입력해주세요.</label></div>
		
		<div id = "inputnamediv">
			<input type = "text" id = "name" placeholder = "이름">
			<img src = "image/엑스.svg" id = "x_btn">
			<!--<img src = "image/엑스_화이트.svg" id = "x_btn">-->
			<button id = "randomname">가명부여</button>
		</div>
		
		<div id  = "selectbox">
			<select id = "selectlabel">
				<option value = "" selected>선택</option>
				<option value = "dog">강아지</option>
				<option value = "dog">거북이</option>
				<option value = "dog">고슴도치</option>
				<option value = "dog">고양이</option>
				<option value = "dog">달팽이</option>
				<option value = "dog">닭</option>
				<option value = "dog">도롱뇽</option>
				<option value = "dog">돼지</option>
				<option value = "dog">두견이</option>
				<option value = "dog">두더지</option>
				<option value = "dog">모기</option>
				<option value = "dog">무당벌레</option>
				<option value = "dog">문어</option>
				<option value = "dog">미어캣</option>
				<option value = "dog">불가사리</option>
				<option value = "dog">비둘기</option>
				<option value = "dog">사슴</option>
				<option value = "dog">수달</option>
				<option value = "dog">사슴</option>
				<option value = "dog">수리부엉이</option>
				<option value = "dog">양</option>
				<option value = "dog">여우</option>
				<option value = "dog">오리</option>
				<option value = "dog">올빼미</option>
				<option value = "dog">우파루파</option>
				<option value = "dog">원숭이</option>
				<option value = "dog">장수하늘소</option>
				<option value = "dog">족제비</option>
				<option value = "dog">참새</option>
				<option value = "dog">청개구리</option>
				<option value = "dog">청설모</option>
				<option value = "dog">코알라</option>
				<option value = "dog">토끼</option>
				<option value = "dog">판다</option>
				<option value = "dog">펭귄</option>
				<option value = "dog">하마</option>
				<option value = "dog">하프물범</option>
				<option value = "dog">호랑이</option>
			</select>
		</div>
		
		<!--선택시
		<div class = "selected">
			<select id = "selectedlabel">
				<option value = "" selected>선택</option>
				<option value = "dog">강아지</option>
				<option value = "dog">거북이</option>
				<option value = "dog">고슴도치</option>
				<option value = "dog">고양이</option>
				<option value = "dog">달팽이</option>
				<option value = "dog">닭</option>
				<option value = "dog">도롱뇽</option>
				<option value = "dog">돼지</option>
				<option value = "dog">두견이</option>
				<option value = "dog">두더지</option>
				<option value = "dog">모기</option>
				<option value = "dog">무당벌레</option>
				<option value = "dog">문어</option>
				<option value = "dog">미어캣</option>
				<option value = "dog">불가사리</option>
				<option value = "dog">비둘기</option>
				<option value = "dog">사슴</option>
				<option value = "dog">수달</option>
				<option value = "dog">사슴</option>
				<option value = "dog">수리부엉이</option>
				<option value = "dog">양</option>
				<option value = "dog">여우</option>
				<option value = "dog">오리</option>
				<option value = "dog">올빼미</option>
				<option value = "dog">우파루파</option>
				<option value = "dog">원숭이</option>
				<option value = "dog">장수하늘소</option>
				<option value = "dog">족제비</option>
				<option value = "dog">참새</option>
				<option value = "dog">청개구리</option>
				<option value = "dog">청설모</option>
				<option value = "dog">코알라</option>
				<option value = "dog">토끼</option>
				<option value = "dog">판다</option>
				<option value = "dog">펭귄</option>
				<option value = "dog">하마</option>
				<option value = "dog">하프물범</option>
				<option value = "dog">호랑이</option>
			</select>
		</div>
		-->
		
		<img src = "image/plane.svg" id = "footplane" onClick="location.href = 'Q07_type.html'">
	</div>
</body>
</html>