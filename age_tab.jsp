<%@ include file="aheader.jsp"%>

<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*" import="CT.*" %>

<%
int y=0,n=0; double tot=0;
%>
<h1>Frequency Table for age data..</h1>
<font size="" color="#ec3333">

<table width="60%" cellspacing="10">
<tr><td><h3>Age Category<td><h3>Yes Score<td><h3>No Score
<% 
try{
	Connection con2 = databasecon.getconnection();
	Statement st2 = con2.createStatement();
	
	
	String sss1 = "SELECT * FROM `age_tab` ";
	ResultSet rs1=st2.executeQuery(sss1);
	while(rs1.next())
	{	

	%>
	<tr><td><h6><%=rs1.getString(1)%><td><h6><%=rs1.getString(2)%><td><h6><%=rs1.getString(3)%>
	<%
	}
}
	catch(Exception e){}
	
	%>

</table><br><br>
<form method="post" action="gender_tab.jsp">
	<input type="submit" value="For Gender Data">
</form>
<br><br><br><br><br>
<%@ include file="footer.jsp"%>