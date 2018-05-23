  <%
    String mm=request.getParameter("id");
  if(mm!=null && mm.equalsIgnoreCase("exp"))
    {
     out.println("<script type=text/javascript>alert('Sorry, your session expired, login again '); </script>");
     }
%>

<%@ include file="header.jsp"%>
<font size="+1">
<h1><font align="center" size="" color="#ff3300">User Page</h1></font><br>

<form method="post" action="ulogin.jsp">
	<table align=left width="50%"><tr><td>
	<tr><td><div class="input-group input-group-lg">
				<span class="input-group-addon" id="sizing-addon1">UID</span>
				<input type="text" name ="uid" class="form-control" placeholder="Username" aria-describedby="sizing-addon1"></div>


		<tr><td><div class="input-group input-group-lg">
				<span class="input-group-addon" id="sizing-addon1">***</span>
				<input type="password" name ="pwd" class="form-control" placeholder="Password" aria-describedby="sizing-addon1"></div>

			<tr><td>		 <span class="input-group-btn">
							<button  class="btn btn-default" type="submit">Login</button>
						</span>
</div><td>

</tr>
</table>

					<table align=right ><tr><td><td>
	                  <%
                                                       String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>
											   </table>

</form>
				
											   <br><br><br><br>
											   

<br><br><br><br><br><br>

<%@ include file="footer.jsp"%>