<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../layout/header.jsp" %>

<div class="container">
	<div class="listData">
		<input type="hidden" name="bno" id="bno" value="">
		<input type="hidden" name="page" id="page" value="${pageMaker.criteria.page}">
		<input type="hidden" name="type" id="type" value="${pageMaker.criteria.type}">
		
		<input type="hidden" name="keyword" id="keyword" value="${pageMaker.criteria.keyword}">
		<input type="hidden" name="category" id="category" value="${pageMaker.criteria.category}">
	</div>
	
	<h2>자유게시판</h2>
	<a href="register" class="btn btn-outline-secondary">글쓰기</a>
	<table class="table table-dark table-hover">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>등록일</th>
				<th>수정일</th>
			</tr>
		</thead>
		<c:forEach items="${list}" var="b">
		<tbody>
			<tr>
				<td>${b.bno}</td>
				<td>
					<a href="${b.bno}" class="get">${b.title}</a>
				</td>
				<td>${b.writer}</td>
				<td>
					<fmt:parseDate var="regDate" value="${b.regDate}" pattern="yyyy-MM-dd'T'HH:mm"/>
					<fmt:formatDate value="${regDate }" pattern="yyyy년MM월dd일 HH시mm분"/>
				</td>
				<td>
					<fmt:parseDate var="updateDate" value="${b.updateDate}" pattern="yyyy-MM-dd'T'HH:mm"/>
					<fmt:formatDate value="${updateDate }" pattern="yyyy년MM월dd일 HH시mm분"/>
				</td>
			</tr>
		</tbody>
		</c:forEach>
	</table>
	<form action="${contextPath}/board/list/board" id="listForm" class="d-flex justify-content-center">
		<div>
			<select name="type">
				<option value="">검색종류선택</option>
				<option value="T" ${pageMaker.criteria.type eq 'T' ? 'selected':''}>제목</option>
				<option value="C" ${pageMaker.criteria.type eq 'C' ? 'selected':''}>내용</option>
				<option value="W" ${pageMaker.criteria.type eq 'W' ? 'selected':''}>작성자</option>
				<option value="TC" ${param.type=='TC' ? 'selected':'' }>제목+내용</option>
				<option value="TW" ${param.type=='TW' ? 'selected':'' }>제목+작성자</option>
				<option value="CW" ${param.type=='CW' ? 'selected':'' }>내용+작성자</option>
			</select>
			<input type="text" name="keyword" value="${pageMaker.criteria.keyword}" placeholder="검색어 입력">
			<input type="hidden" name="category" value="${pageMaker.criteria.category}">
			<button>검색</button>
		</div>
	</form>
	
		
	
	<div class="d-flex justify-content-center">
		<ul class="pagination">
			<c:if test="${pageMaker.prev}">
				<li class="page-item">
					<a class="page-link" href="${pageMaker.startPage -1 }">[이전페이지]</a>
				</li>
			</c:if>
			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="pageNum">
				<li class="page-item" ${pageMaker.criteria.page == page ? 'active' : ''}">
					<a href="${pageNum}" class="page-link">${pageNum}</a>
				</li>
			</c:forEach>
			<c:if test="${pageMaker.next}">
				<a class="page-link" href="${pageMaker.endPage +1 }">[다음페이지]</a>
			</c:if>
		</ul>
	</div>
</div>
<%@ include file="../layout/footer.jsp" %>
<script>
$(function(){
	let listForm = $('#listForm');
	let category = $('#category').val();
	$('.pagination a').on('click',function(e){
		e.preventDefault();
		$('.listData').find('#page').val($(this).attr('href'));	
		
		if(listForm.find('input[name="keyword"]').val()==''){
			listForm.find('input[name="keyword"]').remove();
			listForm.find('select[name="type"]').remove();
		}
		listForm.append($('#page'));
		listForm.submit();
	});
	
	$('.get').on('click',function(e){
		e.preventDefault();
		let bno = $(this).attr('href');
		$('#bno').val(bno);
		listForm.append($('#bno'));
		listForm.append($('#page'));
		listForm.attr("action","../"+category+"/get");
		listForm.submit();
	})
})
</script>
<style>
.on{font-weigth: 700; color:red;}
</style>
