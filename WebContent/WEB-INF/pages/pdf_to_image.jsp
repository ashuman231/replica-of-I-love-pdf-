<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="dist/css/app.b49cf26.css" rel="stylesheet"></head>
<body class="toolpage  lang-en-US">
<div class="header">
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
            <h1 class="tool__header__title">Pdf to Image</h1>
            <h2 class="tool__header__subtitle">choose your image wisely and it will be in jpeg format</h2>
        </div>
        <div id="uploader" class="uploader">
        <strong> ${message}</strong><br><br>
	<form action="/webapp/pdfToImage" method="post" enctype="multipart/form-data">
  <input class="uploader__btn tooltip--left" type="file" name="userfile" required/>
  <input class="uploader__btn tooltip--left" type="text" name="a" placeholder="Enter The Page Number That You Wanna Delete!" /> <br><br>
    <strong>*If your pdf is protected then enter password here(optional).</strong> <br>
   <input class="uploader__btn tooltip--left" type="password" name="c" placeholder="Enter your password" /> <br><br>
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
           </body>
</html>
