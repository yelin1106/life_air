<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<!-- 클릭시 변환하는 색에 대해서는(Q04_choice) 주석으로 처리하였습니다-->
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
	
	.selectbox{opacity: 0.5;background-color: #ffffff;text-align: center; position: relative; float: left;}
	.selectlabel{font-family:'Roboto'; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.42; letter-spacing: -1.2px; text-align: center; color: #474747; position: relative;}
	
	.selected{opacity: 1; background-color: #474747; color: #ffffff; text-align: center; position: relative;}
	.selected > .selectlabel{font-family:'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.42; letter-spacing: -1.2px; text-align: center; color: #ffffff; position: relative;}
	
	#Q04{position: relative;}
	
	@media all and (min-width: 360px) and (max-width: 768px) { /*모바일 */
		#main{width:360px; height: 640px;}
		#backpage{width: 27.7px; height: 25.6px; position: relative; top:32px; left:20px;}
		#questiondiv{width: 160px; height: 32px; border-radius: 16px; top:40px; left: 100px;}
		#question{font-size: 24px;}
		
		#contentdiv{top:48px;}
		#content{font-size: 28px; letter-spacing: -1.4px;}
		
		.selectbox{width: 96px; height: 96px; border-radius: 10px;}
		.selectlabel{font-size: 24px; top:33px;}
		
		#one{top:75px; left:20px;} #two{top:75px; left:36px;} #three{top:75px; left:52px;}
		#four{top:92px; left: 20px;} #five{top:92px; left: 36px;} #six{top:92px; left: 52px;}
		#seven{top:108px; left:20px;} #eight{top:108px; left:36px;} #nine{top:108px; left:52px;} #zero{top:124px; left:132px;}
		
		#Q04{width: 232.4px; height: 32px; top:284px; left:-25px; padding-bottom: 52px;}
	} 
	
	@media all and (min-width: 768px) { /*태블릿 */
		#main{width:768px; height: 1024px;}
		#backpage{width: 39.5px; height: 36.5px; position: relative; top:100px; left:72px;}
		#questiondiv{width: 228px; height: 46px; border-radius: 23px; top:158px; left: 270px;}
		#question{font-size: 34px;}
		
		#contentdiv{top:185px;}
		#content{font-size: 40px; letter-spacing: -2px;}
		
		.selectbox{width: 126.6px; height: 126.6px; border-radius: 10px;}
		.selectlabel{font-size: 32px; top:42px;}
		
		#one{top:220px; left:173px;} #two{top:220px; left:195px;} #three{top:220px; left:216px;}
		#four{top:361px; left:-207px;} #five{top:361px; left: -185px;} #six{top:361px; left: -164px;}
		#seven{top:380px; left:173px;} #eight{top:380px; left:195px;} #nine{top:380px; left:216px;} #zero{top:530px; left:-58px;}
		
		#Q04{width: 306.3px; height: 42.2px; top:620px; left:231.1px;  padding-bottom: 52px;}
	}
	
</style>

<!-- Google CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

<script type="text/javascript">

function toNextPage(type){
	selects = document.getElementsByClassName('selected')
	var nums = new Array();
	for (selectbox of selects){
		nums.push(selectbox.getAttribute('name'));
	}//end for
	$.ajax({
		url:"setnumbers.do?nums="+type,
		type:"POST",
		data : { "nums" : nums },
		error:function(xhr){
			alert("에러");
			console.log(xhr.status+" / "+xhr.statusText);
		},
		success:function(result){
			location.href='Q05.do';
		}//success
	});//ajax
}//toNextPage

var maxChecked = 4;   //선택가능한 체크박스 갯수

var totalChecked = 0; // 설정 끝

function CountChecked(target_id, value) {
	target = document.getElementById(target_id)
	target.classList.toggle("selected"); 
	class_list = target.classList.value
	
	if(class_list.includes('selected')){
		totalChecked += 1;
	} else {
		totalChecked -= 1;
	}

	if(totalChecked == maxChecked){
		toNextPage();
	}
}
/* 	var checkNumbers = "";
	
	function go_url(){
		selects = document.getElementsByClassName('selected');

		for (selectbox of selects){
			checkNumbers += selectbox.getAttribute('name');
		}

		document.cookie = "passenger_no="+checkNumbers;
		location.href="Q05.do";
	} */
	
</script>
</head>

<body>
	<div id = "main">
		<img src = "image/뒤로가기.svg" id = "backpage" onClick="location.href = 'Q03.do'">
		
		<div id = "questiondiv">
			<label id = "question">Question <font style = "font-weight: normal;">04</font></label>
		</div>
		
		<div id ="contentdiv"><label id = "content">좋아하는 숫자를<br>4개 골라주세요</label></div>
		
		<div id = "one" name="1" class = "selectbox" onclick="CountChecked('one', 1)"><label class = "selectlabel">1</label></div>
		<div id = "two" name='2' class = "selectbox" onclick="CountChecked('two', 2)"><label class = "selectlabel">2</label></div>
		<div id = "three" name='3' class = "selectbox" onclick="CountChecked('three', 3)"><label class = "selectlabel">3</label></div>
		<div id = "four" name='4' class = "selectbox" onclick="CountChecked('four', 4)"><label class = "selectlabel">4</label></div>
		<div id = "five" name='5' class = "selectbox" onclick="CountChecked('five', 5)"><label class = "selectlabel">5</label></div>
		<div id = "six" name='6' class = "selectbox" onclick="CountChecked('six', 6)"><label class = "selectlabel">6</label></div>
		<div id = "seven" name='7' class = "selectbox" onclick="CountChecked('seven', 7)"><label class = "selectlabel">7</label></div>
		<div id = "eight" name='8' class = "selectbox" onclick="CountChecked('eight', 8)"><label class = "selectlabel">8</label></div>
		<div id = "nine" name='9' class = "selectbox" onclick="CountChecked('nine', 9)"><label class = "selectlabel">9</label></div>
		<div id = "zero" name='0' class = "selectbox" onclick="CountChecked('zero', 0)"><label class = "selectlabel">0</label></div>
		
		<img src = "image/Q4.svg" id = "Q04">
	</div>
</body>
</html>