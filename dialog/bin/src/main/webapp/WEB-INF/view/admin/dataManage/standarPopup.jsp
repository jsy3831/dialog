<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<div class="modal fade" id="standar_pop" tabindex="-1" role="dialog" aria-labelledby="examquestion_plusLabel" aria-hidden="true">
	<div class="modal-dialog" role="document" style="max-width:1200px;">
		<div class="modal-content">
			<div class="modal-header bg_red font_w">
				<h5 class="modal-title fw_5 f_sq" id="examquestion_plusLabel">| 데이터 가공</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">
					&times; 
					</span>
				</button>
			</div>
<!-- 팝업바디 -->
			<div class="modal-body" >
<!-- 유형선택 -->
				<div class="wsize_49 fl po_r" id="style-3" >
					<table class="table table-ddd02 wsize_100">
						<tr>
							<th> <span class="red02">＊</span>가공 유형</th>
							<td class="text-left">
							    <label class="custom-control custom-radio mr_30 mb_0">
                                 <input id="radioStacked3" name="radio-stacked" type="radio" class="custom-control-input">
                                   <span class="custom-control-indicator"></span>
                                   <span class="custom-control-description">수치데이터</span>
                                </label>
								<label class="custom-control custom-radio mb_0">
                                 <input id="radioStacked3" name="radio-stacked" type="radio" class="custom-control-input">
                                   <span class="custom-control-indicator"></span>
                                   <span class="custom-control-description">문자 데이터</span>
                                </label>
							</td>
						</tr>
					</table>
				</div>
				<div class="wsize_50 fl po_r ml_1" id="style-3" >
					<table class="table table-ddd02 wsize_100">
						<tr>
							<th> <span class="red02">＊</span>가공 컬럼 명칭</th>
							<td class="text-left">
							   <input type="text" >
							</td>
						</tr>
					</table>
				</div>
<!-- 가공 방식 선택 -->
				<div class="wsize_100 fl po_r mt_50">
				<div class="wsize_49 fl po_r bd_d" id="style-3" >
                     <table class="table table-ddd02 wsize_100">
						<tr>
							<td class="text-left">
                                   	문자->수치
							</td>
						</tr>
						<tr>
							<td class="text-left">
                                   	수치 범위 변경
							</td>
						</tr>
						<tr>
							<td class="text-left">
                                   	키워드 포함 빈도
							</td>
						</tr>
						<tr>
							<td class="text-left">
                                   	결측 값 처리
							</td>
						</tr>
					</table>
				</div>
				<div class="wsize_50 fl pl_10 po_r bd_d ml_1" id="style-3" >
			    <div class="academy_test mt_5 bd_0" style="height:auto;">
                        <dl>
                            <dt>No.1 다음 글의 주제로 가장 적절한 것을 고르시오.</dt>
                        </dl>
                    </div>
				</div>
				</div>
<!-- 쿼리 문 미리보기 -->
				<div class="wsize_100 fl po_r bd_d mt_10" id="style-3"  >
					<textarea class="form-control rounded-0" rows="6" style="background-color: white;" readonly></textarea>
				</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-cencle" data-dismiss="modal">
						닫기
					</button>
					<button type="button" class="btn btn-creat">
						저장
					</button>
				</div>
			</div>
		</div>
	</div>
