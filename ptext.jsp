<%@ page   import="databaseconnection.*" %>
<%@ page   import="java.sql.*" %>
<%@ include file="uheader.jsp"%>
                  <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null && id.equals("succ"))
                                                       {



			         out.println("<script type=text/javascript>alert(' added Successfully.. '); </script>");
                                                       }
													   else {



                                               }%>
<form method="post" action="ptext2.jsp">
	<h1>Enter Patient Details</h1>
<table width="">
<tr>
	<td><H4><H4>Age</td>
	<td><H4><input type="number" name="age" required  min="1" max="120" ></td>
</tr>
<tr>
	<td><H4>Gender</td>
	<td><H4><select name="gen">
		<option value="M" selected>Male
		<option value="F">Female
	</select></td>

</tr><td><H4>Exercise</td>
	<td><H4><select name="smoker">
		<option value="Y" selected>Yes
		<option value="N">No
	</select></td>`
</tr>
<td><H4>Heart Rate</td>
	<td><H4><input type="number" name="hr" required min="40" max="100" width="50"></td>
</tr>
<td><H4>Chest Pain</td>
	<td><H4><input type="number" name="cp" required min="0" max="9" width="50"></td>
</tr>
<td><H4>Cholesterol
</td>
	<td><H4><input type="number" name="ch" required min="100" max="400" width="50"></td>
</tr><td><H4>Blood Pressure
</td>
	<td><H4><input type="number" name="bp" required min="60" max="160" width="50"></td>
</tr><td><H4>Blood Sugar
</td>
	<td><H4><input type="number" name="bs" required min="80" max="300" size="30"></td>
</tr><tr><td><H4>
<input type="submit">
</form>
</table>
<%@ include file="footer.jsp"%>