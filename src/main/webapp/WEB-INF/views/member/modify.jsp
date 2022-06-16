<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<h2>수정 페이지</h2>
<form action="modify" method="post">
	<input type="hidden" name="id" value="${member.id}">
	이름 : ${member.userName} <br>
	메일 : <input type="text" name="title" value="${member.email}"><br>
	<button>수정하기</button>
</form>
<%@ include file="../layout/footer.jsp" %>