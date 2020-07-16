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
            <h1 class="tool__header__title">Pdf to Image</h1>
            <h2 class="tool__header__subtitle">choose your image wisely and it will be in jpeg format</h2>
        </div>
        <div id="uploader" class="uploader">
        <strong> ${message}</strong><br><br>
	<form action="/webapp/pdfToImage" method="post" enctype="multipart/form-data">
  <input class="uploader__btn tooltip--left" type="file" name="userfile" required/>
  <input class="uploader__btn tooltip--left" type="text" name="a" placeholder="Enter The Page Number That You Wanna Delete!" /> <br><br>
    <strong>If your pdf is protected then enter password here.</strong> <br>
   <input class="uploader__btn tooltip--left" type="password" name="c" placeholder="Enter your password" /> <br><br>
  <button class="uploader__btn tooltip--left"  type="submit">Submit</button>
</form>
</div>             
</div>
</div>


<script>
    var iloveLang = {'noTasks': 'sorry, no tasks here!','Update Card Details': 'Update Card Details','login': 'login','email': 'email','waitnotify': 'Do not close your browser. Wait until your files are uploaded and processed! This might take a few minutes. :)','savingFile': 'Saving file...','Save to Drive': 'Save to Drive','Drive saving...': 'Drive saving...','Your file has been saved to Drive!': 'Your file has been saved to Drive!','Ok': 'Ok','processCompleted': 'The task has been completed!<br> Going to download page...','uploadComplete': 'Upload complete!','Save options for next actions': 'Save options for next actions','Some files require password': 'Some files require password','No file selected.': 'No file selected.','Please add a file to activate options': 'Please add a file to activate options','Yes': 'Yes','No': 'No','Over the content': 'Over the content','Below the content': 'Below the content','Facing pages': 'Facing pages','Normal': 'Normal','First cover': 'First cover','none': 'none','Remove': 'Delete','Remove this file': 'Remove this file','Rotate': 'Rotate','Or': 'Or','wops': 'Error','Error': 'Error','Upload error': 'Upload error','InvalidExtension': 'Sorry, this extension is not allowed','FileTooLarge': 'Too many Megapixel for image.','InvalidTask': 'InvalidTask','InvalidParams': 'InvalidParams','CloudError': 'TaskLimit','TaskLimit': 'TaskLimit','EmptyFile': 'This file is empty','UploadError': 'Upload error','DamagedFile': 'Damaged/Corrupted File','FileRemoved': 'Some files you selected from your device seem to have been renamed, deleted or moved. Please, next time, wait until upload finishes.','FileSizeExceeded': 'The filesize of this file exceeds the limits','errorOneRetry': 'Connection problems are preventing us to process your file <b><i>${filename}</i></b>. Believe us, we have already tried it 3 times! Please bear with us for a little while and try again later.<br><br>If the problem persists, disable web extensions, try incognito browsing or send us an email.<br><br><a href=\"#\" onclick=\"location.reload();\">Reload page and retry!</a>','errorRetry': 'Connection problems are preventing us to process your files. Believe us, we have already tried it 3 times! Please bear with us for a little while and try again later.<br><br>If the problem persists, disable web extensions, try incognito browsing or send us an email.<br><br><a href=\"#\" onclick=\"location.reload();\">Reload page and retry!</a>','File number exceeded': 'File number exceeded','File size exceeded': 'File size exceeded','Sorry, we are not ready for that.': 'Sorry, we are not ready for that.','superlimitWhoa': "You\'ve hit the limit, even for Premium. Whoa!",'superlimitDownload': "Unfortunately, our system doesn\'t have enough capacity to process your task. For now.",'Original size (in pixels) for this image': 'Original size (in pixels) for this image','This image will be resized to this size (in pixels)': 'This image will be resized to this size (in pixels)','Uploading...': "Uploading...",'1 file': '1 file','1 mb': '1 mb','${limit} files': '${limit} files','${limit} mb': '${limit} mb','registeredLevel': 'registered users','premiumLevel': 'premium users','publicLevel': 'non registered users','limitTaskMsg': "This task is <strong>limited to ${currentLimit}</strong> for ${currentLevel}. <strong>${nextLevel} can upload up to ${nextLimit}</strong>. Some of your files have not been added.",'Wait a moment, please...': 'Wait a moment, please...','Time left': 'Time left','minute': 'minute','hour': 'hour','less than': 'less than','minutes': 'minutes','hours': 'hours','seconds': 'seconds','dropIt': 'Drop it like it\'s hot','This <strong>feature</strong> requires you to be <strong>Premium</strong>': 'This <strong>feature</strong> requires you to be <strong>Premium</strong>','Premium feature': 'Premium feature','Welcome back after upload': 'We are glad you are here again. But for security reasons, your files aren\'t. To (toolname) your (fileformat), please get back to our homepage. ','Limit exceeded': 'Limit exceeded','leaveAlert': 'Do you really want to leave our page?','passwordRequiredFor': 'Password required for <br>${filename}','addPage': 'Add a blank page','paswordRequired': 'Password required','Cancel': 'Cancel','Ignore': 'Ignore','Ignore these files': 'Ignore these files','Send': 'Send','Same password for all files': 'Same password for all files','Did you forgot your password?': 'Did you forgot your password?','numPages': '${numPages} pages','Unlock PDF': 'Unlock PDF','damaged file?': 'Damaged file?','previousTaskLoading': 'Loading files from previous task','previousFail': 'We are sorry. We couldn\'t load the previous task files.','previousFailContinue': 'Ok','previousFailBack': 'Back to download','disabledMultipleFiles': 'Option disabled because there are multiple files', 'registeredFeatureTitle': 'Registered feature', 'registeredFeatureSubtitle':'This <strong>feature</strong> requires you to be <strong>Registered user</strong>','authTitle':'iLovePDF Accounts','authSubtitle':'Get access to extended features','ProtectedFile':'Password protected file'};
    var unlockPdfUrl = 'unlock_pdf.html';
    var paymentLang = {'yearly': 'Yearly','monthly': 'Monthly','stripePayBtn_web': 'Go Premium','stripePayBtn_web_desktop': 'Go Premium Pro','pack_web': 'Premium','pack_web_desktop': 'Premium Pro','paymentFail': 'The payment can\'t be processed.'};
    var premiumData = {'premiumUrl': '/user/premium',priceMonth: '₹<span class="pricing__price__numbers">300</span>',priceYear: '₹<span class="pricing__price__numbers">2,400</span>',priceYearMonthly: '₹<span class="pricing__price__numbers">200</span>'};
</script><script>
    var ilovepdfConfig = {"action":"tool","fp":1,"fpt":7,"tool":"protect","site":"ilovepdf","subtool":null,"toolText":"Protect PDF","token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiIiLCJhdWQiOiIiLCJpYXQiOjE1MjMzNjQ4MjQsIm5iZiI6MTUyMzM2NDgyNCwianRpIjoicHJvamVjdF9wdWJsaWNfYzkwNWRkMWMwMWU5ZmQ3NzY5ODNjYTQwZDBhOWQyZjNfT1Vzd2EwODA0MGI4ZDJjN2NhM2NjZGE2MGQ2MTBhMmRkY2U3NyJ9.qvHSXgCJgqpC4gd6-paUlDLFmg0o2DsOvb1EUYPYx_E","parentId":null,"defaultOptions":{"output_filename":"{filename}_protected","packaged_filename":"ilovepdf_protected"},"fileLimits":{"merge":{"mb":80,"files":20},"split":{"mb":80,"files":1},"compress":{"mb":160,"files":1},"officepdf":{"mb":10,"files":1},"wordpdf":{"mb":10,"files":1},"powerpointpdf":{"mb":10,"files":1},"excelpdf":{"mb":10,"files":1},"pdfword":{"mb":10,"files":1},"pdfpowerpoint":{"mb":10,"files":1},"pdfoffice":{"mb":10,"files":1},"pdfexcel":{"mb":10,"files":1},"pdfjpg":{"mb":20,"files":1},"imagepdf":{"mb":30,"files":15},"pagenumber":{"mb":80,"files":1},"watermark":{"mb":80,"files":1},"rotate":{"mb":80,"files":15},"unlock":{"mb":80,"files":1},"protect":{"mb":80,"files":1},"pdfa":{"mb":100,"files":1},"repair":{"mb":80,"files":1},"organize":{"mb":80,"files":3},"resizeimage":{"mb":130,"files":15},"compressimage":{"mb":130,"files":15},"cropimage":{"mb":50,"files":1},"converttojpg":{"mb":130,"files":15},"convertfromjpg":{"mb":130,"files":15},"rotateimage":{"mb":130,"files":15},"watermarkimage":{"mb":130,"files":15},"memeimage":{"mb":50,"files":1},"editimage":{"mb":50,"files":1},"editpdf":{"mb":100,"files":1}},"allFileLimits":{"limits":{"merge":{"mb":80,"files":20},"split":{"mb":80,"files":1},"compress":{"mb":160,"files":1},"officepdf":{"mb":10,"files":1},"wordpdf":{"mb":10,"files":1},"powerpointpdf":{"mb":10,"files":1},"excelpdf":{"mb":10,"files":1},"pdfword":{"mb":10,"files":1},"pdfpowerpoint":{"mb":10,"files":1},"pdfoffice":{"mb":10,"files":1},"pdfexcel":{"mb":10,"files":1},"pdfjpg":{"mb":20,"files":1},"imagepdf":{"mb":30,"files":15},"pagenumber":{"mb":80,"files":1},"watermark":{"mb":80,"files":1},"rotate":{"mb":80,"files":15},"unlock":{"mb":80,"files":1},"protect":{"mb":80,"files":1},"pdfa":{"mb":100,"files":1},"repair":{"mb":80,"files":1},"organize":{"mb":80,"files":3},"resizeimage":{"mb":130,"files":15},"compressimage":{"mb":130,"files":15},"cropimage":{"mb":50,"files":1},"converttojpg":{"mb":130,"files":15},"convertfromjpg":{"mb":130,"files":15},"rotateimage":{"mb":130,"files":15},"watermarkimage":{"mb":130,"files":15},"memeimage":{"mb":50,"files":1},"editimage":{"mb":50,"files":1},"editpdf":{"mb":100,"files":1}},"registered_limits":{"merge":{"mb":100,"files":25},"split":{"mb":100,"files":1},"compress":{"mb":200,"files":2},"officepdf":{"mb":15,"files":1},"wordpdf":{"mb":15,"files":1},"powerpointpdf":{"mb":15,"files":1},"excelpdf":{"mb":15,"files":1},"pdfoffice":{"mb":15,"files":1},"pdfword":{"mb":15,"files":1},"pdfpowerpoint":{"mb":15,"files":1},"pdfexcel":{"mb":15,"files":1},"pdfjpg":{"mb":25,"files":2},"imagepdf":{"mb":40,"files":20},"pagenumber":{"mb":100,"files":2},"watermark":{"mb":100,"files":2},"rotate":{"mb":100,"files":20},"unlock":{"mb":100,"files":2},"protect":{"mb":100,"files":2},"pdfa":{"mb":100,"files":1},"repair":{"mb":100,"files":1},"organize":{"mb":100,"files":5},"resizeimage":{"mb":200,"files":30},"compressimage":{"mb":200,"files":30},"cropimage":{"mb":90,"files":1},"converttojpg":{"mb":200,"files":30},"convertfromjpg":{"mb":200,"files":30},"rotateimage":{"mb":200,"files":30},"watermarkimage":{"mb":200,"files":30},"memeimage":{"mb":200,"files":1},"editimage":{"mb":50,"files":1},"editpdf":{"mb":100,"files":1}},"premium_limits":{"merge":{"mb":1000,"files":200},"split":{"mb":1000,"files":1},"compress":{"mb":1000,"files":10},"officepdf":{"mb":1000,"files":10},"wordpdf":{"mb":1000,"files":10},"powerpointpdf":{"mb":1000,"files":10},"excelpdf":{"mb":1000,"files":10},"pdfword":{"mb":1000,"files":10},"pdfpowerpoint":{"mb":1000,"files":10},"pdfexcel":{"mb":1000,"files":10},"pdfoffice":{"mb":1000,"files":10},"pdfjpg":{"mb":1000,"files":10},"imagepdf":{"mb":1000,"files":80},"pagenumber":{"mb":1000,"files":10},"watermark":{"mb":1000,"files":10},"rotate":{"mb":1000,"files":80},"unlock":{"mb":1000,"files":10},"protect":{"mb":1000,"files":80},"pdfa":{"mb":1000,"files":10},"repair":{"mb":1000,"files":10},"organize":{"mb":1000,"files":20},"resizeimage":{"mb":1000,"files":60},"compressimage":{"mb":1000,"files":60},"cropimage":{"mb":1000,"files":1},"converttojpg":{"mb":5000,"files":60},"convertfromjpg":{"mb":1000,"files":60},"rotateimage":{"mb":1000,"files":60},"watermarkimage":{"mb":1000,"files":60},"memeimage":{"mb":1000,"files":1},"editimage":{"mb":50,"files":1},"editpdf":{"mb":100,"files":1}},"temp_limits":{"merge":{"mb":1000,"files":80},"split":{"mb":1000,"files":1},"compress":{"mb":1000,"files":3},"officepdf":{"mb":1000,"files":3},"wordpdf":{"mb":100,"files":3},"powerpointpdf":{"mb":100,"files":3},"excelpdf":{"mb":100,"files":3},"pdfword":{"mb":100,"files":1},"pdfpowerpoint":{"mb":100,"files":1},"pdfexcel":{"mb":100,"files":1},"pdfoffice":{"mb":100,"files":1},"pdfjpg":{"mb":100,"files":3},"imagepdf":{"mb":1000,"files":80},"pagenumber":{"mb":1000,"files":3},"watermark":{"mb":1000,"files":3},"rotate":{"mb":1000,"files":30},"unlock":{"mb":1000,"files":10},"protect":{"mb":1000,"files":5},"pdfa":{"mb":100,"files":1},"repair":{"mb":1000,"files":2},"organize":{"mb":1000,"files":5},"resizeimage":{"mb":1000,"files":60},"compressimage":{"mb":1000,"files":60},"cropimage":{"mb":1000,"files":1},"converttojpg":{"mb":5000,"files":60},"convertfromjpg":{"mb":1000,"files":60},"rotateimage":{"mb":1000,"files":60},"watermarkimage":{"mb":1000,"files":60},"memeimage":{"mb":1000,"files":1},"editimage":{"mb":50,"files":1},"editpdf":{"mb":100,"files":1}}},"servers":["\/\/api1.ilovepdf.com","\/\/api2.ilovepdf.com","\/\/api3.ilovepdf.com","\/\/api4.ilovepdf.com","\/\/api5.ilovepdf.com","\/\/api6.ilovepdf.com","\/\/api7.ilovepdf.com","\/\/api8.ilovepdf.com","\/\/api9.ilovepdf.com","\/\/api10.ilovepdf.com","\/\/api11.ilovepdf.com","\/\/api12.ilovepdf.com","\/\/api13.ilovepdf.com","\/\/api14.ilovepdf.com","\/\/api15.ilovepdf.com","\/\/api16.ilovepdf.com","\/\/api17.ilovepdf.com","\/\/api18.ilovepdf.com","\/\/api19.ilovepdf.com"],"level":"user","downloadUrl":"\/download","user":null,"country":"IN"};
        ilovepdfConfig.taskId = '15gbp3hyvgdzpzA5dvkb3r90dn51Awgq6rd1x88c81vgt1yvvr7npng6xwnrfsAkf0qx0b069m7jv75djhb26xd32pfbqA910jvr8l6vw1d5qt8rdvyfh3bhgnd6c1csw60h22ypk1x3tdcmw12j9qld87n0368dywyvd2jyxkzh4nt8tc31';

    iloveLang.beforeProtectTxt = 'Please fill the password twice to protect the PDF files'
</script>

</div>
             <div class="footer">
    <div class="footer__copy">
       <strong>DEVELOP BY ASHUTOSH!</strong>  </div>
</div>   
</div>        
<script>
        var siteData = {
        csrfParam: '_csrf-ilovepdf',
        csrfToken: '7fcgsvYYUeYrZKn1K-XBz0vkhc1tzdadodIvWoyY2HCknGTggX1ht2Um3ZZNq_KsBp3rrxWur8LtpmAdtKGPNg=='
    };
        var lang = 'en-US';
    var brand = 'iLovePDF';
    var brand_ref = 'ilovepdf';

        var nds = {
        'ck': 0,
        'content': '<p>We hope you like it and find it easier to use.<br>If you run into any issues, please <a href=\"/contact\">let us know</a>.<br>We can fix any problem if we know about it.</p>',
        'title': '<span style="color:#1D9D58">Welcome to the newly designed iLovePDF</span>'
    };
    </script>
            <script>
            var uCookie = {
                'ck': 0,
                'uc': 'IN',
                'content': '<span class=\"txtSmall\">We use own and third party Cookies to develop statistical information and show custom advertising through browsing analysis sharing it with our partners. By using iLovePDF, you agree to <a target=\"_blank\" href=\"/help/cookies\" style=\"text-decoration: underline;\">our use of cookies</a></span>. <br/><a class=\"langtoas langtoas--big\" style=\"width:auto;margin-left: 0px;margin-top:10px;\">Ok</a>',
                'title': 'Cookie European Law'
            }
        </script>
    <script src="dist/js/app.b49cf26.js" async="async"></script></body>
</html>
