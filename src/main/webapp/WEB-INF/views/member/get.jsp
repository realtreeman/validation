<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<div class="container">
	<form id="getForm">
		<div>
			<h3>${member.userName }</h3>
			<p>이메일 : ${member.email }</p>
			<p>패스워드 : ${member.password }</p>
		</div>
		<button class="btn btn-warning modify">수정</button>
		<button class="btn btn-danger remove">삭제</button>
		<button class="btn btn-primary list">목록</button>	
	</form>	
</div>
<%@ include file="../layout/footer.jsp" %>