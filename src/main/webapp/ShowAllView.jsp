<%@ page pageEncoding="UTF-8" %>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>emplist</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%--<link rel="stylesheet" type="text/css" href="<c:url value='/css/style.css'/>"/>--%>
    <script type="text/javascript" src="/ems/jquery-1.8.3.js"></script>
    <script type="text/javascript">
        window.setInterval(function () {
            $("#time").text(new Date().toLocaleString());
        }, 1000);
    </script>
</head>
<body>
<div id="wrap">
    <div id="top_content">
        <div id="header">
            <div id="rightheader">
                <p id="time">

                    <br/>
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
                Welcome!
            </h1>
            <table class="table" border="1">
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
                        Operation
                    </td>
                </tr>

                <c:forEach var="p" items="${sessionScope.list}" varStatus="vs">

                    <tr
                            <c:if test="${vs.index%2==0}">class="row1" </c:if>
                            <c:if test="${vs.index%2!=0}">class="row2"</c:if> >
                        <td>
                                ${ p.id }
                        </td>
                        <td>
                                ${ p.name }
                        </td>
                        <td>
                                ${ p.salary }
                        </td>
                        <td>
                                ${ p.age }
                        </td>
                        <td>
                            <a href="emplist.html" id="delete">delete emp</a>&nbsp;<a
                                href="updateEmp.jsp?id=<s:property value='id'/>">update emp</a>
                        </td>
                    </tr>

                </c:forEach>

            </table>
            <p>
                <input type="button" class="button" value="Add Employee"
                       onclick="location='${pageContext.request.contextPath}/view/addEmp.jsp'"/>
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
