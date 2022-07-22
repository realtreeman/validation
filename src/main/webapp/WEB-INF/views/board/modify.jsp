<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<div class="container">
	<input type="hidden" name="page" id="page" value=${param.page}>
	<input type="hidden" name="type" id="type" value=${param.type}>
	<h2>수정 페이지</h2>
		<form action="modify" method="post" id="getForm">
			<input type="hidden" name="bno" value="${board.bno}">
			게시물 번호 : ${board.bno} <br>
			제목 : <input type="text" name="title" value="${board.title}"><br>
			내용 :
			<textarea rows="" cols="" name="content">${board.content}</textarea><br>
			작성자 : ${board.writer}<br>
			<button class="btn btn-warning modify">수정하기</button>
			<button class="btn btn-primary list">돌아가기</button>
		</form>
</div>
<script>
$(function(){
	let getForm = $("#getForm");
	$('#getForm .list').on('click',function(){ //목록
		getForm.empty();
		getForm.append($('#page'));
		getForm.append($('#type'));
		getForm.append($('#keyword'));
		getForm.attr("action","list");
		getForm.submit();
	})
	$('#getForm .modify').on('click',function(){ //수정페이지
		getForm.attr("action","modify");
		getForm.submit();
	})
}
</script>
<%@ include file="../layout/footer.jsp" %>