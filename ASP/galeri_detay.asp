<style>
    .resim{
        margin: 0 auto;
        width: 400px;
        height: 300px;
        margin-top: 10px;
    }
    .forum h4{
    padding: 8px;
    margin-left:-1px;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; 
    color: #000;
    opacity: 0.7;
    margin-bottom: 4px;
    }
    .line{
        height:1px;
    width: 100%;
    margin: 0 auto;
    background: #dedede;
    }
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
    .tdicerik{
        font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; 
    color: #000;
    opacity: 0.7;
    font-size:14px; 
    }
    .textarea{
        margin-top: 10px;
        width: 100%;
        height: 250px;
        border: 1px solid #dedede;
    }
    .btn{
        background: #5cb85c;
    width: 20%;
    height: 30px;
    border: 1px solid #4cae4c;
    color: #fff;
    opacity: 5;
    margin-top: 5px;
    }
    .btn:hover{
           cursor: pointer;
    }
</style>

<div class="galeriDetay">
        <div class="resim">
            <img src="images/mezuniyet.jpg" width="370" height="250">
        </div>

        <div class="forum">
            
           
	<%
Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open("DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath("Veritabanim.mdb"))
ssql="select * from foto1"
Set oRS = oConn.Execute(sSQL)
%>
		<table border="1" width="85%" cellspacing="0" cellpadding="0" bordercolor="#000000" style="border-collapse: collapse; text-align:center">
  <tr>
	
    <td width="36%" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0" >
    <b><font face="Verdana">Tarih</font></b></td>
    <td width="36%" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0" >
    <b><font face="Verdana">Ad</font></b></td>
	    <td width="36%" style="border-style:solid; border-width:1; " bgcolor="#C0C0C0" >
    <b><font face="Verdana">Mesaj</font></b></td>
    
  </tr>
			<%
Do While NOT oRS.EOF 
%>
	<tr>
		<td width="36%" style="border-style:solid; border-width:1; " ><font face="Tahoma" size="2" ><%=oRS("trh")%></font>&nbsp;</td>
			<td width="36%" style="border-style:solid; border-width:1; " ><font face="Tahoma" size="2" ><%=oRS("ad")%></font>&nbsp;</td>
	<td width="36%" style="border-style:solid; border-width:1; " ><font face="Tahoma" size="2" ><%=oRS("yorum")%></font>&nbsp;</td>
			

	
	

<%	
	oRS.MoveNext
Loop
	
			
oConn.Close
Set oRS = Nothing
Set oConn = Nothing
%>
	</table>
          </center>
		

				<div class="kutu">
	<form action="verigirisifoto.asp" method="post">
		
	 

		<textarea style="width: 300px; height: 100px" name="MetinAlani" id="MetinAlani" COLS="30" ROWS="3" WRAP="VIRTUAL">
		
		
		</textarea>
		<input type="submit" value="Gönder">&nbsp;&nbsp;
	</form>
              </div>        
        </div>

</div>
