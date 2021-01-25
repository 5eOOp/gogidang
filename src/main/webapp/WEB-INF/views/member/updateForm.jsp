<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="javax.naming.*"%>
<%@ page import="java.util.*"%>
<%@include file="../includes/header.jsp"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/updateStyle.css" type="text/css">
  
  
<%
	StoreVO storevo = (StoreVO)session.getAttribute("StoreVO");

%>
   <!--네비게이션바 사용 시작-->
   <!-- 일반고객 -->
    <%if(memberVO.getSeller_key() == 0 ){ %>
	   <section class="hero">
        <div class="container">
            <div class="hero__item__box2"></div>
                    <div class="EventNav">
                        <ul>
                            <li><a href="./updateList.me">내정보</a></li>
                            <li><a href="./bookingList.bo?u_id=<%=memberVO.getU_id()%>">내예약확인</a>
                            <li><a href="./likeStoreList.li?u_id=<%=memberVO.getU_id()%>">찜목록</a></li>
                            <li><a href="./reviewList.re?u_id=<%=memberVO.getU_id()%>">내가 작성한 후기</a></li>
                            <li><a href="./cartList.ct">장바구니</a></li>
                        </ul>
                    </div>   
            </div>   
        </div>
    </section>
<%
}else{ 
	if(storevo == null || storevo.getConfirm() == 0 || storevo.getS_num() == 0 ){
%>
 <section class="hero">
        <div class="container">
            <div class="hero__item__box2"></div>
                    <div class="EventNav">
                        <ul>
                            <li><a href="./updateList.me">내정보</a></li>
                            <li><a href="./storeRegForm.st">가게 정보</a>
                        </ul>
                    </div>   
            </div>   
        </div>  
  </section>
<%
	}else{
%>
    <section class="hero">
        <div class="container">
            <div class="hero__item__box2"></div>
                    <div class="EventNav">
                        <ul>
                            <li><a href="./updateList.me">내정보</a></li>
                            <li><a href="./storeRegForm.st">가게 정보</a>
                            <li><a href="./menuRegForm.st">메뉴 정보</a></li>
                            <li><a href="./storeNoticeList.no">문의 관리</a></li>
                            <li><a href="./storereviewList.bo">리뷰 관리</a></li>
                        </ul>
                    </div>   
            </div>   
        </div>
    </section>
<%
	} 
}
%>
   <!--네비게이션바 사용 끝-->
    <!-- Hero Section End -->
		 <!-- Hero Section End -->
	
	<div class="container" id="update">
		<div class="row justify-content-center">
        <div class="col-lg-8">
        	<div class="update">
        		<h3>내 정보 수정</h3>
        		
        		<!-- join form -->
         		<form name="updateform" action="./updateProcess.me" method="post">
         			<div class="id_input_box">
         				<ts>아이디<span class="ico">*</span></ts>
         				<td><input type="text" name="u_id" value="<%=memberVO.getU_id()%>" readonly style="font-size:13px;" /></td>
         	 		</div>
         	 		
         	 		<div class="id_input_box">
         				<ts>비밀번호</ts>
         				<td><input type="password" name="u_pw" value="<%=memberVO.getU_pw()%>" style="font-size:13px;"/></td>
         	 		</div>
         	 		
         	 		<div class="id_input_box">
         				<ts>이름<span class="ico">*</span></ts>
         				<td><input type="text" name="u_name" value="<%=memberVO.getU_name()%>" readonly style="font-size:13px;"/></td>
         	 		</div>
         	 		
         	 		<div class="id_input_box">
         				<ts>닉네임</ts>
         				<td><input type="text" name="u_nick" value="<%=memberVO.getU_nick()%>" style="font-size:13px;"/></td>
         	 		</div>
         	 		
         	 		<div class="id_input_box">
         				<ts>생년월일<span class="ico">*</span></ts>
         				<td><input type="text" name="u_birth" value="<%=memberVO.getU_birth()%>" readonly style="font-size:13px;"/></td>
         	 		</div>
         	 		
         	 		<div class="id_input_box">
         				<ts>주소</ts>
         				<td><input type="text" name="u_addr" value="<%=memberVO.getU_addr()%>" style="font-size:13px;"/></td>
         	 		</div>
         	 		
         	 		<div class="id_input_box">
         				<ts>이메일 주소</ts>
         				<td><input type="text" name="u_email" value="<%=memberVO.getU_email()%>" style="font-size:13px;"/></td>
         	 		</div>
         	 		
         	 		<div class="id_input_box">
         				<ts>핸드폰 번호</ts>
         				<td><input type="text" name="u_phone" value="<%=memberVO.getU_phone()%>" style="font-size:13px;"/></td>
         	 		</div>
         		
         			<!-- <tr align=center>
					<td colspan=2><a href="./updateForm.me">수정</a></td>
					</tr> -->
         			
					
					<div class="join_btn">
	         	 	<button type="submit" class="btn-jj btn-lg btn-block btn-success" > 수정하기</button>
	         	 	</div>
         			
         		</form>
       		   </div><!--join -->
			</div><!-- col-lg-8 -->.
		</div><!-- row justify-content-center -->
	</div><!-- container id="join" -->
        		
		
		
		
<%@include file="../includes/footer.jsp"%>