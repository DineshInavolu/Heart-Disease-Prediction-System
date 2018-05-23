<%@ page   import="databaseconnection.*" %>
<%@ page   import="CT.*" %>
<%@ page   import="java.sql.*" %>
<%@ include file="uheader.jsp"%>
<h4><b>
<font size="" color="#6d97c5">

<table width="90%" cellspacing="10">
<tr><th>Type<th>Set<th>Yes Score<th>No Score
<tr><th><br>

<%
String age=request.getParameter("age");
String gen=request.getParameter("gen");
String smoker=request.getParameter("smoker");
String hr=request.getParameter("hr");
String cp=request.getParameter("cp");
String ch=request.getParameter("ch");
String bp=request.getParameter("bp");
String bs=request.getParameter("bs");
try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
ResultSet rs=st1.executeQuery("select * from calc");
double y=0.0,tot=0.0,n=0.0,r1=0.0,r2=0.0;
while(rs.next()){
y=rs.getDouble(1);
n=rs.getDouble(3);tot=rs.getDouble(5);
}



double y_age=0.0,  n_age=0.0,   y_gen=0.0, n_gen=0.0,  y_smoker=0.0, n_smoker=0.0,  y_hr=0.0, n_hr=0.0,  y_cp=0.0, n_cp=0.0, y_ch=0.0, n_ch=0.0,  y_bp=0.0, n_bp=0.0, y_bs=0.0, n_bs=0.0;	



rs=st1.executeQuery("select * from age_tab where age_ct='"+age+"' ");
while(rs.next())
{
	y_age=rs.getDouble(2)+1.0;	n_age=rs.getDouble(3)+1.0;

	%>
	<tr><td>Age<td><%=age%><td><%=y_age%><td><%=n_age%>
	<%
}
//out.println("select * from gen_tab where gen_ct='"+gen+"' ");
rs=st1.executeQuery("select * from gen_tab where gen_ct='"+gen+"' ");
while(rs.next())
{
	y_gen=(rs.getDouble(2)+1.0);	n_gen=rs.getDouble(3)+1.0;
	
	%>
	<tr><td>Gender<td><%=gen%><td><%=y_gen%><td><%=n_gen%>
	<%
}

rs=st1.executeQuery("select * from smoker_tab where smoker_ct='"+smoker+"' ");
while(rs.next())
{
	y_smoker=rs.getDouble(2)+1.0;	n_smoker=rs.getDouble(3)+1.0;
	%>
	<tr><td>Exercise<td><%=smoker%><td><%=y_smoker%><td><%=n_smoker%>
	<%

}

rs=st1.executeQuery("select * from heartrate_tab where heartrate_ct='"+hr+"' ");
while(rs.next())
{
	y_hr=rs.getDouble(2)+1.0;	n_hr=rs.getDouble(3)+1.0;
	%>
	<tr><td>Heart Rate<td><%=hr%><td><%=y_hr%><td><%=n_hr%>
	<%

}

rs=st1.executeQuery("select * from chestpain_tab where chestpain_ct='"+cp+"' ");
while(rs.next())
{
	y_cp=rs.getDouble(2)+1.0;	n_cp=rs.getDouble(3)+1.0;
	%>
	<tr><td>ChestPain<td><%=cp%><td><%=y_cp%><td><%=n_cp%>
	<%

}

rs=st1.executeQuery("select * from cholesterol_tab where cholesterol_ct='"+ch+"' ");
while(rs.next())
{
	y_ch=rs.getDouble(2)+1.0;	n_ch=rs.getDouble(3)+1.0;

	%>
	<tr><td>Cholesterol<td><%=ch%><td><%=y_ch%><td><%=n_ch%>
	<%

}

rs=st1.executeQuery("select * from bp_tab where bp_ct='"+bp+"' ");
while(rs.next())
{
	y_bp=rs.getDouble(2)+1.0;	n_bp=rs.getDouble(3)+1.0;
	%>
	<tr><td>Bloodpressure<td><%=bp%><td><%=y_bp%><td><%=n_bp%>
	<%

}

rs=st1.executeQuery("select * from bs_tab where bs_ct='"+bs+"' ");
while(rs.next())
{
	y_bs=rs.getDouble(2)+1.0;	n_bs=rs.getDouble(3)+1.0;
	%>
	<tr><td>BloodSugar<td><%=bs%><td><%=y_bs%><td><%=n_bs%>
	<%

}
%>
</table><br><br><br>
</font>

<%
out.println("<font color=#53d305 size=3><u>p(yes)</u>=(Yes_Score_of_age/Tot of Yes Score)*(Yes_Score_of_gen/Tot of Yes Score)*(Yes_Score_of_smoker/Tot of Yes Score)*(Yes_Score_of_hr/Tot of Yes Score)*(Yes_Score_of_cp/Tot of Yes Score)*(Yes_Score_of_ch/Tot of Yes Score)*(Yes_Score_of_bp/Tot of Yes Score)*(Yes_Score_of_bs/Tot of Yes Score)*(Yes Tot/Total)</h5></font>");
double py=(y_age/y)*(y_gen/y)*(y_smoker/y)*(y_hr/y)*(y_cp/y)*(y_ch/y)*(y_bp/y)*(y_bs/y)*(y/tot);


double  pn=(n_age/n)*(n_gen/n)*(n_smoker/n)*(n_hr/n)*(n_cp/n)*(n_ch/n)*(n_bp/n)*(n_bs/n)*(n/tot);
out.println("p(yes)="+py+"<br><br>");

out.println("<font color=#53d305 size=3><u>p(no)</u>=(No_Score_of_age/Tot of No Score)*(No_Score_of_gen/Tot of No Score)*(No_Score_of_smoker/Tot of No Score)*(No_Score_of_hr/Tot of No Score)*(No_Score_of_cp/Tot of No Score)*(No_Score_of_ch/Tot of No Score)*(No_Score_of_bp/Tot of No Score)*(No_Score_of_bs/Tot of No Score)*(Tot No Score/Total)</h5></font>");


out.println("p(no)="+pn+"<br><br>");
out.println("p(yes)+p(no)="+(py+pn)+"<br><br>");
out.println("p(yes)/(p(yes)+p(no))="+py/(py+pn)+"<br><br>");
r1=py/(py+pn);
r2=pn/(py+pn);
out.println("p(no)/(p(yes)+p(no))="+pn/(py+pn)+"<br><br>");
if(r1>r2){
out.println("<h5><font color=Red>Result: Positive<br>Patient might suffer from Heart attack</h5>");
}else
	{
out.println("<h5><font color=Green>Result: Negative<br>Patient might not suffer from Heart attack</h5>");
}
}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
	
<%@ include file="footer.jsp"%>