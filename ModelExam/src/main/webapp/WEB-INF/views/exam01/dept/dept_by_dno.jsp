<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2024-03-14
  Time: 오전 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${dept.dno}번 부서</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<jsp:include page="../../common/header_dept.jsp"/>
    <div class="container">
        <table class="table container table-success table-striped">
            <thead>
            <tr>
                <th scope="col">부서번호</th>
                <th scope="col">부서이름</th>
                <th scope="col">위치</th>
            </tr>
            </thead>
            <tbody>
                <tr>
                    <td>${dept.dno}</td>
                    <td>${dept.dname}</td>
                    <td>${dept.loc}</td>
                </tr>
            </tbody>
        </table>
    </div>

<jsp:include page="../../common/footer.jsp"/>
</script>
</body>
</html>
