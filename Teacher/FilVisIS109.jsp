<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<%@page import="com.servlet.db.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title> 
</head>
<body>
     <%
            if(session.getAttribute("username1")==null)
            {
                
                response.sendRedirect("../login.jsp");
            }
        %>
      
<br><br><br>
<center>
<table border="2">
<tr><th>Navn på innlevering</th><th>Filnavn </th><th>Dato lagt til</th>
</tr>
            <%
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            
            con = DB.getConnection();
            String sql = "select * From Oppgave109 WHERE Course_ID=1 AND user_id='u001'";

            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
            %>
            <tr>     
            <td><%=rs.getString("oppgavenavn")%></td>
            <td><%=rs.getString("filename")%></td>
            <td><%=rs.getTimestamp("added_date")%></td>
            <td><a href="../DownloadServlet?fileName=<%=rs.getString("filename")%>"><button type="button" class="last ned">Last ned</button></a></td>
            <td><a href="FilSlettIS109.jsp?Oppgave_ID=<%=rs.getString("Oppgave_ID") %>"><button type="button" class="delete">Delete</button></a></td>
            </tr>
            <%
                }
            %>        
</table><br>
<a href="FilopplastingIS109.jsp">Legg til fil</a>
</center>
</body>
</html>
