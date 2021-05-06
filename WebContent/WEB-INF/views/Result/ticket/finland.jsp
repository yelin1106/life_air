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
	
	#titlediv{text-align: center; position: relative;}
	#title{font-family:'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; color: #474747;}
	
	#landingdiv{text-align: center; position: relative;}
	#landing{font-family:'Noto Sans CJK KR';font-weight: 300;font-stretch: normal; font-style: normal; line-height: 1.63; letter-spacing: -0.8px; color: #707070;}
	.landing_highlight{font-weight: bold;}
	
	#alldiv{text-align: center; position: relative;}
	
	#boardingpassdiv{background-color: #474747; position: relative; display: table; text-align: center; box-shadow: 0 3px 6px 0 rgba(0, 0, 0, 0.16);}
	#boardingtitlediv{background-color: #ffffff; position: relative; display: table; text-align: center;}
	#boardingtitle{font-family: "Roboto"; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 2.13; letter-spacing: normal; color: #474747;}
	#todiv{position: relative; display: table; text-align: center; float: left;}
	#sigdiv{position: relative; display: table; text-align: center;}
	#sig{font-family: "Roboto"; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.43; letter-spacing: normal; color: #ffffff;}
	#sigkdiv{position: relative; display: table; text-align: center;}
	#sigk{font-family: 'Noto Sans CJK KR'; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 2.5; letter-spacing: -0.8; color: #ffffff;}
	#boardingplane{position: relative; float: left;}
	#fromdiv{position: relative; display: table; text-align: center; float: left;}
	#togdiv{position: relative; display: table; text-align: center;}
	#tog{font-family: "Roboto"; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.43; letter-spacing: normal; color: #ffffff;}
	#togkdiv{position: relative; display: table; text-align: center;}
	#togk{font-family: 'Noto Sans CJK KR'; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 2.5; letter-spacing: -0.8; color: #ffffff;}
	
	#destinationdiv{background-color: #ffffff; position: relative; display: table; text-align: center; box-shadow: 0 3px 6px 0 rgba(0, 0, 0, 0.16);}
	.line{position: relative;}
	#desdiv{position: relative; text-align: left;}
	.alltitle{font-family: "Roboto"; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 2.13; letter-spacing: normal; color: #9d9d9d; position: relative;}
	#descondiv{position: relative; text-align: left;}
	.allcontent{font-family: 'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.63; letter-spacing: -0.8px; color: #575757; position: relative;}
	#fnamediv{position: relative; text-align: left; float: left;}
	#fnumberdiv{position: relative; text-align: left; float: left;}
	#fnamecondiv{position: relative; text-align: left; float: left;}
	#fnumbercondiv{position: relative; text-align: left; float: left;}
	
	.passengerdiv{background-color: #ffffff; position: relative; display: table; text-align: center; box-shadow: 0 3px 6px 0 rgba(0, 0, 0, 0.16);}
	.pnamediv{position: relative; text-align: left; float: left;}
	.pnumberdiv{position: relative; text-align: left; float: left;}
	.pnamecondiv{position: relative; text-align: left; float: left;}
	.pnumbercondiv{position: relative; text-align: left; float: left;}
	.passline{position: relative;}
	
	#totalpassengerdiv{background-color: #ffffff; position: relative; display: table; text-align: center; box-shadow: 0 3px 6px 0 rgba(0, 0, 0, 0.16);}
	#totaldiv{position: relative; text-align: left;}
	#totallabel{opacity: 0.5; font-family: 'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.63; letter-spacing: -0.8px; color: #707070;}
	#totalcontent{position: relative; text-align: left;}
	#tcontentlabel{opacity: 0.5; font-family: 'Noto Sans CJK KR'; font-weight: 300; font-stretch: normal; font-style: normal; line-height: 1.63; letter-spacing: -0.8px; color: #707070;}
	#totalline{position: relative;}
	
	#passdiv{background-color: #ffffff; position: relative; text-align: center;}
	#backimage{position: relative;}
	#passlabeldiv{position: relative; text-align: left; float: left;}
	#passlabel{opacity: 0.5; font-family: 'Noto Sans CJK KR'; font-weight: 300; font-stretch: normal; font-style: normal; line-height: 1.63; letter-spacing: -0.8px; color: #707070;}
	#passimg{position: relative; float: left;}
	
	#stardiv{background-color: #f5f5f7; position: relative; text-align: center;}
	#startitlediv{background-color: #474747; position: relative; text-align: center; display: table;}
	#startitle{font-family: 'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 2.13; letter-spacing: normal; color: #ffffff;}
	#starnamediv{position: relative; text-align: center;}
	#starname{font-family: 'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.4; letter-spacing: -2px; color: #474747;}
	#starimg{position: relative;}
	#snamediv{position: relative;}
	#sname{font-family: "Roboto"; font-weight: normal; font-stretch: normal; font-style: normal; line-height: 2.5; letter-spacing: -0.8px; color: #474747;}
	#starcontentdiv{position: relative; text-align: left;}
	#starcontent{font-family: 'Noto Sans CJK KR'; font-weight: 300; font-stretch: normal; font-style: normal; line-height: 1.63; letter-spacing: -0.8px; color: #707070;}
	
	#detaildiv{background-color: #f5f5f7; position: relative; text-align: center;}
	#detailtitlediv{background-color: #474747; position: relative; text-align: center; display: table;}
	#detailtitle{font-family: 'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 2.13; letter-spacing: normal; color: #ffffff;}
	#detailcontentdiv{position: relative; text-align: left;}
	#detailcontent{font-family: 'Noto Sans CJK KR'; font-weight: 300; font-stretch: normal; font-style: normal; line-height: 1.63; letter-spacing: -0.8px; color: #707070;}
	#detailgodiv{position: relative; text-align: center;}
	#detailgo{font-family: 'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 1.63; letter-spacing: -0.8px; color: #707070;}
	
	#showdiv{background-color: #f5f5f7; position: relative; text-align: center;}
	#showtitlediv{background-color: #474747; position: relative; text-align: center; display: table;}
	#showtitle{font-family: 'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 2.13; letter-spacing: normal; color: #ffffff;}
	#touchme{position: relative;}
	
	#sharediv{background-color: transparent; position: relative; text-align: center;}
	#sharetitlediv{background-color: #f5f5f7; position: relative; text-align: center; display: table;}
	#sharetitle{font-family: 'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 2.13; letter-spacing: normal; color: #707070;}
	#kakaotalk{position: relative; float: left;}
	#twitter{position: relative; float: left;}
	#link{position: relative; float: left;}
	
	#repeatdiv{position: relative; text-align: center;}
	#repeat{font-family:'Noto Sans CJK KR'; font-weight: bold; font-stretch: normal; font-style: normal; line-height: 2.13; letter-spacing: -0.8px; color: #707070;}
	#repeatline{position: relative;}
	
	#peoplediv{position: relative; text-align: center;}
	#people{opacity: 0.5; font-family:'Noto Sans CJK KR'; font-weight: 300; font-stretch: normal; font-style: normal; line-height: 1.81; letter-spacing: -0.8px; color: #474747;}
	

	
	@media all and (min-width: 360px) and (max-width: 768px) { /*모바일 */
		#main{width:360px; height: 640px;}
		#boardingdiv{width: 160px; height: 32px; border-radius: 16px; top:72px; left: 100px;}
		#boarding{font-size: 24px;}
		
		#titlediv{top:88px;}
		#title{font-size: 28px; line-height: 1.43; letter-spacing: -1.4px;}
		
		#landingdiv{top:114px}
		#landing{font-size: 16px;}
		
		#alldiv{top:182px; left:20px;}
		#boardingpassdiv{width:320px; height: 176px; border-top-left-radius: 15px; border-top-right-radius: 15px;}
		#boardingtitlediv{width: 144px; height: 24px; border-radius: 20px; top:24px; left: 88px;}
		#boardingtitle{font-size: 15px;}
		#todiv{top:49px; left:40px;}
		#sig{font-size: 28px;}
		#sigkdiv{top:-10px;}
		#sigk{font-size: 16px;}
		#boardingplane{height: 32px; width:100px; top:64px; left:50px;}
		#fromdiv{top:49px; left:55px;}
		#tog{font-size: 28px;}
		#togkdiv{top:-10px;}
		#togk{font-size: 16px;}
		
		#destinationdiv{width:320px; height: 160px; border-bottom-left-radius: 16px; border-bottom-right-radius: 16px;}
		.line{width: 268px; top:26px;}
		#desdiv{top:21px; left:15px;}
		.alltitle{font-size: 16px;}
		#descondiv{top:15px; left:15px;}
		.allcontent{font-size: 16px;}
		#fnamediv{top:20px; left:15px; width:140px;}
		#fnamecondiv{top:15px; left:15px; width:140px;}
		#fnumberdiv{top:20px; left:20px; width:140px;}
		#fnumbercondiv{top:15px; left:20px; width:140px;}
		
		.passengerdiv{width:320px; height: 96px; border-radius: 16px;}
		.pnamediv{top:20px; left:15px; width:140px;}
		.pnamecondiv{top:15px; left:14px; width:140px;}
		.pnumberdiv{top:20px; left:20px; width:140px;}
		.pnumbercondiv{top:15px; left:20px; width:140px;}
		.passline{width: 268px; top:22px;}
		
		#totalpassengerdiv{width:320px; height: 130px; border-radius: 15px;}
		#totaldiv{width:300px; top:25px; left:15px;}
		#totallabel{font-size: 16px;}
		#totalcontent{width:260px; top:37px; left:15px;}
		#tcontentlabel{font-size: 16px;}
		#totalline{width: 268px; top:38px;}
		
		#passdiv{width:320px; height: 200px; border-radius: 15px;}
		#backimage{width: 306.6px; height: 128.3px; top:36px;}
		#passlabeldiv{top:-108px; left:15px;}
		#passlabel{font-size: 16px;}
		#passimg{width: 96px; height: 96px; top:-190px; left:208px;}
		
		#stardiv{width:320px; height: 1120px; border-radius: 15px; top:46px; }
		#startitlediv{width: 208px; height: 40px; border-radius: 28px; top:-50px; left:-40px;}
		#startitle{font-size: 24px;}
		#starnamediv{width:340px; top:-26px; left:-57px;}
		#starname{font-size: 28px;}
		#starimg{width: 73px; height: 131px; top:8px;}
		#snamediv{top:19px;}
		#sname{font-size: 16px;}
		#starcontentdiv{width:270px; top:50px; left:25px;}
		#starcontent{font-size: 16px;}
		
		#detaildiv{width:320px; height: 219px; border-radius: 15px; top:78px;}
		#detailtitlediv{width: 208px; height: 40px; border-radius: 25px; top:32px; left:56px;}
		#detailtitle{font-size: 19px;}
		#detailcontentdiv{width:264px; top:48px; left:25px;}
		#detailcontent{font-size: 16px;}
		#detailgodiv{top:72px;}
		#detailgo{font-size: 16px;}
		
		#showdiv{width:320px; height: 440px; border-radius: 15px; top:110px;}
		#showtitlediv{width: 208px; height: 40px; border-radius: 25px; top:32px; left:56px;}
		#showtitle{font-size: 19px;}
		#touchme{width: 284.8px; height: 311.5px; top:56px;}
		
		#sharediv{width:320px; height: 144px; top:163px;}
		#sharetitlediv{width: 208px; height: 40px; border-radius: 40px; left:56px;}
		#sharetitle{font-size: 19px;}
		#kakaotalk{width:40px; height: 40px; top:24px; left:83px;}
		#twitter{width:40px; height: 40px; top:24px; left:98px;}
		#link{width:40px; height: 40px; top:24px; left:113px;}
		
		#repeatdiv{width:56px; top:184px; left:130px;}
		#repeat{font-size: 16px;}
		#repeatline{width:16px; height: 1px; border: none; background-color: #707070; top:224px; left:150px;}
		
		#peoplediv{width:198px; top:264px; left:50px; padding-bottom: 54px;}
		#people{font-size: 12px;}
	}
	
	@media all and (min-width: 768px) { /*태블릿 */
		#main{width:768px; height: 1024px;}
		
		#boardingdiv{width: 235px; height: 47px; border-radius: 24px; top:188px; left: 260px;}
		#boarding{font-size: 34px;}
		
		#titlediv{top:212px;}
		#title{font-size: 40px; line-height: 1.43; letter-spacing: -1.4px;}
		
		#landingdiv{top:246px}
		#landing{font-size: 22px;}
		
		#alldiv{top:326px; left:156px;}
		#boardingpassdiv{width:456px; height: 252px; border-top-left-radius: 16px; border-top-right-radius: 16px;}
		#boardingtitlediv{width: 206px; height: 34px; border-radius: 20px; top:35px; left: 125px;}
		#boardingtitle{font-size: 17px;}
		#todiv{top:60px; left:60px;}
		#sig{font-size: 40px;}
		#sigkdiv{top:-10px;}
		#sigk{font-size: 22px;}
		#boardingplane{height: 45px; width:150px; top:84px; left:70px;}
		#fromdiv{top:60px; left:75px;}
		#tog{font-size: 40px;}
		#togkdiv{top:-10px;}
		#togk{font-size: 22px;}
		
		#destinationdiv{width:456px; height: 228px; border-bottom-left-radius: 16px; border-bottom-right-radius: 16px;}
		.line{width:382px; height: 3px; top:52px;}
		#desdiv{top:30px; left:21px;}
		.alltitle{font-size: 22px;}
		#descondiv{top:20px; left:21px;}
		.allcontent{font-size: 22px;}
		#fnamediv{top:28px; left:21px; width:200px;}
		#fnamecondiv{top:25px; left:21px; width:200px;}
		#fnumberdiv{top:28px; left:35px; width:200px;}
		#fnumbercondiv{top:25px; left:35px;width:200px;}
		
		.passengerdiv{width:456px; height: 137px; border-radius: 16px;}
		.pnamediv{top:20px; left:21px; width:200px;}
		.pnamecondiv{top:20px; left:21px; width:200px;}
		.pnumberdiv{top:20px; left:35px; width:200px;}
		.pnumbercondiv{top:20px; left:35px; width:200px;}
		.passline{width: 382px; height: 3px; top:43px;}
		
		#totalpassengerdiv{width:456px; height: 189px; border-radius: 15px;}
		#totaldiv{width:380px; top:35px; left:21px;}
		#totallabel{font-size: 22px;}
		#totalcontent{width:360px; top:47px; left:21px;}
		#tcontentlabel{font-size: 22px;}
		#totalline{width: 382px; height: 3px; top:71px;}
		
		#passdiv{width:456px; height: 285px; border-radius: 15px;}
		#backimage{width: 437.8px; height: 183.3px; top:50px;}
		#passlabeldiv{top:-148px; left:21px;}
		#passlabel{font-size: 22px;}
		#passimg{width: 137px; height: 137px; top:-280px; left:296px;}
		
		#stardiv{width:456px; height: 1553px; border-radius: 15px; top:46px;}
		#startitlediv{width: 296px; height: 57px; border-radius: 40px; top:-70px; left:-60px;}
		#startitle{font-size: 27px;}
		#starnamediv{width:500px; top:-40px; left:-90px;}
		#starname{font-size: 40px;}
		#starimg{width: 104px; height: 187px; top:30px;}
		#snamediv{top:35px;}
		#sname{font-size: 22px;}
		#starcontentdiv{width:386px; top:92px; left:35px;}
		#starcontent{font-size: 22px;}
		
		#detaildiv{width:456px; height: 313px; border-radius: 15px; top:92px;}
		#detailtitlediv{width: 296px; height: 57px; border-radius: 40px; top:46px; left:81px;}
		#detailtitle{font-size: 27px;}
		#detailcontentdiv{width:377px; top:69px; left:37px;}
		#detailcontent{font-size: 22px;}
		#detailgodiv{top:103px;}
		#detailgo{font-size: 22px;}
		
		#showdiv{width:456px; height: 628px; border-radius: 15px; top:138px;}
		#showtitlediv{width: 296px; height: 57px; border-radius: 40px; top:46px; left:81px;}
		#showtitle{font-size: 27px;}
		#touchme{width: 406.6px; height: 444.7px; top:80px;}
		
		#sharediv{width:456px; height: 205px; top:214px;}
		#sharetitlediv{width: 296px; height: 57px; border-radius: 40px;left:81px;}
		#sharetitle{font-size: 27px;}
		#kakaotalk{width:58px; height: 57px; top:35px; left:120px;}
		#twitter{width:58px; height: 57px; top:35px; left:145px;}
		#link{width:58px; height: 57px; top:35px; left:170px;}
		
		#repeatdiv{width:77px; top:220px; left:195px;}
		#repeat{font-size: 21px;}
		#repeatline{width:22px; height: 1px; border: none; background-color: #707070; top:281px; left:225px;}
		
		#peoplediv{width:265px; top:358px; left:90px; padding-bottom: 95px;}
		#people{font-size: 16px;}
	}
</style>
</head>

<body>
	<div id = "main">
		<div id = "boardingdiv">
			<label id = "boarding">Landing</label>
		</div>
		
		<div id = "titlediv">
			<label id = "title">. . . 우주를 머리에 이는 중 . . .</label>
		</div>
		
		<div id = "landingdiv">
			<label id = "landing">
				당신과 동반자는 드디어 착륙했어요.<br>
				<font class = "landing_highlight">우주를 머리에 이고 있는 핀란드 통나무집</font>에<br>
				도착한 당신은 벽난로 앞에 누워 머리위에<br>
				수 놓아진 별들을 바라보고 있어요.<br><br>
				핀란드의 날씨처럼 당신과 동반자는<br>
				<font class = "landing_highlight">알고보면 반전매력을 소유하고 있는<br>
				치명적인 마력의 소유자</font>일 것 같아요.<br>
				당신의 동반자들도 잘 도착했을까요?
			</label>
		</div>
		
		<div id = "alldiv">
			<div id = "boardingpassdiv">
				<div id = "boardingtitlediv"><label id = "boardingtitle">BOARDING PASS</label></div>
				<div id = "todiv">
					<label id = "sig">SIG</label>
					<div id = "sigkdiv"><label id = "sigk">혼자인 삶</label></div>
				</div>
				<img src = "image/보딩패스_가는길.svg" id = "boardingplane">
				<div id = "fromdiv">
					<label id = "tog">TOG</label>
					<div id = "togkdiv"><label id = "togk">함께인 삶</label></div>
				</div>
			</div>
			
			<div id = "destinationdiv">
				<div id = "desdiv"><label class = "alltitle">Destination</label></div>
				<div id = "descondiv"><label class = "allcontent">온 우주를 머리에 이고 있는 핀란드 통나무집</label></div>
				
				<div id = "fnamediv" class = "alltitle"><label >Family name</label></div>
				<div id = "fnumberdiv" class = "alltitle"><label >Flight Number</label></div>
				
				<div id = "fnamecondiv" class = "allcontent"><label >청승넨의 가족</label></div>
				<div id = "fnumbercondiv" class = "allcontent"><label >AB2110</label></div>
				
				<img src = "image/점선_핀란드.svg" class = "line">
			</div>
			
			<div class = "passengerdiv">
				<div class = "pnamediv alltitle"><label>Passenger</label></div>
				<div class = "pnumberdiv alltitle"><label>Number</label></div>
				
				<div class = "pnamecondiv allcontent"><label >청승넨</label></div>
				<div class = "pnumbercondiv allcontent"><label>여성-3845</label></div>
				
				<img src = "image/점선_핀란드.svg" class = "passline">
			</div>
			
			<div class = "passengerdiv">
				<div class = "pnamediv alltitle"><label>Passenger</label></div>
				<div class = "pnumberdiv alltitle"><label>Number</label></div>
				
				<div class = "pnamecondiv allcontent"><label >청승넨</label></div>
				<div class = "pnumbercondiv allcontent"><label>여성-3845</label></div>
				
				<img src = "image/점선_핀란드.svg" class = "passline">
			</div>
			
			<div class = "passengerdiv">
				<div class = "pnamediv alltitle"><label>Passenger</label></div>
				<div class = "pnumberdiv alltitle"><label>Number</label></div>
				
				<div class = "pnamecondiv allcontent"><label >청승넨</label></div>
				<div class = "pnumbercondiv allcontent"><label>여성-3845</label></div>
				
				<img src = "image/점선_핀란드.svg" class = "passline">
			</div>
			
			<div class = "passengerdiv">
				<div class = "pnamediv alltitle"><label>Passenger</label></div>
				<div class = "pnumberdiv alltitle"><label>Number</label></div>
				
				<div class = "pnamecondiv allcontent"><label >청승넨</label></div>
				<div class = "pnumbercondiv allcontent"><label>여성-3845</label></div>
				
				<img src = "image/점선_핀란드.svg" class = "passline">
			</div>
			
			<div id = "totalpassengerdiv">
				<div id = "totaldiv"><label id = "totallabel">2 인 1 마리 1 식물 0 보물</label></div>
				<div id = "totalcontent"><label id = "tcontentlabel">청승넨씨의 가족은 사람 2인, 동물 1 마리, 식물 1개로 구성된 가구입니다.</label></div>
				<img src = "image/점선_핀란드.svg" id = "totalline">
			</div>
			
			<div id = "passdiv">
				<img src = "image/티켓_배경.svg" id = "backimage">
				<div id = "passlabeldiv"><label id = "passlabel">
						승객여러분 오늘도 저희 라이프항공을<br>
						이용해주셔서 진심으로 감사드립니다.<br><br>
						동반자와 함께 하는 여행이 즐겁기를<br>
						바라며 어디에 있든 행복만<br>
						가득하기를 바라겠습니다.</label>
				</div>
				<img src = "image/패스_핀란드.svg" id = "passimg">
			</div>
			
			<div id = "stardiv">
				<div id = "startitlediv"><label id = "startitle">당신의 수호별</label></div>
				<div id = "starnamediv"><label id = "starname">어제보다 내일<br>
					더 빛나는 별, 멘칼리난</label></div>
				<img src = "image/별자리_멘칼리난.svg" id = "starimg">
				<div id = "snamediv"><label id = "sname">Menkalinan</label></div>
				<div id = "starcontentdiv"><label id = "starcontent">
					여행의 시작에 선 당신을 위해 작은 선물을 준비했어요. 약 18.2km/s 의 속도로 태양계와 가까워지고 있는 멘칼리난은 어림잡아 99만 년이 지나면 카노푸스를 제치고 밤하늘에서 가장 밝은 별이 된다고 해요.<br><br>
					어제보다는 내일, 내일보다는 모레 더 빛날 멘칼리난은 <font style = "font-weight: bold">차곡차곡 목표를 향해 정진</font>하는 당신과 닮았어요.<br><br>
					알 수 없는 미래는 때때로 두려움을 안겨주지만, 지금껏 그랬듯 앞으로도 계속 자신을 믿으세요. 당신이 원하는 어떤 곳이든 갈 수 있을 거예요.<br><br>
					당신의 동반자는 당신이 가는 길을 함께 해줄 <font style = "font-weight: bold">러닝메이트</font>예요. 숨이 가빠지면 발맞춰 천천히 걷고, 어깨가 무거우면 함께 짐을 드는 동반자의 보살핌 덕분에 당신은 내일도 한 발 한 발 나아갈 수 있어요.<br><br>
					당신에게 이 별을 드릴게요.<br><br>
					멘칼리난의 빛과 함께 앞으로의 여정이 평화롭기를 기원합니다.
					</label>
				</div>
			</div>
			
			<div id = "detaildiv">
				<div id = "detailtitlediv"><label id = "detailtitle">라이프항공</label></div>
				
				<div id = "detailcontentdiv"><label id = "detailcontent">인생이 긴 여행이라면 한 번뿐인 여정을 어떤 이와 함께하고 싶나요?</label></div>
				
				<div id = "detailgodiv"><label id = "detailgo" onClick = "location.href = '자세히알아보기.html'">자세히 알아보기</label></div>
			</div>
			
			<div id = "showdiv">
				<div id = "showtitlediv"><label id = "showtitle">자랑하기</label></div>
				
				<img src = "image/터치미.svg" id = "touchme" onClick="location.href = '뽐내기_핀란드.html'">
			</div>
			
			<div id = "sharediv">
				<div id = "sharetitlediv"><label id = "sharetitle">공유하기</label></div>
				
				<img src = "image/카카오톡.svg" id = "kakaotalk">
				<img src = "image/트위터.svg" id = "twitter">
				<img src = "image/링크.svg" id = "link">
			</div>
			
			<div id = "repeatdiv"><label id = "repeat">다시하기</label></div>
			
			<div id = "repeatline"></div>
			
			<div id = "peoplediv">
				<label id = "people">
					<font style = "font-weight: bold;">기획/디자인</font> 이청아, 이승미, 김수빈, 곽성하
					<font style = "font-weight: bold;">프론트엔드</font> 이유현, 신유림  &nbsp; <font style = "font-weight: bold;">백엔드</font> 이연정
					<font style = "font-weight: bold;">이메일</font> mbti_lab@naver.com<br>
					<font style = "font-weight: bold;">연락</font> insta @mbti_lab
				</label>
			</div>
		</div>	
	</div>
</body>
</html>