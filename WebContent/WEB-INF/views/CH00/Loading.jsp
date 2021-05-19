<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
<meta charset="UTF-8">
<title>LifeAir</title>
<style>
	* {margin: 0; padding: 0;}
	
	body{background-color: #ececf0; overflow-y: auto;}
	
	#main{background-color: #ececf0; margin: 0 auto;}
	#contentdiv{text-align: center; color: #707070; opacity: 0.5; font-family: 'Noto Sans CJK KR'; font-weight: normal; font-stretch: normal; font-style: normal; }
	
	@media all and (min-width: 360px) and (max-width: 768px) { /*모바일 */
		#main{width:360px; height: 640px;}
		#img5{width:8px; height: 8px; margin-top: 239px; margin-left: 179px;}
		#img1{width:8px; height: 8px; position: relative; top:17px; left:18px;}
		#img2{width:8px; height: 8px; position: relative; top:43px; left:6px;}
		#img3{width:8px; height: 8px; position: relative; top:60px; left:-34px;}
		#img4{width:8px; height: 8px; position: relative; top:43px; right:76px;}
		#img6{width:8px; height: 8px; position: relative; top:17px; right:88px;}
		
		#plane{width: 34px; height: 32px; position: relative; top:42px; left:-83px;}
		
		#contentdiv{font-size: 16px;line-height: 1.63; letter-spacing: -0.8px; position: relative; top:89px;}
	}
	
	@media all and (min-width: 768px) { /*태블릿 */
		#main{width:768px; height: 1024px;}
		
		#img5{width:12px; height: 11px; margin-top: 396px; margin-left: 383px;}
		#img1{width:12px; height: 11px; position: relative; top:25px; left:27px;}
		#img2{width:12px; height: 11px; position: relative; top:60px; left: 12px;}
		#img3{width:12px; height: 11px; position: relative; top:82px; left:-46px;}
		#img4{width:12px; height: 11px; position: relative; top:60px; left:-106px;}
		#img6{width:12px; height: 11px; position: relative; top:25px; left:-122px;}
		
		#plane{width: 49.8px; height: 47.3px; position: relative; top:60.6px; left:-113px;}
		
		#contentdiv{font-size: 24px; line-height: 1.61; letter-spacing: -1.15px; position: relative; top:131px;}
	}
</style>
<!-- <script type="module" src="node_modules/spin.js/spin.js"></script>
<script type="text/javascript">
import {Spinner} from 'spin.js';

var opts = {
  lines: 13, // The number of lines to draw
  length: 38, // The length of each line
  width: 17, // The line thickness
  radius: 45, // The radius of the inner circle
  scale: 1, // Scales overall size of the spinner
  corners: 1, // Corner roundness (0..1)
  speed: 1, // Rounds per second
  rotate: 0, // The rotation offset
  animation: 'spinner-line-fade-quick', // The CSS animation name for the lines
  direction: 1, // 1: clockwise, -1: counterclockwise
  color: '#ffffff', // CSS color or array of colors
  fadeColor: 'transparent', // CSS color or array of colors
  top: '50%', // Top position relative to parent
  left: '50%', // Left position relative to parent
  shadow: '0 0 1px transparent', // Box-shadow for the lines
  zIndex: 2000000000, // The z-index (defaults to 2e9)
  className: 'spinner', // The CSS class to assign to the spinner
  position: 'absolute', // Element positioning
};

var target = document.getElementById('foo');
var spinner = new Spinner(opts).spin(target);
target.appendChild(spinner.el);
</script> -->
<script type="text/javascript">

	var timer;
	
	var imgArray1=new Array(); 
	imgArray1[0]="image/로딩6.svg"; 
	imgArray1[1]="image/로딩1.svg"; 
	imgArray1[2]="image/로딩2.svg"; 
	imgArray1[3]="image/로딩3.svg";
	imgArray1[4]="image/로딩4.svg";
	imgArray1[5]="image/로딩5.svg";
	imgArray1[6]="image/로딩6.svg"; 
	
	var imgArray2=new Array(); 
	imgArray2[0]="image/로딩5.svg"; 
	imgArray2[1]="image/로딩6.svg"; 
	imgArray2[2]="image/로딩1.svg"; 
	imgArray2[3]="image/로딩2.svg";
	imgArray2[4]="image/로딩3.svg";
	imgArray2[5]="image/로딩4.svg";
	imgArray2[6]="image/로딩5.svg"; 
	
	var imgArray3=new Array(); 
	imgArray3[0]="image/로딩4.svg"; 
	imgArray3[1]="image/로딩5.svg"; 
	imgArray3[2]="image/로딩6.svg"; 
	imgArray3[3]="image/로딩1.svg";
	imgArray3[4]="image/로딩2.svg";
	imgArray3[5]="image/로딩3.svg";
	imgArray3[6]="image/로딩4.svg"; 
	
	var imgArray4=new Array(); 
	imgArray4[0]="image/로딩3.svg"; 
	imgArray4[1]="image/로딩4.svg"; 
	imgArray4[2]="image/로딩5.svg"; 
	imgArray4[3]="image/로딩6.svg";
	imgArray4[4]="image/로딩1.svg";
	imgArray4[5]="image/로딩2.svg";
	imgArray4[6]="image/로딩3.svg"; 
	
	var imgArray5=new Array(); 
	imgArray5[0]="image/로딩2.svg"; 
	imgArray5[1]="image/로딩3.svg"; 
	imgArray5[2]="image/로딩4.svg"; 
	imgArray5[3]="image/로딩5.svg";
	imgArray5[4]="image/로딩6.svg";
	imgArray5[5]="image/로딩1.svg";
	imgArray5[6]="image/로딩2.svg";
	
	var imgArray6=new Array(); 
	imgArray6[0]="image/로딩1.svg"; 
	imgArray6[1]="image/로딩2.svg"; 
	imgArray6[2]="image/로딩3.svg"; 
	imgArray6[3]="image/로딩4.svg";
	imgArray6[4]="image/로딩5.svg";
	imgArray6[5]="image/로딩6.svg";
	imgArray6[6]="image/로딩1.svg";
	

	var num = 0;	
	
	function startAnimation(){
      timer = setTimeout("ShowDefaultRotate()",100);
	}
	
	

	function ShowDefaultRotate() {
		num++;
		if(num < imgArray1.length){
			document.getElementById("img5").src = imgArray1[num];
			document.getElementById("img1").src = imgArray2[num];
			document.getElementById("img2").src = imgArray3[num];
			document.getElementById("img3").src = imgArray4[num];
			document.getElementById("img4").src = imgArray5[num];
			document.getElementById("img6").src = imgArray6[num];	
			timer = setTimeout("ShowDefaultRotate()",500);
		}
		
		else if(num = imgArray1.length){
			location.href="Loading_Last.do"
	
		}
		
		else{
			clearTimeout(timer);
		}
		
		
	}
	
	 window.onload = startAnimation();
</script>
</head>

<body>
	<div id = "main">
	<div id="foo"></div>
		<img src = "image/로딩6.svg" id = "img5">
		<img src = "image/로딩1.svg" id = "img1">
		<img src = "image/로딩2.svg" id = "img2">
		<img src = "image/로딩3.svg" id = "img3">
		<img src = "image/로딩4.svg" id = "img4">
		<img src = "image/로딩5.svg" id = "img6">
		
		<img src = "image/로딩_비행기.svg" id = "plane">
		
		<div id = "contentdiv">인생이란 여행에<br>누구든 동반자가 될 수 있어요</div>
	</div>
</body>
</html>