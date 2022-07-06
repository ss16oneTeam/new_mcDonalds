<%@ page import="com.util.Cookies"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="ex06_auth.jspf" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2022. 6. 22.-오전 10:14:48</title>
<link rel="shortcut icon" type="image/x-icon" href="../images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
  div{
    border: 1px solid gray;
    width:300px;
    height:100px;
    padding:20px;
  }
</style>

</head>
<body>


<h3>ex06_default_EL_JSTL.jsp - 메인페이지</h3>


<c:if test="${  empty auth }">
<%
System.out.println("1");
System.out.println(logonID);
System.out.println(session.getAttribute("auth")); 
%>
<div id="logon">
  <form action="ex06_logon.jsp">
      아이디 : <input type="text" name="id" value="admin" /><br>
      비밀번호 : <input type="password" name="passwd" value="1234" /><br>
    <input type="submit" value="로그인" />
    <input type="button" value="회원가입" /> 
    
    <!-- ?error -->
    <c:if test="${  not empty param.error }">
       <span style="color:red">로그인 실패했습니다.</span>
    </c:if>   
    <script>
       $(function (){
          $("#logon span").fadeOut(5000);
       })
    </script>
     
  </form>
</div>
</c:if>



<c:if test="${ not empty logonID }">
<%
System.out.println(session.getAttribute(logonID));
System.out.println("2");
System.out.println(logonID);
System.out.println(session.getAttribute("auth")); %>

   <div id="logout">
      [<%= logonID %>]님 환영합니다.<br>
      <a href="ex06_logout.jsp">로그아웃</a>
   </div>
</c:if>

<!-- 로그인을 하지 않아도 모두가 사용하는 메뉴  -->
<a href="/jspPro/cstvsboard/list.htm">게시판</a><br>
<a href="#">공지사항</a><br>

<!-- 반드시 로그인(인증)을 해야지 사용하는 메뉴 -->
<c:if test="${ not empty logonID }">
   <a href="#">일정관리</a><br>
   <a href="#">자료실</a><br>
</c:if>


<!--인증 + 권한( 관리자 )  -->
<c:if test="${ logonID eq  'admin' }">
<a href="#">급여관리</a><br>
<a href="#">사원관리</a><br>
</c:if>
 
</body>
</html>


