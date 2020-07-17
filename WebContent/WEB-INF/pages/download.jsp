<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" trimDirectiveWhitespaces="true" %>
    <!DOCTYPE html>
  <head>
<link href="dist/css/app.b49cf26.css" rel="stylesheet">  
 </head>
 <body class="clean reset  lang-en-US">        
<div class="main">
<div class="home-title">
    <h1 class="subtitle">Notice:----You Can Download or Send it on Email Only For One Time.</h1>
    <h1 class="subtitle">Afterwards It Will Deleted Automatically!</h1>
    
</div>
<div class="auth">
    <div class="auth__form">
        <div class="auth__box">
            <div class="brand">
    <div class="brand__logo">
        <a href="/webapp/indexPage"
           title="iLovePDF">
                <img src="ilovepdf.svg" alt="iLovePDF">
        </a>
    </div>
</div>            
            <h1 class="title">To Download</h1>
                <p>For Download press to the below button!</p>
				 <form id="reset" class="form-horizontal" action="/webapp/download" method="post">
                 <div class="form-group">
				 <input type="hidden"  name = "filepath" value=${filepath} ><br>
                </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn--red">
                       Download <i class="m-icon-swapright m-icon-white"></i>
                    </button> 
                </div>
             </form> 
			</div>
    </div>
    <div class="auth__info">
        <div class="auth__box">
                 
			  <form id="reset" class="form-horizontal" action="/webapp/sendEmail" method="post">
            <h3 class="form__title">Send this file to your E-mail</h3>
                                        <h4 class="form__subtitle">Enter your E-email here.After press Send Button check your Inbox.</h4>
                <br/>
                <div class="form-group">
                <div class="input--icon input--email">
				 <input type="hidden"  name = "filepath" value=${filepath} ><br>
				<input type="email" id="userpasswordresetform-email" class="input" name="emailId" placeholder="Your email" required>
				</div>
                  <span class="error"></span>
                    <br/>
                </div>
                 
                <div class="form-actions">
                    <button type="submit" data-loading-text="Checking..." class="btn btn--red">
                        Send <i class="m-icon-swapright m-icon-white"></i>
                    </button>
                   
                </div>
            </form>  
              </div>
    </div>
</div>
</div>
</body> 
</html>
    