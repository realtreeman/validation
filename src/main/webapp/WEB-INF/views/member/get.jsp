<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<div class="container">
	<form id="getForm">
	<input type="hidden" name="id" value="${member.id}">
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
<script>
$(function(){
	$('#getForm .modify').on('click',function(){ //수정페이지
		getForm.attr("action","modify");
		getForm.submit();
	})
	$('#getForm .remove').on('click',function(){ //삭제처리
		getForm.attr("method","post");
		getForm.attr("action","remove");
		getForm.submit();
	})
})
</script>
<%@ include file="../layout/footer.jsp" %>