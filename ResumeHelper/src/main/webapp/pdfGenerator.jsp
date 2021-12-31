<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script type="text/javascript">
			$("#btnPrint").live("click",function(){
				var divcontents = $("#needToPrint").html();
				var printWindow = window.open('','','height=400,width=800');
				printWindow.document.write('<html><head></head><body>');
				printWindow.document.write(divcontents);
				printWindow.document.write('</body></html>');
				printWindow.document.close();
				printWindow.print();
			});
		</script>
	</head>
<body>
		<div id="needToPrint">
			<h1>
				Name:<%=request.getParameter("name")%></h1>
			<br>
			<br>
			<h1>
				Phno:<%=request.getParameter("phno")%></h1>
			<br>
			<br>
			<h1>
				Address:<%=request.getParameter("addr")%></h1>
			<br>
			<br>
		</div>
	<input type="submit" value="Download" id="btnPrint">
</body>
</html>