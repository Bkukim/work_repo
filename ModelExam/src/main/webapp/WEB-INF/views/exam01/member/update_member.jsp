<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2024-03-14
  Time: 오후 5:31
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>직원 정보 수정</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<jsp:include page="../../common/header_member.jsp"/>
<div>
    <form action="/exam01/member/edit/${eno}"  method="post" class="container">
        <input type="hidden" name="_method" value="put"/> <%-- 예전에는 put이 없어서 method에 put을 넣어도 안 먹힌다.
         그래서 이 태그를 따로 넣어줘야 비로소 인식이 가능함. 이태그의 type은 hidden이라서 보이지 않는다.
          name은 _method이다. value에는 method에 들어가는 값을 넣어주어야한다.--%>
        <div class="mb-3">
            <label for="eno" class="form-label" >직원 번호</label>
            <input type="hidden" class="form-control form-success" id="eno" name="eno" value="${member.eno}" >
            <%--hidden 처리를 해서 사용자가 조작할 수 없게 안보이게 하고 백엔드로 날라가게는 했다.--%>
        </div>
        <div class="mb-3">
            <label for="ename" class="form-label" >직원 이름</label>
            <input type="text "  class="form-control " id="ename" name="ename" value="${member.ename}">
        </div><%--여기서 name속성을 잘 적어줘야한다. 백엔드와 연결하는 부분이기때문--%>
        <div class="mb-3">
            <label for="job" class="form-label" >직무</label>
            <input type="text "  class="form-control " id="job" name="job"  value="${member.job}">
        </div><%--여기서 name속성을 잘 적어줘야한다. 백엔드와 연결하는 부분이기때문--%>
        <div class="mb-3">
            <label for="manager" class="form-label" >매니저 번호</label>
            <input type="text "  class="form-control " id="manager" name="manager"  value="${member.manager}">
        </div><%--여기서 name속성을 잘 적어줘야한다. 백엔드와 연결하는 부분이기때문--%>
        <div><button type="submit" class="btn btn-primary">수정</button></div>

    </form>
</div>
<jsp:include page="../../common/footer.jsp"/>
</body>
</html>
