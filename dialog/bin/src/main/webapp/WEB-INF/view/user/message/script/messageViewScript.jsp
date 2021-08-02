<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<script>

   var vm = new Vue({
      el : "#mesList",
      data : {
    	  messageList: [],
      },
      methods : {
    	  selectMessageList : function() {
            var vm = this;
            $.ajax({
               url : "/selectMessageList",
               data : {
               },
               type : 'post',
               success : function(list){
            	   console.log(list);
                   vm.messageList=list;
                },
                error : function(){
                   alert("오류");
                }
                })
             },
         
      },

      filters : {

      },
      watch : {

      },
      mounted : function() {
         var vm = this;
         vm.selectMessageList();
      },
   });
</script>