<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	#category
	{
		padding-top:20px;padding-bottom:20px;margin:20px;
		border-bottom:2px solid black;
	}
	#category_prod_number
	{
		opacity:0.8;
	}
	#category_prod_number #prod_number
	{
		color:red;
	}
	#category_left
	{
		display:inline-block; width:200px;
		padding-top:20px;padding-bottom:20px;padding-left:3px;
		border-bottom:1px solid grey;
	}
	#prod_list
	{
		display:inline-block; width:1000px;
	}
	#prod_img{padding-bottom:10px;}
	#list li{display:inline-block;float:left;list-style:none;padding:20px;}
	#img{width:200px;height:250px;}
	#info{text-align:left;}
</style>
<%@ page import="ssg.dao.ProductDao" %>
<%@ page import="ssg.dto.ProductDto" %>
<%@ page import="java.util.ArrayList" %>
<%
	/*ProductDao pdao = new ProductDao();
	ArrayList<ProductDto> plist = pdao.prod_list(request);
	pageContext.setAttribute("plist", plist);*/
%>
<c:import url="ssgtop.jsp"/>
<!-- 문서 시작 -->
<div align="center" style="width:1500px"> <!-- 전체 문서의 시작 -->
<div align="center" id="category" style="width:1200px"> <!-- 큰 카테고리 -->
	<h2>큰 카테고리</h2>
	<div id="category_prod_number" align="right"><span id="prod_number">0000</span>개의 상품이 있습니다.</div>
</div> <!-- 큰 카테고리 끝 -->

<div id="category_left" align="left"> <!-- 왼쪽 div 시작 --> <!-- inline-block을 이용해서 한줄에 div가 2개가 나오도록 해보기 -->
	<div align="left"><h4>카테고리</h4></div> <!-- 상품의 상세 카테고리 -->
	<div id="dcategory">
		<a>삼겹살</a><p> <!-- a태그 스타일 해야됨 -->
		<a>목살</a><p>
		<a>갈비</a><p>
		<a>기타</a><p>
	</div>
	<div id="price_search" align="left" style="border-top:1px solid black;"> <!-- 가격 별로 보여주기 -->
		<div align="left"><h4>가격</h4></div>
		<div id="price_search_list">
			<a>~1만원</a><p>
			<a>1만원~3만원</a><p>
			<a>3만원~</a><p>
		</div>
	</div>
</div> <!-- 왼쪽 div끝 -->

<div id="prod_list"> <!-- 오른쪽 div 시작 -->
	<div> <!-- 상품 order by 시작 -->
		
	</div> <!-- 상품 order by 끝 -->
	<div id="list" style="width:1200px;"> <!-- 상품 목록 시작 -->
		<ul> <!-- while문 한줄에 4개 총 5줄 -->
			<li>
				<div id="prod_img"><a href=""><img src="0000008303302_i1_290.jpg" id="img"></a></div>
				<div id="info">
					<div>이마트몰</div>
					<div><a href="">#No Brand</a></div>
					<div>Title</div>
					<div>Price</div>
					<div>Rate</div>
				</div>
			</li>
			<li>
				<div id="prod_img"><a href=""><img src="0000008303302_i1_290.jpg" id="img"></a></div>
				<div id="info">
					<div>이마트몰</div>
					<div><a href="">#No Brand</a></div>
					<div>Title</div>
					<div>Price</div>
					<div>Rate</div>
				</div>
			</li>
			<li>
				<div id="prod_img"><a href=""><img src="0000008303302_i1_290.jpg" id="img"></a></div>
				<div id="info">
					<div>이마트몰</div>
					<div><a href="">#No Brand</a></div>
					<div>Title</div>
					<div>Price</div>
					<div>Rate</div>
				</div>
			</li>
			<li>
				<div id="prod_img"><a href=""><img src="0000008303302_i1_290.jpg" id="img"></a></div>
				<div id="info">
					<div>이마트몰</div>
					<div><a href="">#No Brand</a></div>
					<div>Title</div>
					<div>Price</div>
					<div>Rate</div>
				</div>
			</li>
		</ul>
	</div> <!-- 상품 목록 끝 -->
</div> <!-- 오른쪽 div 끝 -->

<div> <!-- 페이징 처리 시작 -->
	<div>
		<a href="">1</a>
		<a href="">2</a>
		<a href="">3</a>
		<a href="">4</a>
		<a href="">5</a>
		<a href="">6</a>
		<a href="">7</a>
		<a href="">8</a>
	</div>
</div> <!-- 페이징 처리 끝 -->
</div> <!-- 전체 문서의 끝 -->
<c:import url="ssgbottom.jsp"/>