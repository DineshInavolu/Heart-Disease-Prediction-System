<%@ include file="aheader.jsp"%>

<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*" import="CT.*" %>

<%
int y=0,n=0; double tot=0;
%>
<h1>Frequency Table for Total data..</h1>
<font size="" color="#e73a54">

<table width="100%" cellspacing="10">
<tr><td><h3>Yes (Total)<td><h3>No (Total)<td><h3>Total<td><h3>Yes/Tot<td><h3>No/Tot
<% 
try{
	Connection con2 = databasecon.getconnection();
	Statement st2 = con2.createStatement();
	
	
	String sss1 = "SELECT * FROM calc ";
	ResultSet rs1=st2.executeQuery(sss1);
	while(rs1.next())
	{	

	%>
	<tr><td><h3><%=rs1.getString(1)%><td><h3><%=rs1.getString(3)%><td><h3><%=rs1.getString(5)%><td><h3><%=rs1.getString(2)%><td><h3><%=rs1.getString(4)%>
	<%
	}
}
	catch(Exception e){}
	
	%>

</table>

<h1>
Frequency Tables are Completed...
</h1>
<br><br><br><br><br>
<%@ include file="footer.jsp"%>