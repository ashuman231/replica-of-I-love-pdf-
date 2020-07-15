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
            <h1 class="tool__header__title">Download</h1>
        </div>
        <div id="uploader" class="uploader">
	<form action="/webapp/download" method="post" enctype="multipart/form-data">
     <input type="hidden"  name = "filepath" value=${filepath} ><br>
  <br>
  <button class="uploader__btn tooltip--left"  type="submit">Download</button>
</form>
</div>             
</div>
</div>

</div>
            <div class="footer">
    <div class="footer__copy">
        Develop by ashutosh !  </div>
</div>        

     
    <script src="dist/js/app.b49cf26.js" async="async"></script></body>
</html>
