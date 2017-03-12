<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="sns"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My SNS</title>
<link rel="stylesheet" href="css/styles.css" type="text/css" media="screen" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js" ></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script>
	$(function() {
		$("#accordion").accordion({
			heightStyle : "content",
		});
	});

	function newuser() {
		window
				.open(
						"new_user.jsp",
						"newuser",
						"titlebar=no,location=no,scrollbars=no,resizeable=no,menubar=no,toolbar=no,width=300,height=240");
	}
</script>

<!--[if IE]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>

<body>
	<header>
		<div class="container1">
			<h1 class="fontface" id="title">My Simple SNS</h1>
		</div>
	</header>

	<nav>
		<div class="menu">
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="javascript:newuser()">New User</a></li>
				<li><a href="sns_control.jsp?action=getall">전체글보기</a>
				<li><sns:login /></li>
			</ul>
		</div>
	</nav>

	<div id="wrapper">
		<section id="main">
			<section id="content">
				<b>내소식 업데이트</b>
				<form class="m_form" method="post" action="sns_control.jsp?action=newmsg">
					<input type="hidden" name="uid" value="${uid}">
					<sns:write type="msg"/>
					<button class="submit" type="submit">등록</button>
				</form>
				<br>
				<br>
				<h3>친구들의 최신 소식</h3>
<div id="accordion">
  <h3>김프리 :: 2013.7.8:14:00 작성 [좋아요 6 | 댓글 4]</h3>
  <div>
    <p>어제는 나홀로 영화를 보았습니다. ^^ 사람들이 이상하다고 해도 나는 즐거워요..</p>
    <p>[삭제] 좋아요 / 2013.7.8:14:00 </p>
    <ul class="reply">
    	<li>홍길동 :: 저랑 똑 같네요....  - 2013.7.8:14:00 <a href="">삭제</a></li>
    	<li>아무개 :: 이런일은 있어서는 안되지요.. 파이팅~~~ - 2013.7.8:14:00</li>
    	<li>김사랑 :: 전화 하지 그랬니.... 친구 좋다는 것이 ㅋㅋㅋ - 2013.7.8:14:00</li>
    </ul>
    	<form action="" class="">
    		댓글달기 <input type="text" name="" size="60">	
    	</form>
  </div>
</div>
</section>

			<aside id="sidebar2">
				<!-- sidebar2 -->
				<h2>새로운 친구들.!!</h2>
					<ul>
						<li><a href="#">user1</a></li>
						<li><a href="#">user2</a></li>
						<li><a href="#">user3</a></li>	
					</ul>

				<br> <br>
				<h3>We're Social Too!!</h3>
				<img src="img/facebook_32.png"> <img src="img/twitter_32.png">
				<img src="img/youtube_32.png"> <br> <br>
				<br> <br>

				<h3>Links</h3>
				<ul>
					<li><a href="#">한빛미디어</a></li>
					<li><a href="#">가천대학교</a></li>
					<li><a href="#">가천대학교 길병원</a></li>
				</ul>

			</aside>
			<!-- end of sidebar -->
		</section>
	</div>

	<footer>
		<div class="container1">
			<section id="footer-area">

			<section id="footer-outer-block">
					<aside class="footer-segment">
							<h4>About</h4>
								<ul>
									<li><a href="#">About My Simple SNS</a></li>
									<li><a href="#">Copyright</a></li>
									<li><a href="#">Author</a></li>
								</ul>
					</aside><!-- end of #first footer segment -->

					<aside class="footer-segment">
							<h4>Java Web Programming</h4>
								<ul>
									<li><a href="#">Book Information</a></li>
									<li><a href="#">Table of contents</a></li>
									<li><a href="#">Book History</a></li>
								</ul>
					</aside><!-- end of #second footer segment -->

					<aside class="footer-segment">
							<h4>Contact Us</h4>
								<ul>
									<li><a href="#">Book Support</a></li>
									<li><a href="#">Publication</a></li>
									<li><a href="#">Investor Relations</a></li>
									</ul>
					</aside><!-- end of #third footer segment -->
					
					<aside class="footer-segment">
							<h4>Hee Joung Hwang</h4>
								<p>&copy; 2014 <a href="#">dinfree.com</a> </p>
					</aside><!-- end of #fourth footer segment -->

				</section>
				<!-- end of footer-outer-block -->

			</section>
			<!-- end of footer-area -->
		</div>
	</footer>
</body>
</html>