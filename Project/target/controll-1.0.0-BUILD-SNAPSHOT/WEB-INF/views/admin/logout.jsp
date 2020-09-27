<%
	session.invalidate();
	response.sendRedirect("/admin/login");
%>