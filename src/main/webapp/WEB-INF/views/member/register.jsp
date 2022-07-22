<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../layout/header.jsp" %>
<div class="container">
	
	<div class="row d-flex justify-content-center my-5">
		<div  class="col-md-6">
			<h2>회원가입</h2>
			<form:form action="register" method="post" modelAttribute="member">
				<div class="form-group">
					이름 : <form:input path="userName" class="form-control" placeholder="이름을 입력 하세요"/>
					<form:errors path="userName" />
				</div>
				<div class="form-group">
					이메일 : <form:input path="email" class="form-control" placeholder="이메일을 입력 하세요"/>
					<form:errors path="email" />
				</div>
				<div class="form-group">
					비밀번호 : <form:input path="password" type="text" class="form-control" placeholder="비밀번호를 입력 하세요"/>
					<form:errors path="password" />
				</div>
				<div class="form-group">
					비밀번호확인 : <form:input path="confirmPassword" type="text" class="form-control" placeholder="비밀번호를 입력 하세요" />
					<form:errors path="confirmPassword" />
				</div>
				<button class="btn btn-secondary">회원가입</button>
			</form:form>
		</div>
	</div>
</div> <!-- contianer end -->
<%@ include file="../layout/footer.jsp" %>