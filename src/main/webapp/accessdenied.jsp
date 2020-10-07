<%@ page import ="org.springframework.security.core.*,org.springframework.security.core.context.*" %>
<!-- <center> -->
<h1>Access Denied!!</h1>

<h2>You do not have sufficient permissions to view this page</h2>
<br><a href="/">home</a>
<br>
<%
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();

	if (auth != null) {
		out.println("User '" + auth.getName() + "' attempted to access the protected URL");
		out.println("<br>Please contact the ADMIN for more information");
		//out.println("<br>auth : "+auth.isAuthenticated());
		//out.println("<br>Role : "+auth.getAuthorities());
		//out.println("<br>Error Page : "+request.getRequestURL());
	}
%>
<!-- </center> -->