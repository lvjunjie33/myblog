<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>

<rapid:override name="breadcrumb">
    <%--面包屑导航 start--%>
    <nav class="breadcrumb">
        <a class="crumbs" href="/">
            <i class="fa fa-home"></i>Homepage
        </a>
        <i class="fa fa-angle-right">
            ${page.pageTitle}
        </i>

        <i class="fa fa-angle-right"></i>
        Text
    </nav>
    <%--面包屑导航 end--%>
</rapid:override>

<rapid:override name="left">
    <%--博客主体-左侧文章正文 start--%>
    <div id="primary" class="content-area">
        <main id="main" class="site-main" role="main">
            <article class="post" >
                <header class="entry-header">
                    <h1 class="entry-title">
                            ${page.pageTitle}
                    </h1>
                </header><!-- .entry-header -->
                <div class="entry-content" style="min-height:400px;">
                    <div class="single-content">
                            ${page.pageContent}
                    </div>

                    <br><br>

                    <footer class="single-footer">
                        <ul class="single-meta">
                            <li class="r-hide">
                                <a href="javascript:pr()" title="侧边栏">
                                    <i class="fa fa-caret-left"></i>
                                    <i class="fa fa-caret-right"></i>
                                </a>
                            </li>
                        </ul>
                        <ul id="fontsize">
                            <li>A+</li>
                        </ul>
                        <div class="single-cat-tag">
                            <div class="single-cat">Date：<fmt:formatDate value="${page.pageCreateTime}" pattern="yyyy-MM-dd"/>
                            </div>
                        </div>
                    </footer><!-- .entry-footer -->


                    <div class="clear"></div>
                </div><!-- .entry-content -->
            </article><!-- #post -->



        </main>
        <!-- .site-main -->
    </div>
    <%--博客主体-左侧文章正文end--%>
</rapid:override>
<%--侧边栏 start--%>
<rapid:override name="right">
    <%@include file="../public/part/sidebar-3.jsp" %>
</rapid:override>
<%--侧边栏 end--%>

<%@ include file="../public/framework.jsp" %>