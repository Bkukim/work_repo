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
    <title>${board.id}번 게시물</title>
</head>
<body>
<jsp:include page="../../common/header_board.jsp"/>
<div class="container">
    <table class="table table-primary table-striped">
        <thead>
        <tr>
            <th scope="col">번호</th>
            <th scope="col">제목</th>
            <th scope="col">내용</th>

        </tr>
        </thead>
        <tbody>
            <tr>
                <td>${board.id}</td>
                <td>${board.title}</td>
                <td>${board.content}</td>
            </tr>
        </tbody>
    </table>
</div>
<jsp:include page="../../common/footer.jsp"/>
</body>
</html>
