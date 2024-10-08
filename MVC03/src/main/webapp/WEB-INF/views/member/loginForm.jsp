<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
    
<!DOCTYPE html>
<html>
<head>
	<title>Login Form</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
 	
 	
 	<script type="text/javascript">
		$(document).ready(function(){
			
			//로그인 오류시 실패 모달창show
		  if(${!empty msgType}){
			  $("#myMessage").modal("show"); 
		  }
			  
		});
		
		
		
 	
 	
 	</script>
</head>
<body>

<div class="container">
  <jsp:include page="../common/header.jsp"></jsp:include>
  <h2>Login Form</h2>
  <div class="card card-default">

    <div class="card-header"> 로그인 화면 </div>
    <div class="card-body" >
    	<form  method="post" action="${contextPath }/member/memLogin.do" >     
    		<table class="table table-bordered" style="width:100%; text-align: center; border: 1px solid #dddddd; ">
    			<tr>
    				<th style="width: 110px; vertical-align: middle;">아이디</th>
    				<td><input id="memID" name="memID" class="form-control width" type="text" placeholder="아이디를 입력하세요 (20자 이하)" maxlength="20" /></td>
    			</tr>
    			<tr>
    				<th style="width: 110px; vertical-align: middle;">비밀번호</th>
    				<td colspan="2"><input id="memPassword" name="memPassword" class="form-control width" type="password" placeholder="비밀번호를 입력하세요 (12자이상)" minlength="12" /></td>
    			</tr>
	    		<tr>
	    			<td colspan="2" >
		    			<div class="d-flex">
		    				<input type="submit" id="submitButton" class="btn btn-primary btn-sm ms-auto" value="로그인" />
		    			</div>
	    			</td>
	    		</tr>
    		</table>
    	</form>
    </div>
    
    <!-- 로그인 오류 모달창 -->
		<div class="modal fade" id="myMessage" role="dialog">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <!-- Modal Header -->
		      <div class="modal-header">
		        <h4 class="modal-title">${msgType }</h4>
		        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
		      </div>
		
		      <!-- Modal body -->
		      <div class="modal-body">
		       	<p>${welcome }</p>
		      </div>
		
		      <!-- Modal footer -->
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
		      </div>
		
		    </div>
		  </div>
		</div>
    
    <div class="card-footer">card foot</div>
  </div>
</div>

</body>
</html>