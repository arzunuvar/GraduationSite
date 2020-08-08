<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="main.css" rel="stylesheet" type="text/css"/>
    <title></title>
</head>
<body>
    <div class="top"></div>
    <div class="logo">
        <a href="anasayfa.html" target="myifr"><img src="images/logo.png" width="130" height="130"></a>
    </div> 
    <div class="menu">
      <a href="anasayfa.asp" target="myifr">ANASAYFA</a>
      <a href="forum.asp" target="myifr">FORUM</a>
      <a href="kisiler.asp" target="myifr">KİŞİLER</a>
      <a href="galeri.asp" target="myifr">GALERİ</a>
      <a href="videolar.asp" target="myifr">VİDEOLAR</a>
      <a href="kim_nerede.asp" target="myifr">KİM NEREDE</a>
      <a href="harita.asp" target="myifr">HARİTA</a>
    </div>
    <div class="wrapper">
        <div class="container">
            <iframe id="myifr" name="myifr" style="width: 100%;height: 500px;border: 0px;" src="anasayfa.asp"></iframe>
        </div>
        <div class="right-panel">
         <div class="panel">
             <div class="login">
                   <h4>UYE GİRİŞİ</h4>
                 <div class="line"></div>
                 <div class="login-area">
                     <form action="cikisyap.asp" method="post">
                     <input type="text" placeholder="Kullanıcı adı giriniz:" class="text"/><br>
                     <input type="password" placeholder="Şifre giriniz:" class="text"/><br>
                     <input type="checkbox" class="check"/><label class="label">Oturumu sürekli açık tut</label><br>
                     <input type="submit" value="ÇIKIŞ" class="lgnbtn"/>
                     <a href="kayitol.html" target="myifr" class="kytbtn">KAYIT OL<br><br>
                     <a href="#">Şifremi unuttum?</a>
                     <br>
                     <div class="line" style="margin-top: 5px;"></div>
                    </form>
                 </div>
                 <div class="login-area">
                     <h4>SOSYAL MEDYA HESAPLARI</h4>
                     <div class="line"></div><br>
                     &nbsp;<a href="#" class="i"><img src="images/facebook.png" width="24" height="24"></a>
                     &nbsp;<a href="#" class="i"><img src="images/twitter.png" width="24" height="24"></a>
                     &nbsp;<a href="#" class="i"><img src="images/instagram.png" width="24" height="24"></a>
                     &nbsp;<a href="#" class="i"><img src="images/youtube.png" width="24" height="24"></a>
                     &nbsp;<a href="#" class="i"><img src="images/google-plus.png" width="24" height="24"></a>
                     <br><br>
                     <div class="line"></div>
                 </div>
                 <div class="login-area">
                     <h4>İLETİŞİM</h4>
                     <div class="line"></div><br>
                     <a href="iletisim.asp" target="myifr" class="kytbtn" style="width: 100%;margin-right: 0px;" >BURAYA TIKLA!</a>
                     <br><br>
                     <div class="line" ></div>
                 </div>
             </div>
         </div>
         
        </div>
    </div>
    
    <div class="footer">&copy; 2018-Bu site Arzu Ünüvar tarafından yapılmıştır.</div>
</body>

</html>

