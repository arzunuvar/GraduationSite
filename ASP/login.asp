<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<% 

dim kullaniciad, paralo

Response.Buffer=True
Response.Expires = -100

login = Request.Form("login")
If login = "login_again" Then
    Session("UserLoggedIn") = ""
    ShowLogin
Else
    If Session("UserLoggedIn") = "true" Then
        AlreadyLoggedIn
    Else 
        If login = "true" Then
            CheckLogin
        Else
            ShowLogin
        End If
    End If
End If

Sub ShowLogin 
%>
<a href="index.asp">
<% 
End Sub

Sub AlreadyLoggedIn
%>
<font face=verdana size=2>Zaten giris yapmissiniz..</font>
	<p><meta http-equiv="refresh" content="1;URL=index..asp"></p>
	
<% End Sub %>

<% Sub CheckLogin


kullaniciad=request.form("adin")
paralo=request.form("paraloi")

Veritabani_Yol=SERVER.MAPPATH("Veritabanim.mdb")
Set Baglanti=Server.CreateObject("Adodb.Connection")
Baglanti.Open "DBQ=" & Veritabani_Yol &   ";Driver={Microsoft Access Driver (*.mdb)}"
Set Rs=Server.CreateObject("Adodb.recordset")


'____________________________________________________________________________

 
		
		Sorgu="select * from BenimTablom1 where ad1 = '" & request.form("adin") & "' and paralo = '" & Request.form("paraloi") & "'"

		Rs.Open Sorgu, Baglanti, 1, 3
		If RS.BOF And RS.EOF Then
		   Response.Write "Bilgiler onaylanmadi. Yanlış Kullanıcı Adı Veya Şifre."%>
                    <p><meta http-equiv="refresh" content="1;URL=index.asp"></p>
																																				   <%
		Else
	        Session("UserLoggedIn") = "true"
																																				   Session("uname") = request.form("adin")
	     	Response.Write "Bilgiler onaylandi.Giriş Başarılı..."%>
                    <p><meta http-equiv="refresh" content="1;URL=index..asp"></p>
																																				   <%
																																	
                
																															



		End If
	
end sub %>










