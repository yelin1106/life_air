<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<!-- 클릭시 변환하는 색에 대해서는(Q05_choice) 주석으로 처리하였습니다-->
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
	
	.selectbox{background-color: #f1f1f3;text-align: center; position: relative; float: left;}
	
	.selected{background-color: #474747;text-align: center; position: relative; float: left;}
	
	#Q05{position: relative;}
	
	@media all and (min-width: 360px) and (max-width: 768px) { /*모바일 */
		#main{width:360px; height: 640px;}
		#backpage{width: 27.7px; height: 25.6px; position: relative; top:32px; left:20px;}
		#questiondiv{width: 160px; height: 32px; border-radius: 16px; top:40px; left: 100px;}
		#question{font-size: 24px;}
		
		#contentdiv{top:48px;}
		#content{font-size: 28px; letter-spacing: -1.4px;}
		
		.selectbox{width: 96px; height: 96px; border-radius: 10px;}
		.weatherimg{width: 96px; height: 96px; opacity: 1px;}
		
		#one{top:81px; left:20px;} #two{top:81px; left:36px;} #three{top:81px; left:52px;}
		#four{top:97px; left:20px;} #five{top:97px; left:36px;} #six{top:97px; left:52px;}
		#seven{top:113px; left:20px;} #eight{top:113px; left:36px;} #nine{top:113px; left:52px;}
		#ten{top:129px; left:20px;} #eleven{top:129px; left:36px;} #twelve{top:129px; left:52px;}
		
		#Q05{width: 232.4px; height: 32px; top:178px; left:64px; padding-bottom: 56px;}
	}
	
	@media all and (min-width: 768px) { /*태블릿 */
		#main{width:768px; height: 1024px;}
		#backpage{width: 39.5px; height: 36.5px; position: relative; top:100px; left:72px;}
		#questiondiv{width: 228px; height: 46px; border-radius: 23px; top:158px; left: 270px;}
		#question{font-size: 34px;}
		
		#contentdiv{top:185px;}
		#content{font-size: 40px; letter-spacing: -2px;}
		
		.selectbox{width: 137.1px; height: 137.1px; border-radius: 10px;}
		.weatherimg{width: 137.1px; height: 137.1px; opacity: 1px;}
		
		#one{top:222.8px; left:155.6px;} #two{top:222.8px; left:178.4px;} #three{top:222.8px; left:201.2px;}
		#four{top:385.6px; left:-255.6px;} #five{top:385.6px; left:-233.4px;} #six{top:248px; left:478.2px;}
		#seven{top:410px; left:18px;} #eight{top:410px; left:42px;} #nine{top:410px; left:69px;}
		#ten{top:575.7px; left:-393.6px;} #eleven{top:440.7px; left:315px;} #twelve{top:440.7px; left:343px;}
		
		#Q05{width: 331.8px; height: 45.7px; top:650px; left:-50px; padding-bottom: 104.1px;}
	}
</style>
<!-- Google CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

<script type="text/javascript">
/* $(function(){
	alert("${ sessionScope.star }")
	<c:forEach var="tmp" items="${ sessionScope.nums }">
		alert("${ tmp }")
	</c:forEach>
});//ready */


function toNextPage(type){
	$.ajax({
		url:"setcountry.do?country="+type,
		type:"POST",
		error:function(xhr){
			alert("에러");
			console.log(xhr.status+" / "+xhr.statusText);
		},
		success:function(result){
			location.href='CH02.do';
		}//success
	});//ajax
}//toNextPage

function select(id, type){
	document.getElementById(id).className="selectbox selected"
	img="image/날씨_"+type+".svg"
	document.getElementById(type).src=img;
	
	$("#one").removeAttr("onclick");
	$("#two").removeAttr("onclick");
	$("#three").removeAttr("onclick");
	$("#four").removeAttr("onclick");
	$("#five").removeAttr("onclick");
	$("#six").removeAttr("onclick");
	$("#seven").removeAttr("onclick");
	$("#eight").removeAttr("onclick");
	$("#nine").removeAttr("onclick");
	$("#ten").removeAttr("onclick");
	$("#eleven").removeAttr("onclick");
	$("#twelve").removeAttr("onclick");
	
	setTimeout("toNextPage('"+type+"')", 1000);

}//select

</script>
</head>

<body>
	<div id = "main">
		<img src = "image/뒤로가기.svg" id = "backpage" onClick="location.href = 'Q04.do'">
		
		<div id = "questiondiv">
			<label id = "question">Question <font style = "font-weight: normal;">05</font></label>
		</div>
		
		<div id ="contentdiv"><label id = "content">어떤 풍경을 좋아하세요?</label></div>
		
		<div id = "one" class = "selectbox" onclick="select('one', '영국')"><img id="영국" src = "image/날씨_영국_화이트.svg" class = "weatherimg"></div>
		<!--<div id = "one" class = "selectbox selected"><img src = "image/날씨_영국.svg" class = "weatherimg"></div>-->
		<div id = "two" class = "selectbox" onclick="select('two', '멕시코')"><img id="멕시코" src = "image/날씨_멕시코_화이트.svg" class = "weatherimg"></div>
		<!--<div id = "two" class = "selectbox selected"><img src = "image/날씨_멕시코.svg" class = "weatherimg"></div>-->
		<div id = "three" class = "selectbox" onclick="select('three', '인도')"><img id="인도" src = "image/날씨_인도_화이트.svg" class = "weatherimg"></div>
		<!--<div id = "three" class = "selectbox selected"><img src = "image/날씨_인도.svg" class = "weatherimg"></div>-->
		<div id = "four" class = "selectbox" onclick="select('four', '네덜란드')"><img id="네덜란드" src = "image/날씨_네덜란드_화이트.svg" class = "weatherimg"></div>
		<!--<div id = "four" class = "selectbox selected"><img src = "image/날씨_네덜란드.svg" class = "weatherimg"></div>-->
		<div id = "five" class = "selectbox" onclick="select('five', '대한민국')"><img id="대한민국" src = "image/날씨_대한민국_화이트.svg" class = "weatherimg"></div>
		<!--<div id = "five" class = "selectbox selected"><img src = "image/날씨_대한민국.svg" class = "weatherimg"></div>-->
		<div id = "six" class = "selectbox" onclick="select('six', '미국')"><img id="미국" src = "image/날씨_미국_화이트.svg" class = "weatherimg"></div>
		<!--<div id = "six" class = "selectbox selected"><img src = "image/날씨_미국.svg" class = "weatherimg"></div>-->
		<div id = "seven" class = "selectbox" onclick="select('seven', '몽골')"><img id="몽골" src = "image/날씨_몽골_화이트.svg" class = "weatherimg"></div>
		<!--<div id = "seven" class = "selectbox selected"><img src = "image/날씨_몽골.svg" class = "weatherimg"></div>-->
		<div id = "eight" class = "selectbox" onclick="select('eight', '알래스카')"><img id="알래스카" src = "image/날씨_알래스카_화이트.svg" class = "weatherimg"></div>
		<!--<div id = "eight" class = "selectbox selected"><img src = "image/날씨_알래스카.svg" class = "weatherimg"></div>-->
		<div id = "nine" class = "selectbox" onclick="select('nine', '핀란드')"><img id="핀란드" src = "image/날씨_핀란드_화이트.svg" class = "weatherimg"></div>
		<!--<div id = "nine" class = "selectbox selected"><img src = "image/날씨_핀란드.svg" class = "weatherimg"></div>-->
		<div id = "ten" class = "selectbox" onclick="select('ten', '몰디브')"><img id="몰디브" src = "image/날씨_몰디브_화이트.svg" class = "weatherimg"></div>
		<!--<div id = "ten" class = "selectbox selected"><img src = "image/날씨_몰디브.svg" class = "weatherimg"></div>-->
		<div id = "eleven" class = "selectbox" onclick="select('eleven', '호주')"><img id="호주" src = "image/날씨_호주_화이트.svg" class = "weatherimg"></div>
		<!--<div id = "eleven" class = "selectbox selected"><img src = "image/날씨_호주.svg" class = "weatherimg"></div>-->
		<div id = "twelve" class = "selectbox" onclick="select('twelve', '아이슬란드')"><img id="아이슬란드" src = "image/날씨_아이슬란드_화이트.svg" class = "weatherimg"></div>
		<!--<div id = "twelve" class = "selectbox selected"><img src = "image/날씨_아이슬란드.svg" class = "weatherimg"></div>-->
		
		<img src = "image/Q5.svg" id = "Q05">
	</div>
</body>
</html>