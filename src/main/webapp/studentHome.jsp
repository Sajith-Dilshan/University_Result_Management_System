<%@page import="java.sql.*" %>
      <%@page import="project.ConnectionProvider" %>
      <%
      try{
    	  
    	  String rollNo=request.getParameter("rollNo");
    	  Connection con=ConnectionProvider.getCon();
    		Statement st=con.createStatement();
    		ResultSet rs=st.executeQuery("select * from student inner join result where student.reg_number=result.reg_number and student.reg_number='"+rollNo+"'");
    		if (rs.next()){
    			
    			
    		
      
      
      %>




<img src="logo.png"  align="left"width="150" height="150">
<center><img src="unilogo.png" width="150" height="150">
<img src="apj sir.png" align="right"  width="150" height="150"></center>
    <a href="dgiOneView.html">Back</a>
  <hr class="new1">
<style>
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}

</style>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>University Name: Sabaragamuwa University</th>
          <th>Faculty:<%=rs.getString(1) %></th>
          <th>Degree program: <%=rs.getString(2) %></th>
          <th><center>Index No: <%=rs.getString(3) %></center></th>
        </tr>
      </thead>
      <thead>
        <tr>
          <th>Name: <%=rs.getString(4) %></th>
          <th>NIC Number: <%=rs.getString(5) %></th>
          <th>Gender: <%=rs.getString(6) %></th>
          <th><a titlt="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;"><center><img src="print.png"></center></a></th>
        </tr>
      </thead>
    </table>
  </div>
<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}

</style>
<head>
  <hr class="new1">
</head>
<body>
  <table>
    <thead>
      <tr>
        <td colspan="3">Course</td>
        
        <td rowspan="2">Obtained Marks</td>
        
      </tr>
      <tr>
        <td>Code </td>
        <td colspan="2"> Name </td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td></td>
        <td colspan="2">Semester</td>
        
        <td><%=rs.getString(8) %></td>
      </tr>
      <tr>
        <td>Code-01</td>
        <td colspan="2">Subject code-01</td>
        
        <td><%=rs.getString(9) %> </td>
      </tr>
      <tr>
        <td>Code-02</td>
        <td colspan="2">Subject code-02</td>
        
        <td> <%=rs.getString(10) %></td>
      </tr>
      <tr>
        <td>Code-03</td>
        <td colspan="2">Subject code-03</td>
        
        <td> <%=rs.getString(11) %></td>
      </tr>
      <tr>
        <td>Code-04</td>
        <td colspan="2">Subject code-04</td>
        
        <td> <%=rs.getString(12) %> </td>
      </tr>
      <tr>
        <td>Code-05</td>
        <td colspan="2">Subject code-05</td>
        
        <td> <%=rs.getString(13) %> </td>
      </tr>
      <tr>
        <td>Code-06</td>
        <td colspan="2">Subject code-06</td>
        
        <td> <%=rs.getString(14) %> </td>
      </tr>
    </tbody>
    <tfoot>
      
  </table>
    <hr class="new1">
  <center><h6>Note: This is a Demo project for our university.</h6></center>
  <hr class="new1">
<center><h6>All Right Reserved @ <a href="https://www.linkedin.com/in/sajith-dilshan/">sajith dilshan</a></h6></center> 
  <hr class="new1">
</body>
 
 <%}
 else{
	 response.sendRedirect("errorDgiOneView.html");
	 }
      }
    		catch(Exception e)
	 {System.out.println(e);}	 
	 
	 
	 %>
