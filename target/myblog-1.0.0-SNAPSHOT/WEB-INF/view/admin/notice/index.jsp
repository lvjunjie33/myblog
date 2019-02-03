<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>

    <rapid:override name="title">
        - Notice list
    </rapid:override>
<rapid:override name="header-style">
    <style>
        /*覆盖 layui*/

        .layui-table {
            margin-top: 0;
        }

        .layui-btn {
            margin: 2px 0!important;
        }
    </style>
</rapid:override>

<rapid:override name="content">

    <blockquote class="layui-elem-quote">
        <span class="layui-breadcrumb" lay-separator="/">
          <a href="/admin">Homepage</a>
          <a><cite>Notice list</cite></a>
        </span>
    </blockquote>


            <table class="layui-table" >
                <colgroup>
                    <col width="400">
                    <col width="50">
                    <col width="100">
                    <col width="100">
                    <col width="50">
                </colgroup>
                <thead>
                <tr>
                    <th>Title</th>
                    <th>Order</th>
                    <th>status</th>
                    <th>Operation</th>
                    <td>ID</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${noticeList}" var="c">

                    <tr>
                        <td>
                            <a href="/notice/${c.noticeId}" target="_blank">${c.noticeTitle}</a>
                        </td>
                        <td>
                                ${c.noticeOrder}
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${c.noticeStatus == 1}">
                                    Show
                                </c:when>
                                <c:otherwise>
                                    <span style="color:#FF5722;">Hide</span>
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <a href="/admin/notice/edit/${c.noticeId}" class="layui-btn layui-btn-mini">Edit</a>
                            <a href="/admin/notice/delete/${c.noticeId}" class="layui-btn layui-btn-danger layui-btn-mini" onclick="return confirmDelete()">Delete</a>
                        </td>
                        <td >${c.noticeId}</td>
                    </tr>

                </c:forEach>
                </tbody>
            </table>



</rapid:override>
<rapid:override name="footer-script">
    <script>

    </script>
</rapid:override>

<%@ include file="../public/framework.jsp"%>
