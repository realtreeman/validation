<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>카오스 트리</title>
    <link rel="stylesheet" href="${contextPath}/resources/css/home.css">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="${contextPath}/resources/css/reset.css">
	
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    

</head>
<body>
    <header>
        <div>
            <div class="top clearfix">
                <ul>
                    <li><a href="">로그인</a></li>
                    <li><a href="${contextPath}/member/register">회원가입</a></li>
                </ul>
            </div>
            <div class="bottom">
                <div class="logo clearfix">
                    <a class="char_img">
                       	<img src="${contextPath}/resources/img/logo.png" alt="">
                    </a>
                    <ul class="clearfix">
                        <li><a href="">디아블로2레저렉션</a></li>
                        <li><a href="">오늘의 득템목록</a></li>
                        <li><a href="">아이템 정보</a></li>
                        <li><a href="${contextPath}/board/list">게시판</a></li>
                    </ul>
                </div>
            </div>
        </div>
</header>
<section>
    <div>
        <h2>로그인아이콘</h2>
      
        <div class="login_area">
        
            <form class="login" action="/test.php" method="post">
                <div>
                    <input type="text" name="u_id" placeholder="아이디를 입력하세요">
                </div>
                <div>
                    <input type="password" name="u_pw" placeholder="비밀번호를 입력하세요">
                </div>
                <div class="remember">
                    <button type="submit">로그인</button>
                </div>
                    
                    
                    <div>
                        <a href="">회원가입</a>
                    </div>
                    <div class="remember_text">
                        <p>※ 이 사이트는 회원만 이용가능하며</p>
                        <p><span>회원가입</span>을 통해 로그인 하시기 바랍니다.</p>
                    </div>
            </form>
        </div>
    </div>
</section>
</body>
</html>