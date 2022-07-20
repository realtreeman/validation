<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="layout/header.jsp" %>
<div class="content">
    <div class="tab">
        <div class="tab_top clearfix">
            <ul>
                <li><a href="" class="text-secondary">캐릭터 정보</a></li>
            </ul>
            <div class="seemore">
                <a href="" class="text-secondary">더보기</a>
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
              <div class="carousel-item active">
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
<%@ include file="layout/footer.jsp" %>