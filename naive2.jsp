<%@ include file="aheader.jsp"%>

<%@ page  import="java.sql.*" import="java.util.*" import="databaseconnection.*" import="CT.*" %>

<%
int y=0,n=0; double tot=0;
%>
<font size="" color="#cc0033">
<% 
try{
	Connection con2 = databasecon.getconnection();
	Statement st5 = con2.createStatement();
	Statement st2 = con2.createStatement();
	
	
	String sss1 = "SELECT age_ct, COUNT(disease_ct) FROM `prediction`  WHERE disease_ct='Y' GROUP BY age_ct ";
	ResultSet rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		st2.executeUpdate("update age_tab set y_ct="+rs1.getInt(2)+" where age_ct='"+rs1.getString(1)+"' ");
	}
	sss1 = "SELECT age_ct, COUNT(disease_ct) FROM `prediction`  WHERE disease_ct='N' GROUP BY age_ct ";
	rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		st2.executeUpdate("update age_tab set n_ct="+rs1.getInt(2)+" where age_ct='"+rs1.getString(1)+"' ");
	}
//===================

sss1 = "SELECT gen_ct, COUNT(disease_ct) FROM `prediction`  WHERE disease_ct='Y' GROUP BY gen_ct ";
	rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		st2.executeUpdate("update gen_tab set y_ct="+rs1.getInt(2)+" where gen_ct='"+rs1.getString(1)+"' ");
	}

sss1 = "SELECT gen_ct, COUNT(disease_ct) FROM `prediction`  WHERE disease_ct='N' GROUP BY gen_ct ";
	rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		st2.executeUpdate("update gen_tab set n_ct="+rs1.getInt(2)+" where gen_ct='"+rs1.getString(1)+"' ");
	}

//========================

sss1 = "SELECT smoking_ct, COUNT(disease_ct) FROM `prediction`  WHERE disease_ct='Y' GROUP BY smoking_ct ";
	rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		st2.executeUpdate("update smoker_tab set y_ct="+rs1.getInt(2)+" where smoker_ct='"+rs1.getString(1)+"' ");
	}

sss1 = "SELECT smoking_ct, COUNT(disease_ct) FROM `prediction`  WHERE disease_ct='N' GROUP BY smoking_ct ";
	rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		st2.executeUpdate("update smoker_tab set n_ct="+rs1.getInt(2)+" where smoker_ct='"+rs1.getString(1)+"' ");
	}
//========================

//========================

sss1 = "SELECT heart_rate_ct, COUNT(disease_ct) FROM `prediction`  WHERE disease_ct='Y' GROUP BY heart_rate_ct ";
	rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		st2.executeUpdate("update heartrate_tab set y_ct="+rs1.getInt(2)+" where heartrate_ct='"+rs1.getString(1)+"' ");
	}

sss1 = "SELECT heart_rate_ct, COUNT(disease_ct) FROM  prediction WHERE disease_ct='N' GROUP BY heart_rate_ct ";
	rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		st2.executeUpdate("update heartrate_tab set n_ct="+rs1.getInt(2)+" where heartrate_ct='"+rs1.getString(1)+"' ");
	}
//========================

sss1 = "SELECT chest_pain_ct, COUNT(disease_ct) FROM `prediction`  WHERE disease_ct='Y' GROUP BY chest_pain_ct ";
	rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		st2.executeUpdate("update chestpain_tab set y_ct="+rs1.getInt(2)+" where chestpain_ct='"+rs1.getString(1)+"' ");
	}

sss1 = "SELECT chest_pain_ct, COUNT(disease_ct) FROM `prediction`  WHERE disease_ct='N' GROUP BY chest_pain_ct ";
	rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		st2.executeUpdate("update chestpain_tab set n_ct="+rs1.getInt(2)+" where chestpain_ct='"+rs1.getString(1)+"' ");
	}
//========================

sss1 = "SELECT cholesterol_ct, COUNT(disease_ct) FROM `prediction`  WHERE disease_ct='Y' GROUP BY cholesterol_ct ";
	rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		st2.executeUpdate("update cholesterol_tab set y_ct="+rs1.getInt(2)+" where cholesterol_ct='"+rs1.getString(1)+"' ");
	}

sss1 = "SELECT cholesterol_ct, COUNT(disease_ct) FROM `prediction`  WHERE disease_ct='N' GROUP BY cholesterol_ct ";
	rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		st2.executeUpdate("update cholesterol_tab set n_ct="+rs1.getInt(2)+" where cholesterol_ct='"+rs1.getString(1)+"' ");
	}

//========================

sss1 = "SELECT bloodpressure_ct, COUNT(disease_ct) FROM `prediction`  WHERE disease_ct='Y' GROUP BY bloodpressure_ct ";
	rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		st2.executeUpdate("update bp_tab set y_ct="+rs1.getInt(2)+" where bp_ct='"+rs1.getString(1)+"' ");
	}

sss1 = "SELECT bloodpressure_ct, COUNT(disease_ct) FROM `prediction`  WHERE disease_ct='N' GROUP BY bloodpressure_ct ";
	rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		st2.executeUpdate("update bp_tab set n_ct="+rs1.getInt(2)+" where bp_ct='"+rs1.getString(1)+"' ");
	}
//====================================

sss1 = "SELECT bloodsugar_ct, COUNT(disease_ct) FROM `prediction`  WHERE disease_ct='Y' GROUP BY bloodsugar_ct ";
	rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		st2.executeUpdate("update bs_tab set y_ct="+rs1.getInt(2)+" where bs_ct='"+rs1.getString(1)+"' ");
	}

sss1 = "SELECT bloodsugar_ct, COUNT(disease_ct) FROM `prediction`  WHERE disease_ct='N' GROUP BY bloodsugar_ct ";
	rs1=st5.executeQuery(sss1);
	while(rs1.next())
	{	
		st2.executeUpdate("update bs_tab set n_ct="+rs1.getInt(2)+" where bs_ct='"+rs1.getString(1)+"' ");
	}
}
catch(Exception e1)
{
out.println(e1);
}
response.sendRedirect("age_tab.jsp");
%><br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>