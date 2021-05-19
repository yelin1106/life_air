<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<!-- 클릭시 변환하는 색에 대해서는(Q01_type) 주석으로 처리하였습니다-->
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
	
	.inputnamediv{background-color: #ffffff; opacity: 0.5; position: relative; display: table; text-align: left;}
	.inputnamediv_selected{background-color: #474747; position: relative; display: table; text-align: left;}
	.name{position: relative; font-family: 'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; text-align: left; color: #474747; border: none; outline: none; background-color: transparent;}
	.name_selected{position: relative; font-family: 'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; text-align: left; color: #ffffff; border: none; outline: none; background-color: transparent;}
	.name::placeholder{font-family: 'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; text-align: left; color: #474747;}
	.x_btn{position: relative;}
	.name_selected::placeholder{font-family: 'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; text-align: left; color: #ffffff;}
	.x_btn_selected{position: relative;}
	.randomname{position: relative; font-family:'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; text-align: left; color: #474747; border: none; outline: none; background-color: transparent;}
	.randomname_selected{position: relative; font-family:'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; text-align: left; color: #ececf0; border: none; outline: none; background-color: transparent;}
	#announcediv{font-family: 'Noto Sans CJK KR';font-weight: 300;font-stretch: normal;font-style: normal;line-height: 1.63;letter-spacing: -0.8px;text-align: center;color: #707070; position: relative;}
	
	.Q01{position: relative;}
	.footerplane{position: relative;}
 
	@media all and (min-width: 360px) and (max-width: 768px) { /*모바일 */
		#main{width:360px; height: 640px;}
		#backpage{width: 27.7px; height: 25.6px; position: relative; top:32px; left:20px;}
		#questiondiv{width: 160px; height: 32px; border-radius: 16px; top:40px; left: 100px;}
		#question{font-size: 24px;}
		
		#contentdiv{top:48px;}
		#content{font-size: 28px;  letter-spacing: -1.4px;}
		
		#inputnamediv{width: 320px; height: 56px; border-radius: 32px; top:169px; left: 20px;}
		#name{width: 180px; height: 36px; top:10px; left:24px; font-size: 24px; line-height: 1.42; letter-spacing: -1.2px;}
		#x_btn{width: 24px; height: 24px; top:12px; left:28px;}
		#randomname{font-size: 16px; line-height: 2.13; letter-spacing: -0.8px; top: 7px; left:38px;}
		#announcediv{font-size: 16px; top:176px; left:62px;}
		
		.Q01{width: 232.7px;height: 32px; top:328px; left:64px; padding-bottom: 79px;}
		.footerplane{width: 52px;height: 52px; top:321px; left: -90px;}
	}
	
	@media all and (min-width: 768px) { /*태블릿 */
		#main{width:768px; height: 1024px;}
		#backpage{width: 39.5px; height: 36.5px; position: relative; top:100px; left:72px;}
		#questiondiv{width: 228px; height: 46px; border-radius: 23px; top:158px; left: 270px;}
		#question{font-size: 34px;}
		
		#contentdiv{top:185px;}
		#content{font-size: 40px; letter-spacing: -2px;}
		
		#inputnamediv{width: 456px; height: 80px; border-radius: 40px; top:410px; left: 156px;}
		#name{width: 263px; height: 50px; top:13px; left:34px; font-size: 34px; line-height: 1.42; letter-spacing: -1.2px;}
		#x_btn{width: 34px; height: 34px; top:18px; left:28px;}
		#randomname{font-size: 22px; line-height: 2.13; letter-spacing: -0.8px; top: 10px; left:48px;}
		#announcediv{font-size: 22px; top:340px; left:216px;}
		/*#announcediv{font-size: 22px; top:235px; left:216px;}*/
		.Q01{width: 332.6px; height: 45.7px; top:810px; left:-132px; padding-bottom: 79px;}
		.footerplane{width: 52px;height: 52px; top:800px; left: 20px; padding-bottom: 149px;}
	}

</style>

<!-- Google CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

<script type="text/javascript">

function setDivClass(flag){
	if(flag=='focus'){
		document.getElementById('x_btn').src="image/엑스_화이트.svg";
		document.getElementById('inputnamediv').className='inputnamediv_selected';
		document.getElementById('randomname').className='randomname_selected';
		document.getElementById('name').className='name_selected';
		document.getElementById('x_btn').className='x_btn_selected';
	}else{
		document.getElementById('x_btn').src="image/엑스.svg";
		document.getElementById('inputnamediv').className='inputnamediv';
		document.getElementById('randomname').className='randomname';
		document.getElementById('name').className='name';
		document.getElementById('x_btn').className='x_btn';
	}//end else
}//end setDivClass


function checkNameLength(){
	name=document.getElementById("name").value;
	if(name.trim().length>5){
		alert("최대 5글자까지 입력할 수 있습니다.")
	}else if(name.trim().length==0) {
		document.getElementById('Q01').src="image/Q1.svg";
		document.getElementById('Q01').className="Q01";
		$("#Q01").removeAttr("onclick");
    }else{
		document.getElementById('Q01').src="image/plane.svg";
		document.getElementById('Q01').className="footerplane";
		$("#Q01").attr("onclick",  "toNextPage()");
    }//end else
	
}//checkNameLength

function makeRandomname(){
	$.ajax({
		url:"randomname.do",
		type:"POST",
		dataType:"JSON",
		error:function(xhr){
			alert("에러");
			console.log(xhr.status+" / "+xhr.statusText);
		},
		success:function(jsonObj){
	      	if(jsonObj.flag=="success"){
	      		document.getElementById("name").value=jsonObj.randomName;
	      		checkNameLength();
	      	}else{
	      		alert("문제가 발생하였습니다. 다시 시도해주세요.")
	      	}//end else
		}//success
	});//ajax
}//makeRandomname

function toNextPage(){
	name=document.getElementById("name").value;
	$.ajax({
		url:"setname.do?name="+name,
		type:"POST",
		error:function(xhr){
			alert("에러");
			console.log(xhr.status+" / "+xhr.statusText);
		},
		success:function(result){
	      	location.href="Q02.do";
		}//success
	});//ajax
}//toNextPage

function removeName(){
	document.getElementById("name").value="";
}//removeName

</script>
</head>

<body>
	<div id = "main">
		<img src = "image/뒤로가기.svg" id = "backpage" onClick="location.href = 'CH01.do'">
		
		<div id = "questiondiv">
			<label id = "question">Question <font style = "font-weight: normal;">01</font></label>
		</div>
		
		<div id ="contentdiv"><label id = "content">당신의 이름을<br>알려주세요</label></div>
		
		<div id = "inputnamediv" class="inputnamediv">
		<!-- <form id="inputnamediv" class="inputnamediv" action="Q02.do" method="post"> -->
			<input type = "text" maxlength="5" name="name" id = "name" class="name" placeholder = "이름" 
				oninput="checkNameLength()"
				onfocus="setDivClass('focus')"
				onblur="setDivClass('blur')"
			>
			<img src = "image/엑스.svg" id = "x_btn" class="x_btn" onclick="removeName()">
			<button id = "randomname" class="randomname" onclick="makeRandomname()">가명부여</button>
		<!-- </form> -->
		</div>
		
		<label id = "announcediv">※ 최대 5글자까지 입력할 수 있습니다.</label>
		
		<img src = "image/Q1.svg" id = "Q01" class="Q01">
		
	</div>
</body>
</html>