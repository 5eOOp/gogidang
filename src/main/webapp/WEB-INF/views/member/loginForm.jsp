<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import = "com.spring.gogidang.domain.*" %>
<%@ page import="java.util.ArrayList"%>
<%@include file="../includes/header_simple.jsp"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/loginstyle.css" type="text/css">


    <div class="container" id="login">
        <div class="row justify-content-center">
        <div class="col-lg-8">
          <div class="login">

            <h1>Login</h1>
            
            <!-- Loging form -->
                 <form name="loginForm" action="./login.me" method="post">
                    <div class="form-group">
                      <input type="text" class="form-control" name="u_id" aria-describedby="id" placeholder="Enter id">
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control" name="u_pw" placeholder="Password">
                    </div>
                     <div class="form-checkk">
                     	 <!--  <div class="switch">
		                      	<input type="checkbox">
		                      	<span class="slider round"></span>
		                   		</div>
		                   	-->
						<!-- 로그인과 회원가입
	                    <div>
                    	 	<a href="javascript:loginForm.submit()"><!-- <label class="form-check-label" for="exampleCheck1"></label> 로그인</a>
                      	</div>
                      	<div>
                     	 	<a href="./joinForm.me"><!--<label class="join-label"> </label>  회원가입</a>
						</div>
						 -->
                    </div>
                  
                    <br>
                     <div class="form-checkkk">
                     	
                   			<button type="submit" class="btn btn-lg btn-block btn-success"  >로그인</button>
                   			<button type="button" class="btn-j btn-lg btn-block btn-success" onClick="location.href='./joinForm.me'"  >회원가입</button>
                   			 <br>
                    		<!-- <button type="submit" class="btn-k btn-lg btn-block btn-success" onclick="loginFormWithKakao();" style="cursor: pointer;" >카카오 로그인</button> -->
                    	<!--<img src="//k.kakaocdn.net/14/dn/btqCn0WEmI3/nijroPfbpCa4at5EIsjyf0/o.jpg" width="250" height="60" onclick="loginFormWithKakao();" style="cursor: pointer;"/>  -->
                  	</div>
                  </form>	
             <!-- End Loging form -->

          </div>
        </div>
        </div>
    </div>
    <!-- Footer Section start -->
    <%@include file="../includes/footer.jsp"%>
	<!-- Footer Section End -->
  <!-- Js Plugins -->
  <script src="resources/js/jquery-3.3.1.min.js"></script>
  <script src="resources/js/bootstrap.min.js"></script>
  <script src="resources/js/jquery.nice-select.min.js"></script>
  <script src="resources/js/jquery-ui.min.js"></script>
  <script src="resources/js/jquery.slicknav.js"></script>
  <script src="resources/js/mixitup.min.js"></script>
  <script src="resources/js/owl.carousel.min.js"></script>
  <script src="resources/js/main.js"></script>
 <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
   <script type="text/javascript">
      
      // SDK 초기화
      Kakao.init('df2cc873afc51d2e537672630804318b');
      
      function loginFormWithKakao() {
         Kakao.Auth.loginForm({
            success: function(authObj) {
               showResult(JSON.stringify(authObj))
               
               getUserInfo();
               
            },
            fail: function(err) {
               showResult(JSON.stringify(err))
            },
          });
       }

       function showResult(result) {
          alert(result);
       }
       
       function getUserInfo() {
    	   Kakao.API.request({
    		    url: '/v2/user/me',
    		    success: function(response) {
    		        console.log(response);
    		        alert( JSON.stringify(response) );
    		  
    		    },
    		    fail: function(error) {
    		        console.log(error);
    		    }
    		});
       }
      
   </script>
   
   <script>
	function fnAction(url) {
		var frm = document.getElementById("storeform");
		frm.action = url;
		frm.submit();
	}
	
	$("#thumbnail").change(function () {
		var reader = new FileReader;
		reader.onload = function(data) {
			$(".select_img>#out_thumbnail").attr("src", data.target.result).width(500);
		}
		reader.readAsDataURL(this.files[0]);
	});
	
	$("#s_img").change(function () {
		var reader = new FileReader;
		reader.onload = function(data) {
			$(".select_img>#out_s_img").attr("src", data.target.result).width(500);
		}
		reader.readAsDataURL(this.files[0]);
	});
	</script>
  </body>
</html>