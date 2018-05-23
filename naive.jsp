<%@ include file="aheader.jsp"%>

<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*" import="CT.*" %>

<%
int y=0,n=0; double tot=0;
%>
<font size="" color="#cc0033">
<h2><font size="" color="#00ff33">Forming into Clustures</font></h2>
<table cellspacing="10" align="center" >
<tr><td><b>Sno&nbsp;&nbsp;&nbsp;<td><b>Age&nbsp;&nbsp;<td><b>Gender&nbsp;&nbsp;<td><b>Exercise&nbsp;&nbsp;<td><b>HeartRate&nbsp;&nbsp;<td><b>ChestPain&nbsp;&nbsp;<td><b>Cholesterol&nbsp;&nbsp;<td><b>BloodPressure&nbsp;&nbsp;<td><b>BloodSugar&nbsp;&nbsp;<td><b>Heart Attack
<% 
try{
	Connection con2 = databasecon.getconnection();
	Statement st5 = con2.createStatement();
	Statement st2 = con2.createStatement();
	st2.executeUpdate("delete from prediction");
	st2.executeUpdate("delete from calc");
	String sss1 = "select * from setdata";

	ResultSet rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		%><tr><td><H4><%=rs1.getString(1)%><td><H4><%=Cluster.age(rs1.getInt(2))%><td><H4><%=rs1.getString(3)%><td><H4><%=rs1.getString(4)%><td><H4><%=Cluster.heartrate(rs1.getInt(5))%><td><H4><%=Cluster.chestpain(rs1.getInt(6))%><td><H4><%=Cluster.cholesterol(rs1.getInt(7))%><td><H4><%=Cluster.bloodpressure(rs1.getInt(8))%><td><H4><%=Cluster.bloodsugar(rs1.getInt(9))%><td><H4><%=rs1.getString(10)%>
		
<%
	st2.executeUpdate("insert into prediction values('"+rs1.getString(1)+"','"+Cluster.age(rs1.getInt(2))+"', '"+rs1.getString(3)+"', '"+rs1.getString(4)+"', '"+Cluster.heartrate(rs1.getInt(5))+"', '"+Cluster.chestpain(rs1.getInt(6))+"', '"+Cluster.cholesterol(rs1.getInt(7))+"', '"+Cluster.bloodpressure(rs1.getInt(8))+"','"+Cluster.bloodsugar(rs1.getInt(9))+"','"+rs1.getString(10)+"')");
	}
rs1=st5.executeQuery("SELECT disease_ct, COUNT(*) FROM prediction WHERE disease_ct='Y' GROUP BY disease_ct");
if(rs1.next())
{
	y=rs1.getInt(2);
}
rs1=st5.executeQuery("SELECT disease_ct, COUNT(*) FROM prediction WHERE disease_ct='N' GROUP BY disease_ct");
if(rs1.next())
{
	n=rs1.getInt(2);
}
tot=y+n;

st5.executeUpdate("insert into calc values('"+y+"',"+y/tot+",'"+n+"',"+n/tot+","+tot+")");

}

catch(Exception e1)
{
out.println(e1);
}
%>
</table>
<form method="post" action="naive2.jsp">
	<input type="submit" value="Next">
</form>
<%@ include file="footer.jsp"%>