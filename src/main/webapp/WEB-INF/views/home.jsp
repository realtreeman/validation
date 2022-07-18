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
                    <li><a href="${contextPath}/member/login">로그인</a></li>
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
<div class="content">
    <div class="tab">
        <div class="tab_top clearfix">
            <ul>
                <li><a href="">캐릭터 정보</a></li>
            </ul>
            <div class="seemore">
                <a href="">더보기</a>
            </div>
        </div>
        <div class="tab_bottom">
            
        </div> <!-- slick 끝-->
        <div id="demo" class="carousel slide" data-ride="carousel">

            <!-- Indicators -->
            <ul class="carousel-indicators">
              <li data-target="#demo" data-slide-to="0" class="active"></li>
              <li data-target="#demo" data-slide-to="1"></li>
              <li data-target="#demo" data-slide-to="2"></li>
            </ul>
          
            <div class="carousel-inner">
              <div class="carousel-item active bg-dark">
                <div class="row">
                    <div class="col-lg-6"> 
                        <img src="${contextPath}/resources/img/class_amazon.png" alt="">
                    </div>
                    <div class="col-lg-6"> 
                        <strong>아마존</strong>
                        <p>이름</p>
                        <p>성별</p>
                        <p>나이</p>
                        <p>레벨</p>
                        <p>안녕어하니이ㅏㄹ;ㅣ만얼;ㅣㄴ마ㅓㅇㄹ;니마얼</p>
                    </div>
                </div>
              </div>
              <div class="carousel-item row">
                <div class="col-lg-6"> 
                    <img src="${contextPath}/resources/img/class_assassin.png" alt="">
                </div>
                <div class="col-lg-6"> 
                    <strong>어쎄신</strong>                                   
                </div>
              </div>
              <div class="carousel-item row">
                    <div class="col-lg-6"> 
                        <img src="${contextPath}/resources/img/class_barbarian.png" alt="">
                    </div>
                    <div class="col-lg-6"> 
                        <strong>바바리안</strong>             
                    </div>
              </div>
              
            </div>
          
            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
              <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
              <span class="carousel-control-next-icon"></span>
            </a>
          
         </div> <!--캐루셀 끝-->
    </div>

    
</div>
</body>
</html>