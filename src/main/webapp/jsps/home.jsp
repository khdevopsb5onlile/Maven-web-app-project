<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KK FUNDA Home Page</title>
<link href="images/kkfunda.jpg" rel="icon">
<style>
    .colorful-name {
        text-align: center;
        font-size: 36px;
        font-weight: bold;
        background: linear-gradient(to right, #ff0000, #ff9900, #33cc33, #3399ff, #9900cc);
        -webkit-background-clip: text;
        color: transparent;
        padding: 10px;
    }
</style>
</head>

<body>
<h1 align="center">Welcome to KK DevOps</h1>
<h1 align="center">KK DevOps with AWS AND SRE IN TELUGU</h1>

<div class="colorful-name">Haribabu</div>

<hr><br>

<h2>Server Side IP Address</h2>
<%
    String ip = "";
    InetAddress inetAddress = InetAddress.getLocalHost();
    ip = inetAddress.getHostAddress();
    out.println("Server Host Name :: " + inetAddress.getHostName() + "<br>");
    out.println("Server IP Address :: " + ip);
%>
<br><br>

<h2>Client Side IP Address</h2>
<%
    out.println("Client IP Address :: " + request.getRemoteAddr() + "<br>");
    out.println("Client Name Host :: " + request.getRemoteHost());
%>

<hr>
<div style="text-align: center;">
    <span>
        <img src="images/kkfunda.jpg" alt="KK Funda Logo" width="100">
    </span>
    <span style="font-weight: bold;">
        KK FUNDA, 
        Martha Halli, Bangalore,<br>
        +91-9676831734<br>
        kkeducationblr@gmail.com<br>
        <a href="mailto:kkeducation@gmail.com">Mail to KK FUNDA</a>
    </span>
</div>
<hr>

<p>Service: <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>
<hr>

<p align="center">KK FUNDA Training, Development Center.</p>
<p align="center">
    <small>Copyrights 2024 by 
    <a href="https://www.google.com/" target="_blank">KK FUNDA</a>
    </small>
</p>

</body>
</html>

