<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="sms.SMSauth" %>
<%@ page import="java.io.PrintWriter" %>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>

<html lang="ko">
    <head>
        <meta charset="UTF-8">
        
        <title>
            nel's
        </title>
    </head>
    
    <body>
    	<%
    	UserDAO userDAO = new UserDAO();
    	
    	PrintWriter script = response.getWriter();
	    String authNUM = (String)request.getParameter("authnum");
	    SMSauth smsAUTH = new SMSauth();
	    boolean flag=smsAUTH.authnum_check(authNUM);
	    
	    if(authNUM == "") {
        	script.println("<script>");
        	script.println("alert('빈칸을 확인해 주세요')");
        	script.println("location.href = './auth.jsp'");
        	script.println("</script>");
        } else {
        	if (flag==true) {
        		script.println("<script>");
        		script.println("alert('회원가입을 축하드립니다.')");
               	script.println("location.href = './success.jsp'");
               	script.println("</script>");
        	}
        	else {
               	script.println("<script>");
                script.println("alert('인증번호가 일치하지 않습니다.')");
                script.println("location.href = './join.jsp'");
                script.println("</script>");
                userDAO.delete("nelly");
        	}
        }
    	%>
	</body>
</html>
