<%@ page   import="databaseconnection.*" %>
<%@ page   import="java.sql.*" %>
<%@ include file="aheader.jsp"%>
                  <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null && id.equals("succ"))
                                                       {



			         out.println("<script type=text/javascript>alert(' added Successfully.. '); </script>");
                                                       }
													   else {



                                               }%>

<center>
<h1> Welcome Admin</h2></font></h1>
<br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<br><br>
<%@ include file="footer.jsp"%>