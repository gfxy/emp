<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>emplist</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(function (){
            $("#del").live("click",function(){
                var s=$(this).parent().prev().prev().prev().prev().prev().prev().text();
                var confir = confirm("请确认删除此条数据？");
                if(confir==true){
                    location.href="${pageContext.request.contextPath }/emp/delete?id="+s;
                }
            })
        })
    </script>
</head>
<body>
<div id="wrap">
    <div id="top_content">
        <div id="header">
            <div id="rightheader">
                <p>
                    2009/11/20
                    <br />
                </p>
            </div>
            <div id="topheader">
                <h1 id="title">
                    <a href="#">main</a>
                </h1>
            </div>
            <div id="navigation">
            </div>
        </div>
        <div id="content">
            <p id="whereami">
            </p>
            <div style="float: left;color: #CE090E">
                Welcome  !
            </div>
            <jsp:include page="logo.jsp"></jsp:include>
            <table class="table">
                <tr class="table_header">
                    <td>
                        ID
                    </td>
                    <td>
                        Name
                    </td>
                    <td>
                        Salary
                    </td>
                    <td>
                        Age
                    </td>
                    <td>

                    </td>
                    <td>
                        Sex
                    </td>
                    <td>
                        Operation
                    </td>
                </tr>
                <c:forEach items="${emps}" var="emp">
                <tr th:class="${empState.odd ? 'row2':'row1'}" th:each="emp,empState:${emps}">
                        <td th:text="${emp.id}">${emp.id}</td>
                        <td th:text="${emp.name}">${emp.name}</td>
                        <td th:text="${emp.salary}">${emp.salary}</td>
                        <td th:text="${emp.age}">${emp.age}</td>
                        <td th:text="${calendars.format(emp.,'yyyy-MM-dd')}"><fmt:formatDate value="${emp.}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
                        <td th:text="${emp.sex ? '男':'女' }">${emp.sex ? '男':'女'}</td>
                        <td>
                            <a href="javascript:void(0)" id="del">delete emp</a>&nbsp;
                            <a href="${pageContext.request.contextPath}/emp/selectOne?id=${emp.id}" id="upd">update emp</a>
                        </td>
                   </tr>
                </c:forEach>
            </table>
            <p>
                <a href="${pageContext.request.contextPath}/addEmp.jsp">添加员工信息</a>
            </p>
        </div>
    </div>
    <div id="footer">
        <div id="footer_bg">
            ABC@126.com
        </div>
    </div>
</div>
</body>
</html>
