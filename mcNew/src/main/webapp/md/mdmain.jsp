<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "/include.jspf" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="<%=contextPath%>/md/logon.do">
<input type="text" name="userName" value="ham@sist.co.kr">
<input type="text" name="passWord" value="qwer1234">
<input type="submit" name="" id="" />
</form>

<c:out value="${ Member.mem_code}"></c:out>

</body>
</html>