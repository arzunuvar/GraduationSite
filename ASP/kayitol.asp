<style>
    .Kayıt-Alan{
        width: 450px;
        margin: 0 auto;
    }
   .text{
       width: 400px;
       height: 30px;
       border: 1px solid #695959;
       text-indent: 10px;
       border-radius: 5px;
       margin-top: 8px;
   }
   select{
       width: 200px;
   }
   .btn{
    background: #5cb85c;
    width: 22%;
    height: 30px;
    border: 1px solid #4cae4c;
    color: #fff;
    opacity: 5;
    margin-top: 5px;
   }
   h4{
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; 
    font-size: 16px;
   }
</style>

<div class="Kayıt">
   
    <div class="Kayıt-Alan">
            <h4>UYE KAYIT ALANI</h4>
       <center><table id="kose" width="80%" border="0"><form action="VeriGirisiOK.asp" method="post">
					<tr>
						<td> <label for="ad">Adınızı Giriniz:</label></td>
						<td><input type="text" id="adi" name="adi" required></td>
					</tr>
		  			 <tr>
						<td> <label for="okul">Soyadınızı Giriniz:</label></td>
						 <td><input type="text" id="soyadi" name="soyadi" required></td>
					</tr>
					<tr>
						<td> <label for="mail">E-Mail Adresini Giriniz</label></td>
						<td><input type="email" id="emaili" name="emaili" required placeholder=""></td>
					</tr>
					<tr>
						<td> <label for="tel">Telefon</label></td>
						<td><input type="tel" id="tel" name="tel" required placeholder=""></td>
					</tr>
					<tr>
						<td> <label for="sehir">Yaşadığınız Şehiri Giriniz:</label></td>
						<td><input type="text" id="is" name="tel" required placeholder=""></td>
					</tr>
					   <tr>
					<td>Cinsiyetinizi Seçiniz:</td>
					<td width="380"><input name="cinsiyet" type="radio" value="cins1">Erkek<input name="cinsiyet" type="radio" value="cins2">Kadın</td>
				</tr>
				
					<tr>
						<td> <label for="pw">Şifrenizi Giriniz</label></td>
						<td><input type="password" id="paraloi" name="paraloi" ></td>
					</tr>
					
					<tr>
						<td><input type="submit">
					</tr>
					
				</form></table></center>


        
    </div>
</div>