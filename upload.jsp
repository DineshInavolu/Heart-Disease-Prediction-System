<%@ include file="aheader.jsp"%>

<%@ page   import="CT.XLToDB" %>


<%@ page  import="java.sql.*" import="databaseconnection.*" %>

<%

try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
st1.executeUpdate("delete from setdata")	;


}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>



<%
String file = request.getParameter("file");

try
{
	XLToDB.insertRecords(file);
	}
catch(Exception e1)
{
out.println(e1);
}

%>

<font size="" color="#cc0033">
<table cellpadding="10">
<tr>&nbsp;&nbsp;&nbsp;&nbsp;<th>Sno&nbsp;&nbsp;&nbsp;&nbsp;<th>Age&nbsp;&nbsp;&nbsp;&nbsp;<th>Gender&nbsp;&nbsp;&nbsp;&nbsp;<th>Exercise&nbsp;&nbsp;&nbsp;&nbsp;<th>Heart Rate&nbsp;&nbsp;&nbsp;&nbsp;<th>Chest Pain&nbsp;&nbsp;&nbsp;&nbsp;<th>Cholesterol&nbsp;&nbsp;&nbsp;&nbsp;<th>Blood pressure
&nbsp;&nbsp;&nbsp;&nbsp;<th>Blood Sugar&nbsp;&nbsp;&nbsp;&nbsp;<th>Heart Attack


<% 
int temp=0;
	try{

	Connection con2 = databasecon.getconnection();
	Statement st5 = con2.createStatement();
	String sss1 = "select * from setdata";

	ResultSet rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		++temp;
		%>
		<tr><TH><H4><%=rs1.getString(1)%><tH><H4><%=rs1.getString(2)%><tH><H4><%=rs1.getString(3)%><tH><H4><%=rs1.getString(4)%><tH><H4><H4><%=rs1.getString(5)%><TH><H4><%=rs1.getString(6)%><TH><H4><%=rs1.getString(7)%><tH><H4><%=rs1.getString(8)%><tH><H4><%=rs1.getString(9)%><tH><H4><%=rs1.getString(10)%>
		<%
	}}
catch(Exception e1)
{
out.println(e1);
}

%>
</table>
<a href="k-means0.jsp?no=<%=temp%>"><h1>K-Means</h1></a>


<br><br>
<%@ include file="footer.jsp"%>