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
        String userID		= request.getParameter("userID");
        String userPassword = request.getParameter("userPassword");
        String userPhone	= request.getParameter("userPhone");
     	// -1: 서버 오류 / 0: 이미존재하는 아이디 / 1: 성공 후 인증 / 2: 이미존재하는 폰번호
        if(userID == "" || userPassword == "" || userPhone == "") {
        	PrintWriter script = response.getWriter();
        	script.println("<script>");
        	script.println("alert('빈칸을 확인해 주세요')");
        	script.println("location.href = './join.jsp'");
        	script.println("</script>");
        } else {
        	UserDAO userDAO = new UserDAO();
        	userDAO.setUserID(userID);
        	userDAO.setUserPassword(userPassword);
        	userDAO.setUserPhone(userPhone);
            int result = userDAO.join(userDAO);
            if(result == -1) {
            	PrintWriter script = response.getWriter();
            	script.println("<script>");
            	script.println("alert('서버오류')");
            	script.println("location.href = '../index.jsp'");
            	script.println("</script>");
            } else if(result == 0) {
            	PrintWriter script = response.getWriter();
            	script.println("<script>");
            	script.println("alert('이미 아이디가 존재합니다.')");
            	script.println("location.href = './join.jsp'");
            	script.println("</script>");
            } else if (result==1){
            	SMSauth smsAUTH = new SMSauth();
	   			smsAUTH.send_sms();
            	PrintWriter script = response.getWriter();
            	script.println("<script>");
            	script.println("location.href = './auth.jsp'");
            	script.println("</script>");
            } else if(result == 2) {
            	PrintWriter script = response.getWriter();
            	script.println("<script>");
            	script.println("alert('이미 핸드폰 번호가 존재합니다.')");
            	script.println("location.href = './join.jsp'");
            	script.println("</script>");
            }
        }
        %>
    </body>
    
</html>
