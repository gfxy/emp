<%@page pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>login</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"
          href="css/style.css" />
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(function (){
            $("#fm").submit(function (){
                $.ajax({
                    type:"POST",
                    url:"${pageContext.request.contextPath}/admin/login",
                    /*表单元素过多时，可以选择$("#fm").serialize()方法一次性提交所有表单元素*/
                    data:$("#fm").serialize(),
                    dataType:"JSON",
                    success:function (result){
                        if(result.success){
                            location.href="${pageContext.request.contextPath}/emp/selectAll";
                        }else {
                            $("#span").html("<font color='red'>"+result.msg+"<font>");
                        }
                    }
                })
                return false;
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
            <h1>
                login
            </h1>
            <form action="" method="post" id="fm">
                <table cellpadding="0" cellspacing="0" border="0"
                       class="form_table">
                    <tr>
                        <td valign="middle" align="right">
                            username:
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="username" />
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            password:
                        </td>
                        <td valign="middle" align="left">
                            <input type="password" class="inputgri" name="password" />
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            验证码:
                            <img src="commom/authImg" id="num" /><br>
                            <a href="javascript:;" onclick="document.getElementById('num').src = '${pageContext.request.contextPath}/commom/authImg?'+(new Date()).getTime()">换一张</a>
                        </td>
                        <td valign="middle" align="left">
                            <input type="text" class="inputgri" name="number" />
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle" align="right">
                            <span id="span"></span>
                        </td>
                    </tr>
                </table>
                <p style="margin-left: 120px">
                    <input type="submit" class="button" value="Submit &raquo;" />
                    <input type="button" class="button" onclick="location.href='./regist.jsp'" value="Regist &raquo;" />
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
