<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header_simple.jsp"%>
<%@ page import="java.util.*"%>
<%@ page import="com.spring.gogidang.domain.*"%>

<%	
	ArrayList<SRReviewVO> srReviewList = (ArrayList<SRReviewVO>) request.getAttribute("srReviewList");
	PageDTO pageMaker = (PageDTO) request.getAttribute("pageMaker");
%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/member_liststoreStyle.css"
	type="text/css">

<!-- Product Section Begin -->
<section class="product spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-5">
				<div class="sidebar">
					<div class="sidebar__item">
						<h4>마이페이지</h4>
						<ul>
							<li><a href="./updateList.me">내정보</a></li>
							<li><a href="./bookingList.bo?u_id=<%=mvo.getU_id()%>">내예약확인</a></li>
							<li><a
								href="./likeStoreList.li?u_id=<%=mvo.getU_id()%>">찜목록</a></li>
							<li><a
								href="./reviewListByIdWithPaging.re?u_id=<%=mvo.getU_id()%>">내가
									작성한 후기</a></li>
							<li><a href="./cartList.ct">장바구니</a></li>
						</ul>
					</div>
				</div>
			</div>
	<!-- ---------------------------------------------------시작----------------------------------------------------- -->
			<div class="reviewboard">
				<div class="section-title product__discount__title">
					<h2>리뷰 관리</h2>
				</div>
				<div class="container">
					<table class="table table-hover">
						<thead>
							<tr align=center>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>별점</th>
								<th>등록일</th>
								<th>답변 상태</th>
							</tr>
						</thead>
						<tbody class="text-center">
							<%
								for (int i = 0; i < srReviewList.size(); i++) {

									SRReviewVO srReviewvo = (SRReviewVO) srReviewList.get(i);
							%>
							<tr align=center>
								<td><%=i + 1%></td>
								<td><a
									href="storereviewInfo.bo?review_num=<%=srReviewvo.getReview_num()%>"><%=srReviewvo.getTitle()%></a>
								</td>
								<td><%=srReviewvo.getU_id()%></td>
								<td><%=srReviewvo.getStar()%></td>
								<td><%=srReviewvo.getReview_date()%></td>

								<%
									if (srReviewvo.getRe_content() == null || srReviewvo.getRe_content() == "") {
								%>
									<td>답변 대기</td>
								<%
									} else {
								%>
									<td>답변 완료</td>
								<%
									}
								%>

								<%
									}
								%>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- ----------------------------------------------------끝---------------------------------------------------- -->
		</div>
	</div>
</section>
<!-- Product Section End -->

<%@include file="../includes/footer.jsp"%>