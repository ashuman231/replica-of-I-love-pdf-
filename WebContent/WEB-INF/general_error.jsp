<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true"%>
    <!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
        
<link href="dist/css/app.b49cf26.css" rel="stylesheet"></head>
<body class="home  lang-en-US">
<div class="header">
    <div class="header__main">
        <div class="brand">
    <div class="brand__logo">
        <a href="/webapp/indexPage"
           title="iLovePDF">
                <img src="ilovepdf.svg"
                 alt="iLovePDF">
        </a>
    </div>
</div>       
          </div>
</div><div class="main">
    <div class="tool">
    <div class="tool__workarea" id="workArea">
        <div id="dropArea"></div>
        <div class="tool__header">
            <h1 class="tool__header__title">You Can't Download File Multiple Time.</h1>
            <h2 class="tool__header__subtitle">This Is A One Time Operation</h2>
        </div>
        <div id="uploader" class="uploader">
        <h1>Press Enter to go on Home Page.</h1>
	<form action="/webapp/indexPage" method="get" >
  <button class="uploader__btn tooltip--left"  type="submit">Enter</button>
</form>
</div>             
</div>
</div>
</div>
  <div class="footer">
    <div class="footer__copy">
       <strong>DEVELOP BY ASHUTOSH!</strong>  </div>
</div>        
</html>
    