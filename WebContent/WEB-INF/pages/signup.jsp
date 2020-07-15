<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
    <html lang="en">
<head>
<link href="dist/css/app.b49cf26.css" rel="stylesheet">   
 </head>
    <body class="clean register  lang-en-US">
    <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','../www.google-analytics.com/analytics.js','ga');
            ga('create', 'UA-12651114-1 ', 'auto');
    
            ga('send', 'pageview');
    </script>        <div class="main">
    
<div class="auth">
    <div class="auth__form">
        <div class="auth__box">
            <div class="brand">
    <div class="brand__logo">
        <a href="index.html"
           title="iLovePDF">
                <img src="img/ilovepdf.svg" alt="iLovePDF">
        </a>
    </div>
</div> 
<h2 class="form__title">Create new account</h2> 
<form id="signupForm" action="register" method="get">
   <div class="form__group">
        <div class="field-name required" style="display: block;">
<div class="input--icon input--user"><input type="text" id="name" class="input" name="userName" placeholder="Name" autofocus aria-required="true"></div><div class="help-block"></div>
</div>    </div>
    <div class="form__group">
        <div class="field-signupEmail required" style="display: block;">
<div class="input--icon input--email"><input type="text" id="signupEmail" class="input" name="emailId" placeholder="Email" aria-required="true"></div><div class="help-block"></div>
</div>    </div>
    <div class="form__group">
        <div class="field-password required" style="display: block;">
<div class="input--icon input--lock"><input type="password" id="password" class="input" name="password" placeholder="Password" aria-required="true"></div><div class="help-block"></div>
</div>    </div>
    <div class="field-signupform-timezone" style="display: block;">

<input type="hidden" id="signupform-timezone" class="form-control" name="SignupForm[timezone]" value="UTC">

<div class="help-block"></div>
</div>    <script>document.getElementById("signupform-timezone").value = Intl.DateTimeFormat().resolvedOptions().timeZone</script>
    <div class="form-actions">
        <button type="submit" data-loading-text="Checking..." class="btn btn--red" id="registerButton">
            Register <i class="m-icon-swapright m-icon-white"></i>
        </button>
    </div>
    <div class="create-account">
        <p>
            Already member? <a
                href="webapp/login"
                id="goLogin">Log in</a>.
        </p>
    </div>
</form>
        </div>
    </div>
</div>
</div>    <script>
        var siteData = {
        csrfParam: '_csrf-ilovepdf',
        csrfToken: 'CKWb4y7bf5g8T5J02ZU-y3Bc9wudspVWSUS5dFHNmxtBzt-xWb5PyXIN5he_2w2oPSWZaeXR7AkFMPYzafTMXQ=='
    };
        var lang = 'en-US';
    var brand = 'iLovePDF';
    var brand_ref = 'ilovepdf';

        var nds = {
        'ck': 0,
        'content': '<p>We hope you like it and find it easier to use.<br>If you run into any issues, please <a href=\"/contact\">let us know</a>.<br>We can fix any problem if we know about it.</p>',
        'title': '<span style="color:#1D9D58">Welcome to the newly designed iLovePDF</span>'
    };
    </script>    <script src="dist/js/app.b49cf26.js"></script>        </body>
    </html>
