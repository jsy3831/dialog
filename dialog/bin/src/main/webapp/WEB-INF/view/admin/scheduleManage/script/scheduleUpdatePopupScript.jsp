<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
   var vm = new Vue({
      el:"#schInfo" ,
      data: {
    	 getSchList : [],
    	 
    	 scheCode : ${scheCode},
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
    	  infoSches : function(){
  	  		var vm = this;
  	  		$.ajax({
  	  			url: "/infoSches",
  	  		  	data :{
  	  		  		"scheCode" : vm.scheCode
  	  		  	},
  	  		  	type:'post',
  	  		  	success: function(list){
  	  		  		console.log(list);
  	  		  		vm.developSourceInfo = list;
  	  		  	},
  	  		  	error : function(){
  	  		  		alert("hhhh");
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
    	  vm.infoSches();
      },
   });
   
</script>