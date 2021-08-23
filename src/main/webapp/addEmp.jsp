<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
    <title>add Emp</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/css/style.css" />
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(function (){
            $("#fm").live("submit",function(){
                var confir = confirm("请确认是否添加？");
                if(confir==false){
                    $("#fm").prop("action","javascript:void(0)")
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
                add Emp info:
            </h1>
            <jsp:include page="logo.jsp"></jsp:include>
            <form action="${pageContext.request.contextPath}/emp/insert" method="post" id="fm">
                <table cellpadding="0" cellspacing="0" border="0"
                       class="form_table">
                    <tr>
                        <td valign="middle" align="right">
                            name:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="name" />
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            salary:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="salary" />
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            age:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="age" />
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            :
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="" />
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            sex:
                        </td>
                        <td valign="middle" align="left">
                            <select name="sex">
                                <option value="true">男</option>
                                <option value="false">女</option>
                            </select>
                        </td>
                    </tr>
                </table>
                <p>
                    <input type="submit" class="button" value="提交" />
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
