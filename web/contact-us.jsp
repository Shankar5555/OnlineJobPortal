<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.deepak.connection.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<jsp:include page="CheckCookie"></jsp:include>

<jsp:scriptlet>
    String email = (String) session.getAttribute("session_email");
</jsp:scriptlet>

<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Job Portal Website</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <div class="container-fluid">

            <jsp:scriptlet>
                if (email == null ? email == null : email.trim().equals("null")) {
            </jsp:scriptlet>
            <jsp:include page="header.jsp"></jsp:include>
            <jsp:scriptlet>
            } else {
            </jsp:scriptlet>
            <jsp:include page="profileheader.jsp"></jsp:include>
            <jsp:scriptlet>
                }
            </jsp:scriptlet>
            <jsp:include page="menubar.jsp"></jsp:include>

                <div class="row">
                    <div class="col-md-3">
                        <ul>
                            <li> <a href=""> Microsoft </a> </li>
                            <li> <a href=""> Infosys </a> </li>
                            <li> <a href=""> Wipro </a> </li>
                            <li> <a href=""> IBM </a> </li>
                            <li> <a href=""> Google </a> </li>
                        </ul>
                    </div>
                    <div class="col-md-6" style="background-color: #f9f8f9; margin-top: 10px">
                    <jsp:scriptlet>
                    if(email == null ? email == null : email.trim().equals("null"))
                    {
                    </jsp:scriptlet>
                    <jsp:include page="contact-us-nouser.jsp"></jsp:include>
                    <jsp:scriptlet>
                    }
                    else
                    {
                    </jsp:scriptlet>
                    <jsp:include page="contact-us-user.jsp"></jsp:include>
                    <jsp:scriptlet>
                    }
                    </jsp:scriptlet>
                    </div>
                    <div class="col-md-3">
                        <ul>
                            <li> <a href=""> Microsoft </a> </li>
                            <li> <a href=""> Infosys </a> </li>
                            <li> <a href=""> Wipro </a> </li>
                            <li> <a href=""> IBM </a> </li>
                            <li> <a href=""> Google </a> </li>
                        </ul>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8">
                        <iframe src="https://www.google.com/maps/place/Pragati+Computer+%26+Software+Developer/@21.181575,73.9867,8979m/data=!3m1!1e3!4m13!1m7!3m6!1s0x3bdfb18112ac80a3:0x8899c319a3bd19ce!2sBandharpada,+Maharashtra+425426!3b1!8m2!3d21.1858573!4d73.9859408!3m4!1s0x3bdfb1bafc216017:0x8b399f0eb8f67f71!8m2!3d21.1927046!4d73.9762061" width="100%" height="300" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                    </div>
                    <div class="col-md-2"></div>
                </div>

            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
</html>