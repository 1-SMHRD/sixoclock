<%@page import="kr.dao.SalesVO" %>
<%@page import="java.util.List" %>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>6시땡</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="images/favicon.png">
        <link rel="stylesheet" href="${cpath}/css/header.css">
    </head>


    <body>
        <!-- Header -->
        <section class="header-top-section">
            <div class="container">
                <div class="row">
                    <div  class="col-md-6"></div>
                    <div  class="col-md-6">
                        <div class="header-top-menu">
                            <ul class="nav nav-pills navbar-right">
                                <li><a href="#"><i class="pe-7s-gift">이벤트/혜택존</i></a></li>
                                <li><a href="#"><i class="pe-7s-ticket">MY티켓베이</i></a></li>
                                <li><a href="#"><i class="pe-7s-unlock">로그인</i></a></li>
                                <li><a href="#"><i class="pe-7s-user">회원가입</i></a></li>
                                <li><a href="#"><i class="pe-7s-box1">판매등록</i></a></li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <header class="header-section">
            <nav class="navbar navbar-default">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        
                        </button>
                        <a class="navbar-brand" href="#"><b>T</b>ticketbay</a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#">콘서트</a></li>
                            <li><a href="#">스포츠</a></li>
                            <li><a href="#">뮤지컬/연극</a></li>
                            <li><a href="#">영화/전시</a></li>
                            <li><a href="#">굿즈</a></li>
                            <li><a href="#">정가이하</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right cart-menu">
                        <li><a href="#" class="search-btn"><i class="fa fa-search" aria-hidden="true"></i></a></li>
                        <li><a href="#"><span> Cart &nbsp;</span> <span class="shoping-cart">0</span></a></li>
                    </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container -->
            </nav>
        </header>