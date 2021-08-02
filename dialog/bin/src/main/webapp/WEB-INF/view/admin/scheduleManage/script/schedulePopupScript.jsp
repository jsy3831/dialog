<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
   var vm = new Vue({
      el:"#schPopup" ,
      data: {
    	 getSchList : [],
    	 
    	 scheCode : '',
    	 scheWorkTitle : '',
    	 scheWorkCycle : '',
    	 scheStatusCode : '',
    	 scheType : '',
    	 retryCount : '',
    	 scheDate : '',
    	 scheWriter : '',
    	 scheCron : '',
    	 
      },
      methods: {
    	  insertSche: function () {
	          var vm = this;
	          $.ajax({
	             url: "/insertSche",
	             data: {
	                "scheWorkTitle" : vm.scheWorkTitle, //위에 teamName의 데이터를 가져온다.
	                "scheCron" : vm.scheCron,
	             },
	             type: 'post',
	             success: function () {
	                alert("성공");
	                location.href = "/scheduleList";
// 	                vm.selectScheList();
// 	                vm.teamName='';
// 	                vm.teamNicName = '';
	             },
	             error: function () {
	                alert("에러나면개쪽");
	             }
	          })
	       },
      },
     	 
      
      filters: {
         
      },
      watch: {
         
      },
//       mounted: function () {
//     	  var vm = this;
//     	  vm.selectScheList();
//       },
   });
   
</script>