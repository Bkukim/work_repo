<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2024-03-14
  Time: 오후 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>직원 추가</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<jsp:include page="../../common/header_member.jsp"/>
<div>
    <form action="/exam01/member/add" method="post" class="container">
        <div class="mb-3">
            <label for="ename" class="form-label">직원 이름</label>
            <input type="text" class="form-control " id="ename" name="ename" placeholder="ex) SMITH ">
        </div><%--여기서 name속성을 잘 적어줘야한다. 백엔드와 연결하는 부분이기때문--%>
        <div class="mb-3">
            <label for="job" class="form-label">직무</label>
            <input type="text" class="form-control form-success" id="job" name="job" placeholder="ex) CLERK ">
        </div>
        <div class="mb-3">
            <label for="manager" class="form-label">매니저 번호</label>
            <input type="text" class="form-control form-success" id="manager" name="manager" placeholder="ex) 7902 ">
        </div>
        <div><button type="submit" class="btn btn-primary">저장</button></div>

    </form>
</div>
<jsp:include page="../../common/footer.jsp"/>
</body>
</html>
