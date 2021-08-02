<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
   var vm = new Vue({
      el:"#schList" ,
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
    	 
    	  teamSeqList : [],
    	
      },
      methods: {
    	  selectScheList : function(){
    		  var vm = this;
    		  $.ajax({
    			url: "/getSchList",
    		  	data :{
    		  	},
    		  	type:'post',
    		  	success: function(list){
    		  		alert("성공");
    		  		console.log(list);
    		  		vm.getSchList = list;
    		  	},
    		  	
    		  	error : function(){
    		  		alert("에러");
    		  	}
    		  })
    	  },
//     	  스케줄 상세조회
    	  infoSches : function(seq){
    		  alert("상세조회");
    		  location.href="/infoSches?scheCode="+seq;
    		  
    	  },
     
//    스케줄 삭제 
          deleteSche: function (seq) {
        	  alert("@@@");
              var vm = this;
              $.ajax({
                 url: "/deleteSche",
                 data: {
                    "scheCode" : seq,
                 },
                 type: 'post',
                 success: function () {
                    alert("성공");
                    vm.teamListSelect();
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
    	  teamSeqList : function (sdsd){
             console.log(sdsd);
          }
       },
      mounted: function () {
    	  var vm = this;
    	  vm.selectScheList();
      },
   });
   
</script>