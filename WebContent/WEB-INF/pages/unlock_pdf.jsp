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
            <h1 class="tool__header__title">Unlock PDF file</h1>
            <h2 class="tool__header__subtitle">Encrypt your PDF with a password to keep sensitive data confidential.</h2>
        </div>
        <div id="uploader" class="uploader">
  <form action="/webapp/unlock" method="post" enctype="multipart/form-data">
  <input class="uploader__btn tooltip--left" type="file" name="userfile" required/><strong>${message}</strong><br><br>
  <input class="uploader__btn tooltip--left" type="password" name="a" placeholder="Enter your password" required/>
  <br>
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
