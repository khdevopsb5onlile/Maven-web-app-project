<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>KK FUNDA | DevOps in Telugu and ENgLISH</title>
    <link rel="icon" href="images/kkfunda.jpg">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            background-color: #f4f9fc;
            color: #333;
        }

        header {
            background-color: #0066cc;
            color: #fff;
            padding: 30px 20px;
            text-align: center;
        }

        header h1 {
            margin: 0;
            font-size: 2.5rem;
        }

        header h2 {
            margin: 10px 0 0;
            font-weight: 400;
        }

        .colorful-name {
            font-size: 2rem;
            font-weight: bold;
            background: linear-gradient(to right, red, orange, green, blue, violet);
            -webkit-background-clip: text;
            color: transparent;
            text-align: center;
            margin: 20px 0;
        }

        main {
            max-width: 900px;
            margin: auto;
            padding: 20px;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 2px 12px rgba(0, 0, 0, 0.1);
        }

        section {
            margin-bottom: 30px;
        }

        h2 {
            color: #0066cc;
            margin-bottom: 10px;
            font-size: 1.5rem;
        }

        .info-block {
            background: #f0f7ff;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 20px;
        }

        .service-link {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #0066cc;
            color: #fff;
            border-radius: 8px;
            text-decoration: none;
            transition: background 0.3s;
        }

        .service-link:hover {
            background-color: #004a99;
        }

        .contact {
            text-align: center;
        }

        .contact img {
            width: 80px;
            border-radius: 50%;
            margin-bottom: 10px;
        }

        .footer {
            text-align: center;
            margin: 40px 0 20px;
            color: #777;
            font-size: 0.9rem;
        }

        a {
            color: #0066cc;
        }

        a:hover {
            text-decoration: underline;
        }

        @media (max-width: 600px) {
            header h1 {
                font-size: 1.8rem;
            }

            .colorful-name {
                font-size: 1.5rem;
            }

            .service-link {
                padding: 8px 15px;
            }
        }
    </style>
</head>
<body>

<header>
    <h1>Welcome to KK DevOps</h1>
    <h2>DevOps with AWS and SRE in Telugu</h2>
</header>

<div class="colorful-name">KollaHaribabu</div>

<main>
    <section>
        <h2>🌐 Server Side IP Address</h2>
        <div class="info-block">
            <%
                String ip = "";
                InetAddress inetAddress = InetAddress.getLocalHost();
                ip = inetAddress.getHostAddress();
                out.println("Server Host Name: <strong>" + inetAddress.getHostName() + "</strong><br>");
                out.println("Server IP Address: <strong>" + ip + "</strong>");
            %>
        </div>
    </section>

    <section>
        <h2>💻 Client Side IP Address</h2>
        <div class="info-block">
            <%
                out.println("Client IP Address: <strong>" + request.getRemoteAddr() + "</strong><br>");
                out.println("Client Host Name: <strong>" + request.getRemoteHost() + "</strong>");
            %>
        </div>
    </section>

    <section>
        <h2>📦 KK Services</h2>
        <a class="service-link" href="services/employee/getEmployeeDetails">Get Employee Details</a>
    </section>

    <section class="contact">
        <img src="images/kkfunda.jpg" alt="KK FUNDA Logo">
        <p>
            KK FUNDA, Martha Halli, Bangalore<br>
            📞 +91-9676831734<br>
            ✉️ kkeducationblr@gmail.com<br>
            <a href="mailto:kkeducation@gmail.com">Mail to KK FUNDA</a>
        </p>
    </section>
</main>

<div class="footer">
    <p>KK FUNDA Training & Development Center</p>
    <p>© 2024 <a href="https://www.google.com/" target="_blank">KK FUNDA</a></p>
</div>

</body>
</html>
