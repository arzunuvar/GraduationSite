<style>
      table{
        border: 1px solid #dedede;
        padding: 5px;
        margin-top: 5px;
    }
    .tdBas{
        font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; 
    color: #000;
    opacity: 0.7;
    }
    .line{
        height:1px;
    width: 100%;
    margin: 0 auto;
    background: #dedede;
    }
</style>

<div class="kimNerede">
<%


'Option Explicit
Response.Expires = -1000


'______________veritabanýndaki kayýt sayýsý bulunuyor:
Dim cnnDB, Rs, mySQL, ks 'ks: veritabanýndaki toplam kayýt sayýsý
'-- cnnDB isimli veritabany ba?lanty nesnesi olu?turuldu.   
Set cnnDB=Server.CreateObject("ADODB.Connection" ) 
'-- Rs isimli recordSet nesnesi olu?turuldu.   
Set Rs =Server.CreateObject("ADODB.Recordset" ) 
'-- ODBC'den MyDSN isimli veritabany açyldy.   
cnnDB.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("Veritabanim.mdb"))
'-- SQL olu?turuldu.   
mySQL="Select * FROM BenimTablom1;" 
'-- SQL ba?lanty nesnesi üzerinde çaly?tyryldy, sonucu Rs recordSet nesnesine aktaryldy.   
Rs.Open mySQL,cnnDB,3 
'-- RS'de bulunan kayytlaryn sayysy kayitsayisi de?i?kenine atandy.   
ks=Rs.recordcount 
'-- Kayyt sayysy ekrana yazdyryldy.   
'Response.Write ks 
'-- RecordSet kapatyldy.   
Rs.Close 
'-- Ba?lanty kapatyldy.   
cnnDB.Close 
'-- Ba?lanty bellekten silindi.   
Set cnnDB=Nothing 

sonsayfa=(int((ks-1)/2))+1 'her sayfada 500 kayýt olacak

'__________


Dim oConn
Dim oRS
Dim sonsayfa
Dim sSQL
Dim sql
Dim nosu
dim ada
dim cekbaks(50)
dim kod(50)
Dim i

By=Request.QueryString("By")

If Request.QueryString("Sayfa") = "" Then
	Sayfa = 1
Else
	sayfa = cInt(Request.QueryString("Sayfa"))
end if


Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("Veritabanim.mdb"))


if By="Kime" or By="" then
ssql="select * from BenimTablom1 ORDER BY ad1;"
elseif By="ad1" then
ssql="select * from BenimTablom1 ORDER BY soyad;"
elseif By="soyad" then
ssql="select * from BenimTablom1 ORDER BY internet;"
elseif By="internet" then
ssql="select * from BenimTablom1 ORDER BY tarih;"
   elseif By="tarih" then
ssql="select * from BenimTablom1 ORDER BY email;"
elseif By="email" then

end if


Set oRS = oConn.Execute(sSQL)

i=0
%>


   <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9">
	<body bgcolor="#F7F7F7">

	

<p align="center">
<font face="Verdana"><b><font face="Tahoma" size="4"><br>
</font>

<p align="center"><b><font face="Arial">


<p align="center">


<font face="Tahoma"><b>
</b></font><br>
</font>
<br>
<br>
<br>

<%
'SAYFALANDIRMA OKLARI______________________________________________________
if sayfa>1 then%>
<b><font face="Verdana">|< <a href="kim_nerede.asp?sayfa=<%=1%>&by=<%=by%>">Ýlk Sayfa</a></b>

<font face="Verdana">&nbsp;</font>

<b><font face="Verdana">< <a href="kim_nerede.asp?sayfa=<%=sayfa - 1%>&by=<%=by%>">Önceki Sayfa</a></b>


<%end if%>
<font face="Verdana">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=sayfa%> / <%=sonsayfa%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>

<%

if sonsayfa<>sayfa  then%>
<b><font face="Verdana"><a href="kim_nerede.asp?sayfa=<%=sayfa + 1%>&by=<%=by%>">Sonraki Sayfa</a> ></font></b>

<font face="Verdana">&nbsp;</font>

<b><font face="Verdana"><a href="kim_nerede.asp?sayfa=<%=sonsayfa%>&by=<%=by%>">En Son Sayfa</a> >|</font></b>
<%end if 
'_____________________________________________________________________________
%>

<br>
&nbsp;<div align="center">
  <center>
	

<table border="1" width="741" cellspacing="0" cellpadding="0" bordercolor="#000000" style="border-collapse: collapse; text-align:center">

<tr>

    <td width="217" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0" >
    <b><font face="Verdana"><a href="kim nerede.asp?By=ad1">AD</a></font></b></td>
    <td width="132" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0" >
    <b><font face="Verdana"><a href="kim nerede.asp?By=soyad">SOYAD</a></font></b></td>
    <td width="149" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0" >
    <b><font face="Verdana"><a href="kim nerede.asp?By=internet">ÞEHÝR</a></font></b></td>
   <td width="166" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0" >
    <b><font face="Verdana"><a href="kim nerede.asp?By=tarih">E-MAIL</a></font></b></td>
    <td width="166" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0" >
    <b><font face="Verdana"><a href="kim nerede.asp?By=tarih">TARIH</a></font></b></td>
    <td width="70" style="border-style:solid; border-width:1; " colspan="2" bgcolor="#C0C0C0" >
  </tr>

<%
Do While NOT oRS.EOF 
i=i+1
if i >= ((sayfa-1)*2)+1 and i <= sayfa*2 then
%>

  <tr>

    <td width="217" style="border-style:solid; border-width:1; " ><font face="Tahoma" size="2" ><%=oRS("ad1")%></font>&nbsp;</td>
    <td width="217" style="border-style:solid; border-width:1; " ><font face="Tahoma" size="2" ><%=oRS("soyad")%></font>&nbsp;</td>
    <td width="132" style="border-style:solid; border-width:1; " ><font face="Tahoma" size="2" ><%=oRS("internet")%></font>&nbsp;</td>
	<td width="217" style="border-style:solid; border-width:1; " ><font face="Tahoma" size="2" ><%=oRS("email")%></font>&nbsp;</td>
    <td width="149" style="border-style:solid; border-width:1; " ><font face="Tahoma" size="2" ><%=oRS("tarih")%>	
	</font>&nbsp;</td>
	
    </td>
   </font>&nbsp;</td>
  </tr>

<%	
end if
	oRS.MoveNext

Loop

%>

</table>

          </center>
</div>

          </center></div>
        



    </font>


    </font></font></font>


<%

oConn.Close
Set oRS = Nothing
Set oConn = Nothing



%>

</div>
</div>