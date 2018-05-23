
<%
String pass=null,uid=null;

String a = request.getParameter("uid");
String b= request.getParameter("pwd");
String name=null,u=null,test2=null;



try
{
if(a.equals("user")&&b.equals("user"))
{
response.sendRedirect("u_home.jsp");
}
	
	else
	{
     	response.sendRedirect("index.jsp#services");
	}

	}
catch(Exception e1)
{
out.println(e1);
}

%>