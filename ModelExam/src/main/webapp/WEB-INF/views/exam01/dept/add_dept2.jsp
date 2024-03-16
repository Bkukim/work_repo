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
    <title>부서 추가</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<jsp:include page="../../common/header_dept.jsp"/>
<div>
    <form action="/exam01/dept/add"  method="post" class="container">
        <div class="mb-3">
            <label for="dname" class="form-label">부서명</label>
            <input type="text " class="form-control form-success" id="dname" name="dname" placeholder="ex) sales ">
        </div>
        <div class="mb-3">
            <label for="loc" class="form-label" >부서 위치</label>
            <input type="text "  class="form-control " id="loc" name="loc" placeholder="ex) seoul ">
        </div><%--여기서 name속성을 잘 적어줘야한다. 백엔드와 연결하는 부분이기때문--%>
        <div><button type="submit" class="btn btn-success">저장</button></div>

    </form>
</div>
<jsp:include page="../../common/footer.jsp"/>
</body>
</html>
