<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="usebean2p.*"%>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>USE BEAN2</title>
</head>

<body>
	<!--  Formdan gelen bilgilere(Parametlere) servlet sinifi icinde req.getParameter("..") üzerinden ulasabiliyorduk 
	JSPde de implicit objeler yardimi ile ulasabiliriz.-->
	<%=request.getParameter("ad")%>
	<%=request.getParameter("soyad")%>
	<%=request.getParameter("yil")%>
	
	<!-- Ya da use bean kullanarak da ulasabiliriz. -->
	<!-- scope'lar icerisinde kisi1 yok. O zaman yeni bir nesne olustur ve nesnelerin degerlerini, setPropery ile al -->
	<jsp:useBean id="kisi1" class="usebean2p.ModelKisi" scope="page">
	<!--<jsp:setProperty name="kisi1" property="ad" value='<%=request.getParameter("ad")%>' />
		<jsp:setProperty name="kisi1" property="soyad" value='<%=request.getParameter("soyad")%>' />
		<jsp:setProperty name="kisi1" property="yil" value='<%=request.getParameter("yil")%>' /> -->
			
	<!--<jsp:setProperty name="kisi1" property="ad" param = "ad"/>
		<jsp:setProperty name="kisi1" property="soyad" param = "soyad"/>
		<jsp:setProperty name="kisi1" property="yil" param = "yil"/> -->
		
		<!-- Formdaki name degerleri ile model sinifimdaki name degerleri ayni old icin value veya param kullanmadik. Otomatik olarak use bean eslestirdi -->
		<jsp:setProperty name="kisi1" property="ad"/>
		<jsp:setProperty name="kisi1" property="soyad"/>
		<jsp:setProperty name="kisi1" property="yil"/>
		
		<!-- En Kisa Yol 
		<jsp:setProperty name="kisi1" property="*" /> -->
	</jsp:useBean>

	<jsp:getProperty property="ad" name="kisi1" />
	<jsp:getProperty property="soyad" name="kisi1" />
	<jsp:getProperty property="yil" name="kisi1" />
	
</body>
</html>