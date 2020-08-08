<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<% 

dim id, sifre

Response.Buffer=True
Response.Expires = -100

login2 = true


If login2 = true Then
    Session("UserLoggedIn") = "false"
    ShowLogin
Else
    ShowWrong
End If




Sub ShowLogin 
%>
<p> Başarıyla çıkış yaptınız...</p>
	<p><meta http-equiv="refresh" content="1;URL=index.asp"></p>
	
<% 
End Sub
%>

<% Sub ShowWrong
%><font face=verdana size=2>Çıkış yapamadın..</font></p>

	<%
end sub %>











