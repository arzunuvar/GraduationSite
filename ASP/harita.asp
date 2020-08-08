<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="main.css" rel="stylesheet" type="text/css"/>
    <title></title>
</head>
	<%
dim px,py
px=1-1
py=1-1
if request.Form("reset") = "Başlat/Sıfırla" then
Session("x")=1-1
Session("y")=1-1
Session("cerceveY")=1-1
Session("cerceveG")=1-1
Session("x")=int(Request.Form("px"))
Session("y")=int(Request.Form("py"))
Session("cerceveY")=int(Request.Form("cy"))
Session("cerceveG")=int(Request.Form("cg"))
end if

px=Session("x")
py=Session("y")

if Session("cerceveY")<> "" and Session("cerceveG")<> "" and Session("cerceveY") >125 and Session("cerceveG") >125 then
Session("cerceveY")=Session("cerceveY")+request.Form("gen")
Session("cerceveG")=Session("cerceveG")+request.Form("gen")
end if
if Session("cerceveY") <125 and Session("cerceveY")<> ""  then 
Session("cerceveY")=0
Session("cerceveG")=0
end if
if request.Form("1")="<^" then 
Session("x")=int(px) + int(request.Form("hiz"))
Session("y")= int(py) + int(request.Form("hiz")) 
end if
if request.Form("2")="<" then 
Session("x")=int(px) + int(request.Form("hiz")) 
end if
if request.Form("3")="^" then 
Session("y")= int(py) + int(request.Form("hiz")) 
end if
if request.Form("4")="v" then 
Session("y")= int(py) - int(request.Form("hiz")) 
end if
if request.Form("5")="<v" then 
Session("x")=int(px) + int(request.Form("hiz"))
Session("y")= int(py) - int(request.Form("hiz")) 
end if
if request.Form("6")="v>" then 
Session("x")=int(px) - int(request.Form("hiz"))
Session("y")= int(py) - int(request.Form("hiz")) 
end if
if request.Form("7")="^>" then 
Session("x")=int(px) - int(request.Form("hiz"))
Session("y")= int(py) + int(request.Form("hiz")) 
end if
if request.Form("8")=">" then 
Session("x")=int(px) - int(request.Form("hiz")) 
end if
%>
<body>
    
        <div class="container">
           <div style="margin: 0 0 0 170px"><h2>Harita gözükmüyorsa Baslat/Sıfırlaya Basınız.</h2></div>
	<div style="margin: 40px 0 0 0">		
<div style="margin-left:auto; margin-right:auto; width:<%=Session("cerceveG")%>px; height:<%=Session("cerceveY")%>px; background-image:url(http://www.kgm.gov.tr/SiteCollectionImages/KGMimages/Haritalar/turistik.jpg); background-position:<%=Session("x")%>px <%=Session("y")%>px;">
		</div></div>
			
			<div style="position: fixed; width: 300px; height: 600px; right:0; top:150px;">
<form action="harita.asp" method="post">
	<div style="position: absolute; background-color: white; left: 80px; top: 120px">
<strong>Hareket Hızı: </strong><select name="hiz" size="1">
<option value="125">1x</option>
<option value="250">2x</option>
<option value="500">3x</option>
<option value="750">4x</option>
<option value="1000">5x</option></select>
</div>
<div style="position: absolute; background-color: white; left: 60px; top: 170px;"><input name="1" type="submit" value="<^"></div>
<div style="position: absolute; background-color: white; left: 60px; top: 240px;"><input name="2" type="submit" value="<"></div>
<div style="position: absolute; background-color: white; left: 130px; top: 170px;"><input name="3" type="submit" value="^"></div>
<div style="position: absolute; background-color: white; left: 130px; top: 310px;"><input name="4" type="submit" value="v"></div>
<div style="position: absolute; background-color: white; left: 60px; top: 310px;"><input name="5" type="submit" value="<v" ></div>
<div style="position: absolute; background-color: white; left: 200px; top: 310px;"><input name="6" type="submit" value="v>" ></div>
<div style="position: absolute; background-color: white; left: 200px; top: 170px;"><input name="7" type="submit" value="^>" ></div>
<div style="position: absolute; background-color: white; left: 200px; top: 240px;"><input name="8" type="submit" value=">" ></div>
<div style="position: absolute; background-color: white; left: 80px; top: 120px">
<select name="gen" size="1">
<option value="0">0</option>
<option value="-125">-5</option>
<option value="-100">-4</option>
<option value="-75">-3</option>
<option value="-50">-2</option>
<option value="-25">-1</option>
<option value="25">1</option>
<option value="50">2</option>
<option value="75">3</option>
<option value="125">4</option>
<option value="175">5</option>
<option value="175">6</option>
<option value="250">7</option>
<option value="400">8</option>
<option value="700">9</option>
<option value="1000">10</option></select>
<input type="submit" value="Küçült/Büyüt" ></div>
	
</form>
<form action="harita.asp" method="post">
<input type="hidden" name="cg" value="575">
<input type="hidden" name="cy" value="575">
<input type="hidden" name="px" value="-3225">
<input type="hidden" name="py" value="-600">
<div style="position: absolute; background-color: white; left: 100px; top: 240px;"><input name="reset" type="submit" value="Başlat/Sıfırla"></div>
</form>
<form action="http://www.kgm.gov.tr/SiteCollectionImages/KGMimages/Haritalar/turistik.jpg" method="post"
                target="_blank">
<div style="position: absolute; background-color: white; left: 100px; top: 500px;"><input name="showall" type="submit"  value="Tümümü Göster"></div></form>
			
			</div></div>
      
	
</body>

</html>