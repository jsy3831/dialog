<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	<div class="dashboard">
	 
		<div class="full_box size_1500">
			<div class="under_title mb_5 ">
				<p class="fl mt_5">
					<span>|</span> 쪽지함
				</p>
			</div>
			<!--강사리스트-->
			<div class="inner_tab">
				<ul class="nav nav-tabs inner_tab_menu" id="teacher_tab"
					role="tablist">
					<li class="nav-item"><a class="nav-link active show" v-on:click="mailRequestList" id="now-tab" data-toggle="tab" href="#teacher_list_now" role="tab" aria-controls="home" aria-selected="true">받은 쪽지함</a></li>
					<li class="nav-item"><a class="nav-link" id="last-tab" v-on:click="mailGiveList" data-toggle="tab" href="#teacher_list_last" role="tab" aria-controls="profile" aria-selected="false">보낸 쪽지함</a></li>
				</ul>
				<br> <a href="/messageInsert" class="btn btn-creat fr size_140 mr_5" role="button">쪽지보내기</a> 
					<a href="#" style="margin-left: 20%"class="btn btn-creat fr size_100 mr_5" role="button">삭제</a>



				<!--안쪽탭-->
				<div class="cb"></div>
					<div id= "mesList">
				<div class="table_sc16 fl wsize_100 mt_5" id="style-3">
					<table class="table table-gray table-hover">
						<tr>
							<th><label class="custom-control custom-checkbox mr_0 mb_0"
								style="padding-left: 1.1rem;"> <input type="checkbox"
									class="custom-control-input"> <span
									class="custom-control-indicator"></span>
							</label></th>
							<th>보낸 이</th>
							<th>내용</th>
							<th>날짜</th>
						</tr>
				         <tr v-for="list in messageList">
				         	<td><label class="custom-control custom-checkbox mr_0 mb_0"
						style="padding-left: 1.1rem;"> <input type="checkbox"
							class="custom-control-input"> <span
							class="custom-control-indicator"></span></label></td>
				            <td>{{list.messageSeq}}</td>
				            <td>{{list.mesContent}}</td>
				            <td><i style="font-size: 12px;">{{list.mesDate}}</i></td>

				         </tr>


					</table>
					</div>
				</div>
				<!--//학생리스트-->
			</div>
		</div>
	
	</div>
  <jsp:include page="/WEB-INF/view/user/message/script/messageViewScript.jsp"></jsp:include>
