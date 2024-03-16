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
    <title>게시물 전체 보기</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<jsp:include page="../../common/header_board.jsp"/>
<script>
    function confirmDelete() {
        return confirm("정말로 삭제하시겠습니까?");
    }
</script>
<div class="container">
    <table class="table table-primary table-striped text-center align-middle table-bordered">
        <thead>
        <tr>
            <th scope="col">번호</th>
            <th scope="col">제목</th>
            <th scope="col">내용</th>
            <th scope="col">게시물 수정</th>
            <th scope="col">게시물 삭제</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach var="data" items="${list}">
            <tr>
                <td>${data.id}</td>
                <td>${data.title}</td>
                <td>${data.content}</td>
                <td ><a class="btn btn-outline-primary ml-auto " href="/exam01/board/edition/${data.id}" role="button">수정</a></td>
                <td> <form action="/exam01/board/delete/${data.id}" method="post" class="container" onsubmit="return confirmDelete();">
                    <input type="hidden" name="_method" value="delete"/>
                    <div><button type="submit" class="btn btn-outline-primary">삭제</button></div>
                </form></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
   <a type="button" class="btn btn-primary" href="/exam01/board/addition" >게시물 추가</a>
</div>
<jsp:include page="../../common/footer.jsp"/>
</body>
</html>
