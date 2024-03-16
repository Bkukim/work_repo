<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2024-03-13
  Time: 오후 3:34
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${member.eno}번 직원</title>
</head>
<body>
<jsp:include page="../../common/header_member.jsp"/>
<div class="container">
    <table class="table table-primary table-striped">
        <thead>
        <tr>
            <th scope="col">사원번호</th>
            <th scope="col">이름</th>
            <th scope="col">직무</th>
            <th scope="col">담당 매니저</th>
        </tr>
        </thead>
        <tbody>

            <tr>
                <td>${member.eno}</td>
                <td>${member.ename}</td>
                <td>${member.job}</td>
                <td>${member.manager}</td>
            </tr>
        </tbody>
    </table>
</div>
<jsp:include page="../../common/footer.jsp"/>
</body>
</html>
