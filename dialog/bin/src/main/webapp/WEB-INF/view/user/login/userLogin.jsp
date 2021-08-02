<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
			<div class="login_info">


				<div class="login_title">
					<p>DIALOG</p>
				</div>

				<!--내용전체-->
				<div class="sub_conts">
					<div style="font: 2.0em/1.0em 돋움체; text-align: center">로그인</div>
					<br>
					<div class="login_box">

						<dl>
							<form name="loginForm" id="loginForm" method="post">
								<dd>
									<input type="text" class="form-control" name="memberId"
										id="memberID" placeholder="아이디를 입력하여 주세요.">
								</dd>
								<dd>
									<input type="password" class="form-control"
										name="memberPassword" id="member_password"
										placeholder="비밀번호를 입력하여 주세요.">

								</dd>

								<input  style="margin-left:5%" class="btn btn-login02 size_400 fl mr_5 mt_5 mb_15"
									name="login" title="로그인" id="login" type="button" value="로그인"
									onclick="javascirpt:memLogin();" />
								<ul id="loginUl">
									<!-- 								<li>ID / PW를 확인해주세요.</li> -->
								</ul>
							</form>
							<a href="/info" style="margin-left:5%" class="btn btn-login02 size_150 fl mr_5 mt_5 mb_15" role="button">회원가입</a>
							<a href="join.html" style="margin-left:1%" class="btn btn-login02 size_240 fl mr_5 mt_5 mb_15"	role="button">아이디 찾기 / 비밀번호 찾기</a>
						</dl>
					</div>
					<div class="cb"></div>
				</div>
				<!--//내용전체-->

			</div>

			<span style="width: 90%; height: 1000px; text-align: center"></span>
	  <jsp:include page="/WEB-INF/view/user/login/script/userLoginScript.jsp"></jsp:include>
