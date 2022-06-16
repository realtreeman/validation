<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../layout/header.jsp" %>

<form:form action="register" modelAttribute="boardVo">
	제목 : <form:input type="text" path="title" />
	<form:errors path="title" class="error" element="div"/><br>
	내용 : <br>
	<form:textarea rows="30" cols="50" path="content" /><br>
	작성자 : <form:input type="text" path="writer" />
	<form:errors path="writer"/>
	<br>
	<button>등록</button>
</form:form>
<%@ include file="../layout/footer.jsp" %>
<style>
.error {font-size: 12px; color: red;}
</style>
