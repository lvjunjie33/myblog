<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>

    <rapid:override name="title">
        - Edit tag
    </rapid:override>
<rapid:override name="header-style">
    <style>
        /*覆盖 layui*/
        .layui-input-block {
            margin:0px 10px;
        }
        .layui-table {
            margin-top: 0;
        }
        .layui-col-md4 {
            padding:10px;
        }
        .layui-col-md8 {
            padding:10px;
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
              <a href="/admin/tag">Tag list</a>
              <a><cite>Edit tag</cite></a>
        </span>
    </blockquote>
    <div class="layui-row">
        <div class="layui-col-md4" >
            <form class="layui-form" method="post" id="myForm" action="/admin/tag/editSubmit">
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <strong>Edit tag</strong>
                    </div>
                    <input type="hidden" name="tagId" value="${tag.tagId}">
                    <div class="layui-input-block">
                        Name <span style="color: #FF5722; ">*</span>
                        <input type="text" name="tagName" value="${tag.tagName}" autocomplete="off" class="layui-input" required>
                    </div>
                    <br>
                    <div class="layui-input-block">
                        Tag description
                        <input type="text" name="tagDescription" value="${tag.tagDescription}" autocomplete="off" class="layui-input" >
                    </div>
                    <br>
                    <div class="layui-input-block">
                        <button class="layui-btn" lay-filter="formDemo" type="submit">Save</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="layui-col-md8">
            <table class="layui-table" >
                <colgroup>
                    <col width="300">
                    <col width="50">
                    <col width="100">
                    <col width="50">
                </colgroup>
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Article count</th>
                    <th>Operation</th>
                    <th>ID</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${tagList}" var="c">

                    <tr>
                        <td>
                            <a href="/tag/${c.tagId}" target="_blank">${c.tagName}</a>
                        </td>
                        <td>
                            <a href="/tag/${c.tagId}" target="_blank">${c.articleCount}</a>
                        </td>
                        <td>
                            <a href="/admin/tag/edit/${c.tagId}" class="layui-btn layui-btn-mini">Edit</a>
                            <c:if test="${c.articleCount==0}">
                                <a href="/admin/tag/delete/${c.tagId}" class="layui-btn layui-btn-danger layui-btn-mini" onclick="return confirmDelete()">Delete</a>
                            </c:if>
                        </td>
                        <td>${c.tagId}</td>
                    </tr>

                </c:forEach>
                </tbody>
            </table>

        </div>
    </div>






</rapid:override>
<rapid:override name="footer-script">
    <script>

    </script>
</rapid:override>

<%@ include file="../public/framework.jsp"%>
