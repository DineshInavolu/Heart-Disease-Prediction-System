<%@ include file="aheader.jsp"%>

<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*" import="CT.*" %>

<%

int tot=Integer.parseInt(request.getParameter("no"));
System.out.println("=="+tot);
int clu=Integer.parseInt(request.getParameter("clu"));

%>
<font size="" color="#cc0033">
<h2><font size="" color="#f3fbfc">K-Means Clusturing Results</font></h2>
<table cellspacing="20" align="center">
	<tr><td><H4>Gender<td><H4>M&nbsp;&nbsp;&nbsp;F 
	<tr><td><H4>Exercise<td><H4>Y &nbsp;&nbsp;&nbsp; N

<% 
int temp[]=new int[tot];
Vector<String> v=null;
try{
int i1=0;
	Connection con2 = databasecon.getconnection();
	Statement st5 = con2.createStatement();
	String sss1 = "select * from setdata";

	ResultSet rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		
		temp[i1]=rs1.getInt(2);
		++i1;
	}
		v=k_means.main(temp,i1,clu);
	
	%>
		<tr><td><H4>Age<td><H4><%for(String s: v){out.println("["+s+"]<br>");}	%>
<%
i1=0;
rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		System.out.println("dddd");	
		temp[i1]=rs1.getInt(5);
		++i1;

	}
		v=k_means.main(temp,i1,clu);
	
%>
		<tr><td><H4>Heart Rate<td><H4><%for(String s: v){out.println("["+s+"]<br>");}	%>
<%
i1=0;
rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		System.out.println("dddd");	
		temp[i1]=rs1.getInt(6);
		++i1;

	}
		v=k_means.main(temp,i1,clu);
	
%>
		<tr><td><H4>Chest Pain<td><H4><%for(String s: v){out.println("["+s+"]<br>");}	%>
	<%
i1=0;
rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		temp[i1]=rs1.getInt(7);
		++i1;

	}
		v=k_means.main(temp,i1,clu);
	
%>
		<tr><td><H4>Cholesterol<td><H4><%for(String s: v){out.println("["+s+"]<br>");}	%>

	<%
i1=0;
rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		temp[i1]=rs1.getInt(8);
		++i1;

		}
		v=k_means.main(temp,i1,clu);
	
%>
		<tr><td><H4>Blood Pressure<td><H4><%for(String s: v){out.println("["+s+"]<br>");}	%>

	<%
i1=0;
rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		temp[i1]=rs1.getInt(9);
		++i1;

	}
		v=k_means.main(temp,i1,clu);
	
%>
		<tr><td><H4>Blood Sugar<td><H4><%for(String s: v){out.println("["+s+"]<br>");}	%>

		<tr><td><H4>Heart Attack<td><H4>Y &nbsp;&nbsp;&nbsp; N

	
	
	<%
System.out.println(v.size());
}
catch(Exception e1)
{
out.println(e1);
}
%>
</table>
<form method="post" action="naive.jsp">
	<input type="submit" value="Naive Bayes">
</form>
<%@ include file="footer.jsp"%>