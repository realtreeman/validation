<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>
<div class="container">
	<table class="table table-dark table-hover">
		<h3>회원정보</h3>
			<thead>
				<tr>
					<th>아이디</th>
					<th>이름</th>
					<th>이메일</th>
				</tr>
			</thead>
			
			<c:forEach items="${list}" var="m">
			<tbody>
				<tr>
					<td>${m.id}</td>
					<td>
						<a href="get?id=${m.id}">${m.userName}</a>
					</td>
					<td>${m.email }</td>
				</tr>
			</tbody>
		</c:forEach>
	</table>
</div>
<%@ include file="../layout/footer.jsp" %>