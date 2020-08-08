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
      <a href="logincheck.asp" target="myifr">FORUM</a>
      <a href="logincheck.asp" target="myifr">KİŞİLER</a>
      <a href="logincheck.asp" target="myifr">GALERİ</a>
      <a href="logincheck.asp" target="myifr">VİDEOLAR</a>
      <a href="logincheck.asp" target="myifr">KİM NEREDE</a>
      <a href="logincheck.asp" target="myifr">HARİTA</a>
    </div>
    <div class="wrapper">
        <div class="container">
            <iframe id="myifr" name="myifr" style="width: 100%;height: 500px;border: 0px;" src="anasayfa.asp"></iframe>
        </div>
        <div class="right-panel">
         <div class="panel">
             <div class="login">
                <table>
		<form method="POST" name=login action="login.asp">
		<h4>UYE GİRİŞİ</h4>
	<tr>
	
	<label for="kullaniciadi"></label>
	<td style="margin: 0 0 10px 0"><input type="text" name="adin" id="adin" placeholder="adınızı giriniz:" class="text" ></td>
	<tr>
	
	<td><input name="paraloi" id="paraloi" type="password" placeholder="Şifre giriniz:" class="text"><td>
    <label for="paraloi"></label>
		</tr>	
		<tr>
		
		<td colspan="3" align="center"><input type="submit" name="Giriş" id="Giris" value="Giriş yap" class="lgnbtn">
          <input type=hidden name=login value=true></td>
		</tr>
	</tr>
		</form>
	<form action="cikisyap.asp">
		<td colspan="3" align="center"><input type="submit" name="cikisyap" id="cikisyap" value="Çıkış yap">
			<input type=hidden name=login2 value=true></form></td>
	</table>
    
	
		
	
	
				 
                     <a href="kayitol.asp" target="myifr" class="kytbtn"/>KAYIT OL<br><br>
                     <a href="#">Şifremi unuttum?</a>
						 </form>
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

