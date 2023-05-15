<%--
  Created by IntelliJ IDEA.
  User: My PC
  Date: 5/15/2023
  Time: 1:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Youtube</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/all.min.css">
    <link rel="stylesheet" type="text/css" href="css/fontawesome.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<!-- Top navbar -->
<nav class="container-fluid fixed-top bg-white pt-2" id="top_nav">
    <div class="row">
        <div class="col-4 pl-4">
            <a class="navbar-brand" href=""><img
                    src="https://firebasestorage.googleapis.com/v0/b/giangvan-248ea.appspot.com/o/logo.png?alt=media&token=ea07d5cc-ec42-4e5e-839c-22b6558e49ae"
                    width="10%"></a>
        </div>
        <div class="col-4">
            <form action="result.html" method="get">
                <div class="input-group mb-3">
                    <input type="text" class="form-control search" placeholder="Search">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-outline-secondary" data-toggle="tooltip"
                                data-placement="bottom" title="Search!"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-4 text-right">
            <c:if test='${sessionScope["userLogin"]==null}'>
                <a href="/user?action=login" class="btn btn-outline-primary"><i class="fas fa-user-circle"
                                                                                style="font-size: 20px;"></i> <span
                        style="font-size:14px; font-weight: 600;">SIGN IN</span></a>
                <a href="/user?action=register" class="btn btn-outline-primary"><i class="fas fa-user-circle"
                                                                                   style="font-size: 20px;"></i> <span
                        style="font-size:14px; font-weight: 600;">SIGN UP</span></a>
            </c:if>
            <c:if test='${sessionScope["userLogin"]!=null}'>
                <div>
                    <img src='${sessionScope["userLogin"].getAvatar()}'>
                    <a href="#">${sessionScope["userLogin"].getName()}</a>
                </div>
            </c:if>
        </div>
    </div>
</nav>
<!-- Top navbar -->

<!-- mobile top navbar -->
<nav class="container-fluid fixed-top bg-white pt-3" id="top_nav_mobile">
    <div class="row">
        <div class="col-3 pl-4">
            <a class="navbar-brand" href="../../index.jsp"><img
                    src="https://firebasestorage.googleapis.com/v0/b/giangvan-248ea.appspot.com/o/logo.png?alt=media&token=ea07d5cc-ec42-4e5e-839c-22b6558e49ae"
                    class="mb-2" width="10%"></a>
        </div>
        <div class="col-7">
            <form>
                <div class="input-group mb-3">
                    <input type="text" class="form-control search" placeholder="Search">
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" data-toggle="tooltip" data-placement="bottom"
                                title="Search!"><i class="fas fa-search"></i></button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-2 text-right">
            <a href="login.html"><i class="fas fa-user-circle" style="font-size: 30px;"></i></a>
        </div>
    </div>
</nav>
<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<script>
    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });
</script>
<!-- mobile top navbar -->
</body>
</html>