<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<!-- 클릭시 변환하는 색에 대해서는(Q02_choice) 주석으로 처리하였습니다-->
<html>
<head>
<meta charset="UTF-8">
<title>LifeAir</title>
<style>
	* {margin: 0; padding: 0;}
	
	body{background-color: #ececf0; overflow-y: auto;}
	
	#main{background-color: #ececf0; margin: 0 auto;}
	#questiondiv{background-color: #474747; position: relative; display: table; text-align: center;}
	#question{display: table-cell; text-align: center; vertical-align: middle;font-family: "Roboto"; font-weight: 100; font-stretch: normal; font-style: normal; letter-spacing: normal; text-align: center; color: #ffffff; line-height: 1.42;}
	
	#contentdiv{text-align: center; position: relative;}
	#content{font-family:'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; color: #474747; line-height: 1.43;}
	
	.selectbox{opacity: 0.5;background-color: #ffffff;text-align: center; position: relative;}
	.selectlabel{font-family:'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.42; letter-spacing: -1.2px; text-align: center; color: #474747; position: relative;}
	
	.selected{opacity: 1; background-color: #474747;text-align: center; position: relative;}
	.selectedlabel{font-family:'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.42; letter-spacing: -1.2px; text-align: center; color: #ffffff; position: relative;}
	
	#Q02{position: relative;}
	
	
	@media all and (min-width: 360px) and (max-width: 768px) { /*모바일 */
		#main{width:360px; height: 640px;}
		#backpage{width: 27.7px; height: 25.6px; position: relative; top:32px; left:20px;}
		#questiondiv{width: 160px; height: 32px; border-radius: 16px; top:40px; left: 100px;}
		#question{font-size: 24px;}
		
		#contentdiv{top:48px;}
		#content{font-size: 28px; letter-spacing: -1.4px;}
		
		.selectbox{width: 320px; height: 56px; border-radius: 32px;}
		.selectlabel{font-size: 24px; top:10px;}
		#woman{top:129px; left:20px;}
		#man{top:145px; left:20px;}
		#etc{top:161px; left:20px;}
		
		#Q02{width: 232.4px;height: 32px; top:240px; left:64px; padding-bottom: 79px;}
	}
	
	@media all and (min-width: 768px) { /*태블릿 */
		#main{width:768px; height: 1024px;}
		#backpage{width: 39.5px; height: 36.5px; position: relative; top:100px; left:72px;}
		#questiondiv{width: 228px; height: 46px; border-radius: 23px; top:158px; left: 270px;}
		#question{font-size: 34px;}
		
		#contentdiv{top:185px;}
		#content{font-size: 40px; letter-spacing: -2px;}
		
		.selectbox{width: 456px; height: 80px; border-radius: 40px;}
		.selectlabel{font-size: 34px; top:14px;}
		#woman{top:284px; left:156px;}
		#man{top:307px; left:156px;}
		#etc{top:330px; left:156px;}
		
		#Q02{width: 331.8px;height: 45.7px; top:422.4px; left:218.4px; padding-bottom: 167.9px;}
	}
</style>

<!-- Google CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

<script type="text/javascript">
/* $(function(){
	alert("${ sessionScope.name }")
});//ready */

function toNextPage(type){
	$.ajax({
		url:"setgender.do?gender="+type,
		type:"POST",
		error:function(xhr){
			alert("에러");
			console.log(xhr.status+" / "+xhr.statusText);
		},
		success:function(result){
			location.href='Q03.do';
		}//success
	});//ajax
}//toNextPage

function select(type){
	div=type
	label=type+"_label"
	document.getElementById(div).className="selectbox selected"
	document.getElementById(label).className="selectlabel selectedlabel"
	if(type=="woman"){
		$("#man").removeAttr("onclick");
		$("#etc").removeAttr("onclick");
	}else if(type=="man"){
		$("#woman").removeAttr("onclick");
		$("#etc").removeAttr("onclick");
	}else{
		$("#woman").removeAttr("onclick");
		$("#man").removeAttr("onclick");
	}//end else
	
	setTimeout("toNextPage('"+type+"')", 1000);

}//select

</script>
</head>

<body>
	<div id = "main">
		<img src = "image/뒤로가기.svg" id = "backpage" onClick="location.href = 'Q01.do'">
		
		<div id = "questiondiv">
			<label id = "question">Question <font style = "font-weight: normal;">02</font></label>
		</div>
		
		<div id ="contentdiv"><label id = "content">당신의 성별은 무엇인가요?</label></div>
		
		<div id = "woman" class = "selectbox" onclick="select('woman')"><label id="woman_label" class = "selectlabel">여성</label></div>
		<!--선택 시 
			<div id = "woman" class = "selectbox selected"><label class = "selectlabel selectedlabel">여성</label></div>
		-->
		<div id = "man" class = "selectbox" onclick="select('man')"><label id="man_label" class = "selectlabel">남성</label></div>
		<div id = "etc" class = "selectbox" onclick="select('etc')"><label id="etc_label" class = "selectlabel">기타/인터섹스</label></div>
		
		<img src = "image/Q2.svg" id = "Q02">
	</div>
</body>
</html>