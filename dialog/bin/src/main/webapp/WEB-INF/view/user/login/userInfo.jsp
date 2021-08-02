<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
	
	<!--전체--> 
	
	<!--로그인정보-->
	<div class="join_info">

		<!--내용전체-->
		<div class="sub_conts" style="margin-top:10%;margin-left:5%">
			<div class="login_title" >
				
				<div style ="margin-top:-5%"><p>DIALOG</p></div>
			</div>
			<div class="join_box">
				<form method ="post" name="joinFrm" action="">
				<table class="table table-ddd03">
					<colgroup>
						<col width="150px;" />
						<col width="" />
					</colgroup>
						<div style="font:2.0em/1.0em 돋움체; text-align:center" >회원가입</div>
					<tr>
						<th class="bg">아이디</th>
						<td>
						<input name="memberId" title="아이디 입력" id="memberId" type="text" style="ime-mode:disabled;">
						<input class="btn btn-creat mr_2"  name="login" title="로그인" id="idCheckBtn" type="button" value="중복확인" onclick="javascirpt:idCheck();" style="padding-top:5px; padding-bottom:5px;"/>
									<div id="idCheckDIV">
<!-- 										<font color='red'>아이디는 4~12자로 입력해주세요.</font> -->
									</div>
					</tr>
					<tr>
						<th class="bg">비밀번호</th>
						<td ><input name="memberPassword" title="비밀번호 입력" id="memberPassword" type="password" onkeypress='pwCheck(event)' onkeyup='pwCheck(event)'/></td>
					</tr>
					<tr>
						<th class="bg">비밀번호 확인</th>
						<td>			
						   <input name="memPwConfirm" title="비밀번호확인 입력" id="memPwConfirm" type="password" onkeypress='pwCheck(event)' onkeyup='pwCheck(event)'/>
									<div id="pwCheckDIV">
										<!-- <font color='blue'>비밀번호 / 확인이 일치합니다.</font> -->
									</div></td>
					</tr>
					<tr>
						<th class="bg">이름</th>
						<td><input name="memberName" title="이름 입력" id="memberName" type="text" style="ime-mode:desativated"></td>
					</tr>

		
					<tr>
						
						<th class="bg" >이메일</th>
						<td >
						<input name="memberEmail1" title="이메일 입력" id="memberEmail1" type="text" style="width:120px; margin-right:2px;"/>
									@
						<input name="memberEmail2" title="이메일 입력" id="memberEmail2" type="text" style="width:156px; margin-left:2px;"/>
						</td>
						<td>
								 <select id="email" class="form-control" style="width:120px; height:37px; float:left; margin-left:-65%;" onChange="javascript:insertEmail();">
									<option value="직접입력" selected>직접입력</option>					
									<option value="naver.com">naver.com</option>
									<option value="daum.net">daum.net</option>             
									<option value="nate.com">nate.com</option>   				
								</select>
						</td>
						</div>
					</tr>

					
				</table>
				<div class="cb"></div>
				<div class="buttons mt_15">
					<button type="button" class="btn btn-creat mr_5" onclick="javascript:memInsert()">
						회원가입
					</button>
					 <a href="/login" class="btn btn-cencle" role="button">취소</a>
				</div>
				<div class="cb">
				
				</div>
				</form>
			</div>
			
			<!--//내용전체-->

		</div>
		<!--//로그인정보-->
	</div>
	  <jsp:include page="/WEB-INF/view/user/login/script/userInfoScript.jsp"></jsp:include>
