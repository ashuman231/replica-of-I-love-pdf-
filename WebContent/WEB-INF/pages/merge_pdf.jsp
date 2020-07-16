<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="dist/css/app.b49cf26.css" rel="stylesheet"></head>
<body class="toolpage  lang-en-US">
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','../www.google-analytics.com/analytics.js','ga');
            ga('create', 'UA-12651114-1 ', 'auto');
    
            ga('send', 'pageview');
    </script><div class="header">
    <div class="header__main">
        <div class="brand">
    <div class="brand__logo">
        <a href="/webapp/indexPage"
           title="iLovePDF">
                <img src="ilovepdf.svg" alt="iLovePDF">
        </a>
    </div>
</div>      
       
</div>
</div>
<div class="main">
    
<div class="tool">
    <div class="tool__workarea" id="workArea">
        <div id="dropArea"></div>
        <div class="tool__header">
            <h1 class="tool__header__title">MERGE PDF file</h1>
            <h2 class="tool__header__subtitle">to merge all the pdf that you wanna upload.</h2>
        </div>
        <div id="uploader" class="uploader">
	<form action="/webapp/merge" method="post" enctype="multipart/form-data">
  <input class="uploader__btn tooltip--left" type="file" name="userfile" multiple required/>
  <br><br> <strong>    ${message}</strong><br><br>
  <button class="uploader__btn tooltip--left"  type="submit">Submit</button>
</form>
</div>             
</div>
</div>

</div>
            <div class="footer">
    <div class="footer__copy">
       <strong>DEVELOP BY ASHUTOSH!</strong>  </div>
</div>    

     
    <script src="dist/js/app.b49cf26.js" async="async"></script></body>
</html>
