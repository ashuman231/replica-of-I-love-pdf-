<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
   <html lang="en">
<head>
       
<link href="dist/css/app.b49cf26.css" rel="stylesheet">
    </head>
    <body class="clean login  lang-en-US">
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
        <div class="auth__extra--top">
            <a href="register.html" id="register-btn" class="btn btn--sm  btn--red">Create an account</a>
        </div>
        <div class="auth__box">
            <div class="brand">
    <div class="brand__logo">
        <a href="index.html"
           title="iLovePDF">
                <img src="img/ilovepdf.svg" alt="iLovePDF">
        </a>
    </div>
</div>                <h2 class="form__title">Login to your account</h2>
<form id="loginForm" action="login" method="get">
    <div class="form__group">
        <div class="field-loginEmail required" style="display: block;">
<div class="input--icon input--email"><input type="text" id="loginEmail" class="input" name="emailId" placeholder="Enter your email" autofocus="true" aria-required="true"></div><div class="help-block"></div>
</div>    </div>
    <div class="form__group ">
        <div class="field-inputPasswordAuth required" style="display: block;">
<div class="input--icon input--pwd"><input type="password" id="inputPasswordAuth" class="input" name="password" placeholder="Password" aria-required="true"></div><div class="help-block"></div>
</div>    </div>
    <div class="forget-password">
        <p>
            <a href="login/forgetpassword.html"
               id="forget-password">Forgot your password?</a>
        </p>
    </div>
    <div class="form-actions">
        
        <button type="submit" data-loading-text="Checking..." class="btn btn--red" id="loginBtn">
            Login <i class="m-icon-swapright m-icon-white"></i>
        </button>
    </div>
    <div class="create-account">
        <p>
            Don't have an account yet?<br><a
                href="webapp/register"
                id="goRegister">Create an account</a>
        </p>
    </div>
</form>
        </div>
    </div>
    <div class="auth__info">
        <div class="auth__box auth__box--login-txt">
    <h1 class="title1">Welcome back!</h1>
    <p>Please log in using your email and password. If you haven't registered yet, you can register for free.</p>
</div>    </div>
</div>
</div>    <script>
        var siteData = {
        csrfParam: '_csrf-ilovepdf',
        csrfToken: 'wGqrxwFudE0uYJsPjrfyleviracKLNiyN-VFFi40rtqJAe-VdgtEHGAi72zo-cH2ppvDxXJPoe17kQpRFg35nA=='
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
