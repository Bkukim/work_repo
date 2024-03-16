<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2024-03-13
  Time: 오후 2:14
  To change this template use File | Settings | File Templates.
--%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>부서 전체 보기</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<jsp:include page="../../common/header_dept.jsp"/>
<script>
    function confirmDelete() {
        return confirm("정말로 삭제하시겠습니까?");
    }
</script>
    <table class="table container table-success table-striped text-center align-middle table-bordered">
        <thead>
        <tr>
            <th scope="col">부서번호</th>
            <th scope="col">부서이름</th>
            <th scope="col">위치</th>
            <th scope="col">부서 정보 수정</th>
            <th scope="col">부서 정보 삭제</th>
        </tr>
        </thead>
        <tbody>

            <c:forEach var="data" items="${list}">
            <tr class="container">
                <td>${data.dno}</td>
                <td>${data.dname}</td>
                <td>${data.loc}</td>
                <td><a class="btn btn-outline-success ml-auto" href="/exam01/dept/edition/${data.dno}" role="button">수정</a></td>
                <td> <form action="/exam01/dept/delete/${data.dno}" method="post" class="container" onsubmit="return confirmDelete();">
                    <input type="hidden" name="_method" value="delete"/>
                    <div><button type="submit" class="btn btn-outline-success">삭제</button></div>
                </form></td>
            </tr>
            </c:forEach>


        </tbody>
    </table>
<div class="container"><a href="/exam01/dept/addition" class="float-right btn btn-success">부서 추가</a></div>
<jsp:include page="../../common/footer.jsp"/>
</body>
</html>
