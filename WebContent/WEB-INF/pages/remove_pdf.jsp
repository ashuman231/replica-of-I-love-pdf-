  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html>
    <html lang="en">
<body class="toolpage lang-en-US sidebar-active tool-protect" data-gr-c-s-loaded="true">
<head>
<link href="dist/css/app.b49cf26.css" rel="stylesheet">
</head>
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
    <div class="tool__workarea" id="workArea">
        <div id="dropArea"></div>
           
    </div>
    <div class="option__panel__title">To Modify your pdf
    <br>
    (Insert Range that you wanna delete)
    </div>
    <div class="option__panel__content">
     <strong>${message}</strong><br><br>
		 <form action="/webapp/remove" method="post" enctype="multipart/form-data">
		 <input class="uploader__btn tooltip--left" type="file" name="userfile" required/>
		<p>From</p>
        <div class="form__group form__group--btn form__group--btn-lg">
                <input id="pwd" class="input option" type="text" name="a" tabindex="1" placeholder="start from 1" Required>

        </div>
        <br>
        <p>To</p>
        <div class="form__group form__group--btn form__group--btn-lg">

                <input id="pwd2" class="input option" type="text" name="b" tabindex="2"  Required>
        </div>
		<br>
		  <strong>*If your pdf is protected then enter password here(optional).</strong> <br>
   <input class="uploader__btn tooltip--left" type="password" name="c" placeholder="Enter your password" /> <br><br>
		<div class="uploader">
                 <input type="submit" class="uploader__btn tooltip--left"value="select"></input>
            </div>
		
		 </form>
    </div>
    </div>
 <div class="footer">
    <div class="footer__copy">
       <strong>DEVELOP BY ASHUTOSH!</strong>  </div>
</div>   
</body>
</html>