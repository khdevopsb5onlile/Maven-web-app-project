<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>KK FUNDA Home Page</title>
    <link href="images/kkfunda.jpg" rel="icon">
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f0f4f8;
            color: #333;
        }

        header {
            background: #007acc;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .colorful-name {
            font-size: 40px;
            font-weight: bold;
            background: linear-gradient(to right, #ff0000, #ff9900, #33cc33, #3399ff, #9900cc);
            -webkit-background-clip: text;
            color: transparent;
            text-align: center;
            margin-top: 10px;
        }

        section {
            max-width: 800px;
            margin: 20px auto;
            background: white;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 0 12px rgba(0,0,0,0.1);
        }

        h2 {
            color: #007acc;
        }

        .footer {
            text-align: center;
            margin: 40px 0 10px;
            color: #555;
        }

        .contact {
            text-align: center;
            font-weight: bold;
        }

        .contact img {
            margin-bottom: 10px;
        }

        a {
            color: #007acc;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        .service-link {
            margin-top: 10px;
            display: inline-block;
            padding: 10px 20px;
            background: #007acc;
            color: white;
            border-radius: 8px;
            text-decoration: none;
        }

        .service-link:hover {
            background: #005c99;
        }
    </style>
</head>

<body>
<header>
    <h1>Welcome to KK DevOps</h1>
    <h2>KK DevOps with AWS and SRE in Telugu</h2>
</header>

<div class="colorful-name">Kolla Haribabu</div>

<section>
    <h2>🌐 Server Side IP Address</h2>
    <%
        String ip = "";
        InetAddress inetAddress = InetAddress.getLocalHost();
        ip = inetAddress.getHostAddress();
        out.println("Server Host Name :: " + inetAddress.getHostName() + "<br>");
        out.println("Server IP Address :: " + ip);
    %>

    <h2>💻 Client Side IP Address</h2>
    <%
        out.println("Client IP Address :: " + request.getRemoteAddr() + "<br>");
        out.println("Client Name Host :: " + request.getRemoteHost());
    %>

    <h2>📦 Service</h2>
    <a class="service-link" href="services/employee/getEmployeeDetails">Get Employee Details</a>
</section>

<section class="contact">
    <img src="images/kkfunda.jpg" alt="KK Funda Logo" width="100">
    <p>
        KK FUNDA, Martha Halli, Bangalore<br>
        +91-9676831734<br>
        kkeducationblr@gmail.com<br>
        <a href="mailto:kkeducation@gmail.com">Mail to KK FUNDA</a>
    </p>
</section>

<div class="footer">
    <p>KK FUNDA Training & Development Center</p>
    <p><small>© 2024 by <a href="https://www.google.com/" target="_blank">KK FUNDA</a></small></p>
</div>

</body>
</html>
