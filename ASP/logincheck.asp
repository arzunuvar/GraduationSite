<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<% 

dim id, sifre

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
        Loggedout
    End If
End If

Sub ShowLogin 
%>
<a href="index.html">
<% 
End Sub

Sub AlreadyLoggedIn
%>
<p><meta http-equiv="refresh" content="0;URL=index..asp"></p>
    
<% End Sub %>

<% Sub Loggedout
%>
<font face=verdana size=2><center><h2>Lütfen Giriş Yapınız...</h2><center></font>
<p><meta http-equiv="refresh" content="1;URL=index.asp"></p>
	<%
end sub %>










