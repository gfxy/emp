<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>update Emp</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(function (){
            $("#fm").live("submit",function(){
                var confir = confirm("请确认是否修改？");
                if(confir==true){
                    $("#fm").prop("action","${pageContext.request.contextPath}/emp/update")
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
                    <a href="#">Main</a>
                </h1>
            </div>
            <div id="navigation">
            </div>
        </div>
        <div id="content">
            <p id="whereami">
            </p>
            <h1>
                update Emp info:
            </h1>
            <jsp:include page="logo.jsp"></jsp:include>
            <form action="javascript:void(0)" method="post" id="fm">
                <table cellpadding="0" cellspacing="0" border="0"
                       class="form_table">
                    <tr>
                        <td valign="middle" align="right">
                            id:
                        </td>
                        <td valign="middle" align="left" >
                            <input value="${emp.id}" name="id" readonly />
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            name:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="name" value="${emp.name}"/>
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            salary:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="salary" value="${emp.salary}"/>
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            age:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="age" value="${emp.age}"/>
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            :
                        </td>
                        <td valign="middle" align="left">

                            <input type="text" class="inputgri" name="" value="<fmt:formatDate value='${emp.}' pattern='yyyy/MM/dd'></fmt:formatDate>"/>
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            sex:
                        </td>
                        <td valign="middle" align="left">
                            <select name="sex">
                                <c:if test="${emp.sex==true}">
                                    <option value="true" selected=true >男</option>
                                    <option value="false" >女</option>
                                </c:if>
                                <c:if test="${emp.sex==false}">
                                    <option value="false" selected=false >女</option>
                                    <option value="true" >男</option>
                                </c:if>
                            </select>
                        </td>
                    </tr>
                </table>
                <p>
                    <input type="submit" class="button" value="Confirm" />
                </p>
            </form>
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
