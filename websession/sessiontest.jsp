<%@ page contentType="text/html;%>
<%
	Integer i = (Integer) session.getAttribute("number");
	
	if (i == null)
		i = new Integer(1);
	else
		i = new Integer(i.intValue() + 1);
		
	session.setAttribute("number", i);
	
	System.out.println("### test_session.jsp ---> Hit : " + session.getAttribute("number"));

%>
<html>

<body onload="setTimeout('location.reload()', 600)">
Hit ---: <%= i %>
</body>
</html>