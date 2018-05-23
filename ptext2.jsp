<%@ page   import="databaseconnection.*" %>
<%@ page   import="CT.*" %>
<%@ page   import="java.sql.*" %>
<%@ include file="uheader.jsp"%>
<h1>Forming to clustures..</h1>
<table width="">
<tr>
<%
String age=Cluster.age(Integer.parseInt(request.getParameter("age")));
String gen=request.getParameter("gen");

String smoker=request.getParameter("smoker");
String hr=Cluster.heartrate(Integer.parseInt(request.getParameter("hr")));
String cp=Cluster.chestpain(Integer.parseInt(request.getParameter("cp")));

String ch=Cluster.cholesterol(Integer.parseInt(request.getParameter("ch")));
String bp=Cluster.bloodpressure(Integer.parseInt(request.getParameter("bp")));
String bs=Cluster.bloodsugar(Integer.parseInt(request.getParameter("bs")));


%>
<form method="post" action="ptext3.jsp">
	<table width="">
<tr>
	<td><H4><H4>Age</td>
	<td><H4><input type="text" readonly name="age" required  value="<%=age%>"></td>
</tr>
<tr>
	<td><H4>Gender</td>
	<td><H4><input type="text" readonly name="gen" required   value="<%=gen%>">
	</select></td>

</tr><td><H4>Smoker</td>
	<td><H4><input type="text" readonly name="smoker" required   value="<%=smoker%>">
	
</tr>
<td><H4>Heart Rate</td>
	<td><H4><input type="text" readonly name="hr" required  width="50" value="<%=hr%>"></td>
</tr>
<td><H4>Chest Pain</td>
	<td><H4><input type="text" readonly name="cp" value="<%=cp%>" width="50" ></td>
</tr>
<td><H4>Cholesterol
</td>
	<td><H4><input type="text" readonly name="ch" required value="<%=ch%>" width="50"></td>
</tr><td><H4>Blood Pressure
</td>
	<td><H4><input type="text" readonly name="bp" required value="<%=bp%>" width="50"></td>
</tr><td><H4>Blood Sugar
</td>
	<td><H4><input type="text" readonly name="bs" required value="<%=bs%>" ></td>
</tr><tr><td><H4>
<input type="submit">
</form>
</table>


<%@ include file="footer.jsp"%>