<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/emp.js"></script>

<script type="text/javascript">
$(document).ready(function(){
   
   // let board = boardService();
   // board.list();
   
   function listCallback(result) {
   
   let htmls="";
   
   $("#list-table").html('');

   $("<tr>" , {
      html : 
    	    "<th>" + "EMPNO" + "</th>" +  // 컬럼명들
            "<th>" + "ENAME" + "</th>" +
            "<th>" + "JOB" + "</th>" +
            "<th>" + "MGR" + "</th>" +            
            "<th>" + "HIREDATE" + "</th>" +
            "<th>" + "SAL" + "</th>" +
            "<th>" + "COMM" + "</th>" +
            "<th>" + "DEPTNO" + "</th>" 
   }).appendTo("#list-table") // 이것을 테이블에 붙임
   
   if(result.length <1){
      htmls.push("등록된 댓글이 없습니다.");
   }else{
      
      $(result).each(function(){
         htmls += '<tr>';
         
         htmls += '<td>' + this.empno + '</td>'; 
         htmls += '<td>' + this.ename + '</td>';
         htmls += '<td>' + this.job + '</td>';
         htmls += '<td>' + this.mgr + '</td>';
         htmls += '<td>' + this.hiredate + '</td>';
         htmls += '<td>' + this.sal + '</td>';
         htmls += '<td>' + this.comm + '</td>';
         htmls += '<td>' + this.deptno + '</td>';
         
         htmls += '<td>' + '<input id=' + this.empno + " type='button' class='btn_delete' value='삭제'>" + '</td>';
         htmls += '</tr>';         
         
      }); // each end
      
       htmls+='<tr>';
       htmls+='<td colspan="5"> <a href="/write_view">글작성</a> </td>';                         
       htmls+='</tr>';            
      
   }
   
   $('#list-table').append(htmls);
}
   
   let board = boardService();
   board.list(listCallback);
   
});
</script>


<script type="text/javascript">
$(document).ready(function(){
   
   $(document).on("click","#list-table .btn_delete", function(){
      console.log($(this).attr("id"))
      
      $(this).parent().parent().remove();
      
      let board = boardService();
      board.del($(this).attr("id"));
      
   });
   
});
</script>
</head>

<body>
	<h1>Restful 게시판 리스트</h1>

	<table id="list-table" width="500" cellpadding="0" cellspacing="0"
		border="1">
	</table>
</body>
</html>