<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<% 
'kutuyu bo� b�rakmay� engelleme
If trim(request("adi"))="" then  
response.write ("<b>Eksik Bilgi! </b> L�tfen bo� b�rakmay�n�z.   [ <a href=""javascript:history.back()"">Geri</a> ]<br><br> ")
response.end  
end if

'--------------
'VT baglantisinin yapimasi:
Set Baglantim = CreateObject("ADODB.Connection") 
'VT'nin acilmasi:
Baglantim.Open ("DRIVER={Microsoft Access Driver (*.mdb)};DBQ="& Server.MapPath("Veritabanim.mdb"))
'Tablo nesnesinin olusturulmasi:
Set Tablom = server. CreateObject("ADODB.Recordset")
'Tablonun acilmasi:
Tablom.Open "BenimTablom1", Baglantim, 1, 3

'Tabloya veri eklemeye baslangic:
Tablom.AddNew 
'Tablodaki alanlara veri aktarma
 
 Tablom("ad1") =  request("adi")
 Tablom("soyad") =  request("soyadi")
 Tablom("email") =  request("emaili")
 Tablom("paralo") =  request("paraloi")
 Tablom("tarih")  = date
 Tablom("internet")  = request("is")

'aktarma islemi birince tablonun guncellenmesi:
Tablom.Update

'tablonun kapatilmasi:
  Tablom.close
  set Tablom= Nothing
'baglantinin kesilmesi:
  Baglantim.close
  set Baglantim= Nothing

%>
<p><h2><center>Kay�t Oldunuz...L�tfen �imdi Giri� Yap�n�z</center></h2></p>
<p><meta http-equiv="refresh" content="1;URL=index.asp"></p>