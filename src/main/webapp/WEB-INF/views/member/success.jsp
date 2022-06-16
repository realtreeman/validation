<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<table class="table">
	<h3>회원정보</h3>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>이메일</th>
		</tr>
		<c:forEach items="${list}" var="m">
		<tr>
			<td>${m.id}</td>
			<td>
				<a href="${m.id}">${m.userName}</a>
			</td>
			<td>${m.email }</td>
		</tr>
		</c:forEach>
	</table>
<%@ include file="../layout/footer.jsp" %>