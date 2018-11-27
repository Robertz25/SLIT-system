
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Servlet File Upload/Download</title>
    </head>
    <body>
        <%
            if(session.getAttribute("username2")==null)
            {
                
                response.sendRedirect("../login.jsp");
            }
        %>
        

<br><br><br><br>
<center>   
    
<form action="../UploadServletI110Student" method="post" enctype="multipart/form-data">
<table width="400px" align="center" border=2>
<tr>
<tr>
<td>Oppgavenavn </td>
<td>
<input type="text" required="" name="oppgavenavn">
</td>
</tr>
    
<h3>Last opp fil</h3>
<tr>
<td>Velg fil </td>
<td>
<input type="file" required="" name="file">
</td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Submit"></td>
</tr>
</table>
</form>
<a href="FilVisIS110STUDENT.jsp">Vis Filer</a>
<ul class =menyListe>
         <li><a href="emnerTeacher.jsp">Tilbake</a></li> 
                 
</ul>
</center>
</body>
</html>

