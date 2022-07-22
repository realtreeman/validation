<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../layout/header.jsp" %>
<div class="container">


<div class="article_register my-4">
	<h3>게시글 쓰기</h3>
</div>

<form action="register" method="post" id="registerForm">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
	<div class="form-group">
		<label for="title">제목 :</label>
		<input type="text" name="title" id="title" class="form-control">
	</div>
	<div class="form-group">
		<label for="content">내용 :</label>
		<textarea rows="10" cols="50" name="content" id="content" class="form-control"></textarea>
	</div>
	<div class="form-group">
			<label for="writer">작성자 : </label>
			<input type="text" name="writer" class="form-control">
		</div>
	<div class="d-flex justify-content-end">
		
		<button class="btn btn-primary">등록</button>
	</div>
</form>
	
<div class="container">
<%@ include file="../layout/footer.jsp" %>
<style>
.error {font-size: 12px; color: red;}
</style>
