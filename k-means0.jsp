<%@ include file="aheader.jsp"%>

<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*" import="CT.*" %>

<%

int tot=Integer.parseInt(request.getParameter("no"));

%>
<br><br><br><br><br>
<form method="post" action="k-means.jsp">
	<input type="hidden" name="no" value="<%=tot%>">
	<font size="+2" color=""><b>No. Clustures Expecting </font><input type="number" name="clu" max=5 min=1 required >
<br><input type="submit">
</form>
<%@ include file="footer.jsp"%>