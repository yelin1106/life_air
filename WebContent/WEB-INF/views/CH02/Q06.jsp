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
	
	#announcediv{text-align: center; position: relative;}
	#announce{font-family: 'Noto Sans CJK KR'; font-weight: 300; font-stretch: normal; font-style: normal; line-height: 1.63; letter-spacing: -0.8px; color: #707070;}
	
	.selectbox{background-color: #ffffff; opacity: 0.5; text-align: center; position: relative; float: left;}
	.selectlabel{font-family: 'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.17; letter-spacing: -1.2px; text-align: center; color: #474747; position: relative;}
	
	.selected{background-color: #474747; opacity: 1; text-align: center; position: relative; float: left;}
	.selectedlabel{color: #ffffff; font-family: 'Noto Sans CJK KR'; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.17; letter-spacing: -1.2px; text-align: center; position: relative;}
	.selecteddiv{float: left; position: relative;}
	.minusdiv{float: left; background-color: #ffffff;}
	.minuslabel{background-color: #474747; border:none; position: relative;}
	.numberdiv{float: left; background-color: #ffffff; position: relative;}
	.numberlabel{position: relative; font-family:"Roboto"; font-weight: 500; font-stretch: normal; font-style: normal; line-height: 1.17; letter-spacing: -1.2px; color: #474747;}
	
	#Q06{position: relative;}
	/*#footerplane{position: relative;}*/
	
	@media all and (min-width: 360px) and (max-width: 768px) { /*모바일 */
		#main{width:360px; height: 640px;}
		#backpage{width: 27.7px; height: 25.6px; position: relative; top:32px; left:20px;}
		#questiondiv{width: 160px; height: 32px; border-radius: 16px; top:40px; left: 100px;}
		#question{font-size: 24px;}
		
		#contentdiv{top:48px;}
		#content{font-size: 28px; letter-spacing: -1.4px;}
		
		#announcediv{top:45px;}
		#announce{font-size: 16px;}
		
		.selectbox{width: 152px; height: 152px; border-radius: 10px;}
		.selectlabel{font-size: 24px; top:58px;}
		#person{top:75px; left:20px;} #animal{top:75px; left:36px;}
		#plant{top:91px; left:20px;} #furniture{top:91px; left:36px;}
		
		#selectdpersondiv{top:75px; left:20px;}
		#selectdanimaldiv{top:75px; left:36px;}
		#selectdplantdiv{top:91px; left:20px;}
		#selectdfurniturediv{top:91px; left:36px;}
		.selected{border-radius: 76px; width: 152px; height: 152px;}
		.selectedlabel{font-size: 24px; top:58px;}
		.selecteddiv{width:152px; height: 152px;}
		.minusdiv{width:24px; height: 24px; border-radius: 76px; position: relative; top:-140px; left:8px;}
		.minuslabel{width: 16px; height: 2px; top:11.3px; left:4.3px;}
		.numberdiv{width: 40px; height: 40px; border-radius: 76px; top:-40px; left:80px;}
		.numberlabel{font-size: 24px; top:5px; left:13px;}
	
		#Q06{width: 232.4px; height: 32px; top:129px; left:64px; padding-bottom: 50px;}
		/*#footerplane{width: 52px;height: 52px; top:450px; left:-144px; padding-bottom: 40px;}*/
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
		
		.selectbox{width: 217px; height: 217px; border-radius: 10px;}
		.selectlabel{font-size: 34px; top:82px;}
		#person{top:196px; left:156px;} #animal{top:196px; left:178px;}
		#plant{top:435px; left:-278px;} #furniture{top:218px; left:396px;}
		
		#selectdpersondiv{top:196px; left:156px;}
		#selectdanimaldiv{top:196px; left:178px;}
		#selectdplantdiv{top:435px; left:-298px;}
		#selectdfurniturediv{top:218px; left:406px;}
		.selected{border-radius: 150px; width: 228px; height: 228px;}
		.selectedlabel{font-size: 34px; top:89px;}
		.selecteddiv{width:228px; height: 228px;}
		.minusdiv{width:34px; height: 34px; border-radius: 150px; position: relative; top:-210px; left:18px;}
		.minuslabel{width: 22.8px; height: 2.9px; top:15.1px; left:6.1px;}
		.numberdiv{width: 58px; height: 58px; border-radius: 76px; top:-60px; left:130px;}
		.numberlabel{font-size: 34px; top:9px; left:20px;}
	
		#Q06{width: 331.8px; height: 45.7px; top:509px; padding-bottom: 126.8px;}
		/*#footerplane{width: 74px;height: 74px; top:750px; left:-320px; padding-bottom: 112px;}*/
	}
</style>
</head>
<script language="javascript">
	
	function square2circle(target){
		if(target){
			target.style.backgroundColor = "#474747"
			target.style.color = '#fff'
			target.style.opacity = "1"
			interval = setInterval(changeBorderRadius, 0.1);
			function changeBorderRadius(){
				var prev = window.getComputedStyle(target).getPropertyValue('border-radius');
				console.log(prev)
				prev = Number(prev.substring(0, prev.length-2));
				if (prev <= 40) {
					target.style.borderRadius = (prev+1)+"px";
				} else if (prev <= 80) {
					target.style.borderRadius = (prev+3)+"px";
				} else if (prev < 100) {
					target.style.borderRadius = (prev+1)+"px";
				} else if (prev >= 100){
					clearInterval(interval);
				}
			}
		}
	}
	
	function circle2square(target){
		if(target){
			target.style.backgroundColor = "#fff"
			target.style.color = "#474747"
			target.style.opacity = "0.5"
			interval = setInterval(changeBorderRadius, 0.1);
			function changeBorderRadius(){
				var prev = window.getComputedStyle(target).getPropertyValue('border-radius');
				prev = Number(prev.substring(0, prev.length-2));
				target.style.borderRadius = (prev-2)+"px";
				if (prev <= 20) {
					clearInterval(interval);
				}
			}
		}
	}

	function visible1(divname1,divname2,number){
		var div1 = document.getElementById(divname1);
		var div2 = document.getElementById(divname2);
		var btn_person = document.getElementById('p1');

		div1.style.visibility = "visible";
		div2.style.visibility = "visible";
		
		var num = document.getElementById("b1");
		var this_qty = Number(num.value);
		var result = this_qty + number;
		
		if(result <= 0){
			result = 0;

			div1.style.visibility = "hidden";
			div2.style.visibility = "hidden";
		} else {
			square2circle(btn_person)
			// btn_person.style.borderRadius = "170px";
			// // #474747
			// btn_person.style.backgroundColor = "#474747"
			// btn_person.style.color = '#fff'
			// btn_person.style.opacity = "1"
		}


		num.value = result;
 	}
	
	function visible2(divname1,divname2,number){
		var div1 = document.getElementById(divname1);
		var div2 = document.getElementById(divname2);

		div1.style.visibility = "visible";
		div2.style.visibility = "visible";
		
		var num = document.getElementById("b2");
		var this_qty = Number(num.value);
		var result = this_qty + number;
		
		if(result <= 0){
			result = 0;
			
			div1.style.visibility = "hidden";
			div2.style.visibility = "hidden";
		}
		num.value = result;
 	}
	
	function visible3(divname1,divname2,number){
		var div1 = document.getElementById(divname1);
		var div2 = document.getElementById(divname2);

		div1.style.visibility = "visible";
		div2.style.visibility = "visible";
		
		var num = document.getElementById("b3");
		var this_qty = Number(num.value);
		var result = this_qty + number;
		
		if(result <= 0){
			result = 0;
			
			div1.style.visibility = "hidden";
			div2.style.visibility = "hidden";
		}
		num.value = result;
 	}
	
	function visible4(divname1,divname2,number){
		var div1 = document.getElementById(divname1);
		var div2 = document.getElementById(divname2);

		div1.style.visibility = "visible";
		div2.style.visibility = "visible";
		
		var num = document.getElementById("b4");
		var this_qty = Number(num.value);
		var result = this_qty + number;
		
		if(result <= 0){
			result = 0;
			
			div1.style.visibility = "hidden";
			div2.style.visibility = "hidden";
		}
		num.value = result;
 	}
	
	
	function change1(number){
		var num = document.getElementById("b1");
		var btn_person = document.getElementById('p1');

		var this_qty = Number(num.value);
		var result = this_qty + number;
		
		if(result <= 0){
			result = 0;
			
			circle2square(btn_person);

			document.getElementById("minusdiv1").style.visibility = "hidden";
			document.getElementById("plusdiv1").style.visibility = "hidden";
		}
		num.value = result;
	}
	
	function change2(number){
		var num = document.getElementById("b2")
		var this_qty = Number(num.value);
		var result = this_qty + number;
		
		if(result <= 0){
			result = 0;
			
			document.getElementById("minusdiv2").style.visibility = "hidden";
			document.getElementById("plusdiv2").style.visibility = "hidden";
		}
		
		num.value = result;
	}
	
	function change3(number){
		var num = document.getElementById("b3")
		var this_qty = Number(num.value);
		var result = this_qty + number;
		
		if(result <= 0){
			result = 0;
			
			document.getElementById("minusdiv3").style.visibility = "hidden";
			document.getElementById("plusdiv3").style.visibility = "hidden";
		}
		
		num.value = result;
	}
	
	function change4(number){
		var num = document.getElementById("b4")
		var this_qty = Number(num.value);
		var result = this_qty + number;
		
		if(result <= 0){
			result = 0;
			
			document.getElementById("minusdiv4").style.visibility = "hidden";
			document.getElementById("plusdiv4").style.visibility = "hidden";
		}
		num.value = result;
	}

</script>
<body>
	<div id = "main">
		<img src = "image/뒤로가기.svg" id = "backpage" onClick="location.href = 'Q05.html'">
		
		<div id = "questiondiv">
			<label id = "question">Question <font style = "font-weight: normal;">06</font></label>
		</div>
		
		<div id ="contentdiv"><label id = "content">함께할 동반자를 꾸려보세요</label></div>
		<div id = "announcediv"><label id = "announce">※ 동반자 수에 맞춰 버튼을 클릭해주세요.</label></div>
		
		<div class= "selectbox" id = "person"><label class = "selectlabel">사람</label></div>
		
		<!-- 선택 시
		<div class = "selecteddiv" id = "selectdpersondiv">
			<div class= "selected"><label class = "selectedlabel">사람</label></div>
			<div class = "minusdiv"><hr class = "minuslabel"></div>
			<div class = "numberdiv"><label class = "numberlabel">1</label></div>
		</div>
		-->
	
		<div class= "selectbox" id = "animal"><label class = "selectlabel">동물</label></div>
		
		<!-- 선택 시
		<div class = "selecteddiv" id = "selectdanimaldiv">
			<div class= "selected"><label class = "selectedlabel">동물</label></div>
			<div class = "minusdiv"><hr class = "minuslabel"></div>
			<div class = "numberdiv"><label class = "numberlabel">1</label></div>
		</div>
		-->

		<div class= "selectbox" id = "plant"><label class = "selectlabel">식물</label></div>
		
		<!-- 선택 시
		<div class = "selecteddiv" id = "selectdplantdiv">
			<div class= "selected"><label class = "selectedlabel">식물</label></div>
			<div class = "minusdiv"><hr class = "minuslabel"></div>
			<div class = "numberdiv"><label class = "numberlabel">1</label></div>
		</div>
		-->
		
		<div class= "selectbox" id = "furniture"><label class = "selectlabel">보물</label></div>
		
		<!-- 선택 시
		<div class = "selecteddiv" id = "selectdfurniturediv">
			<div class= "selected"><label class = "selectedlabel">보물</label></div>
			<div class = "minusdiv"><hr class = "minuslabel"></div>
			<div class = "numberdiv"><label class = "numberlabel">1</label></div>
		</div>
		-->
		
		<img src = "image/Q6.svg" id = "Q06">
		<!--<img src = "image/plane.svg" id = "footerplane" onClick = "location.href = 'Q07.html'">-->
	</div>
</body>
</html>