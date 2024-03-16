<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2024-03-13
  Time: 오후 5:12
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="/resources/css/main.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
<%--        1번 메뉴       --%>
        <a class="navbar-brand" href="/exam01/home">
            <img src="/resources/img/simple-coding/home.png" height="25" width="25"/>
            Home
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
<%--    메뉴시작        --%>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
<%--                대메뉴 시작                  --%>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        부서
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/exam01/dept">부서 보기</a></li>
<%--                      todo  반복문으로 자동으로 생기게 만들기 --%>
                        <li><a class="dropdown-item" href="/exam01/dept/10">10번 부서</a></li>
                        <li><a class="dropdown-item" href="/exam01/dept/20">20번 부서</a></li>
                        <li><a class="dropdown-item" href="/exam01/dept/30">30번 부서</a></li>
                        <li><a class="dropdown-item" href="/exam01/dept/40">40번 부서</a></li>
                    </ul>
                </li>
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <a class="nav-link" href="/exam01/member">직원 목록 </a>
            </ul>
            </ul>

            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>

</body>
</body>
</html>
