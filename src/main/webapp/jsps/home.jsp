<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>KK FUNDA | DevOps in Telugu & English</title>
    <link rel="icon" href="images/kkfunda.jpg">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Inter', sans-serif;
            background-color: #f5f7fa;
            color: #2c3e50;
        }

        header {
            background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
            color: #fff;
            padding: 40px 20px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        header h1 {
            font-size: 2.7rem;
            margin: 0;
        }

        header h2 {
            font-weight: 400;
            font-size: 1.2rem;
            margin-top: 10px;
        }

        .colorful-name {
            text-align: center;
            font-size: 2rem;
            font-weight: 700;
            margin: 30px 0;
            background: linear-gradient(to right, #ff416c, #ff4b2b, #1e90ff, #8e2de2);
            -webkit-background-clip: text;
            color: transparent;
        }

        main {
            max-width: 960px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
        }

        section {
            margin-bottom: 35px;
        }

        h2 {
            color: #2c5364;
            font-size: 1.5rem;
            margin-bottom: 12px;
        }

        .info-block {
            background: #ecf5ff;
            padding: 15px 20px;
            border-left: 5px solid #2c5364;
            border-radius: 8px;
            font-size: 1rem;
            line-height: 1.6;
        }

        .service-link {
            display: inline-block;
            margin-top: 15px;
            padding: 12px 24px;
            background-color: #2c5364;
            color: #fff;
            border-radius: 6px;
            text-decoration: none;
            font-weight: 600;
            transition: background 0.3s ease;
        }

        .service-link:hover {
            background-color: #1e3d59;
        }

        .contact {
            text-align: center;
            margin-top: 40px;
        }

        .contact img {
            width: 90px;
            border-radius: 50%;
            margin-bottom: 12px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .footer {
            text-align: center;
            padding: 20px 10px;
            font-size: 0.9rem;
            color: #777;
        }

        a {
            color: #2c5364;
        }

        a:hover {
            text-decoration: underline;
        }

        @media (max-width: 600px) {
            header h1 {
                font-size: 2rem;
            }

            .colorful-name {
                font-size: 1.4rem;
            }

            .service-link {
                padding: 10px 18px;
            }
        }
    </style>
</head>
<body>

<header>
    <h1>Welcome to KK DevOps</h1>
    <h2>DevOps with AWS and SRE in Telugu</h2>
</header>

<div class="colorful-name">KHDevOps</div>

<main>
    <section>
        <h2>🌐 Server Side IP Address</h2>
        <div class="info-block">
            <%
                InetAddress inetAddress = InetAddress.getLocalHost();
                String ip = inetAddress.getHostAddress();
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
