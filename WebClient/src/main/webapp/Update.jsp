<%-- 
    Document   : Update
    Created on : 16 Aug, 2021, 1:45:56 AM
    Author     : Ravi
--%>

<%@page import="com.service.Books"%>
<%@page import="com.service.BooksServiceService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" type="text/css" href="css/style.css">
                <style>
         body {  
  font-family: Calibri, Helvetica, sans-serif;  


  background: url('images/addbook.jpg') no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  text-align: center;
}  
</style>
    </head>
    <body>
         <%
            String id = (String) request.getParameter("id");

            BooksServiceService service = new BooksServiceService();

            Books b = service.getBooksServicePort().displayBookById(id);


        %>
          <div class="topnav">
            <ul>
                <li><a href="SearchBook.jsp"> Search Books</a></li>
                <li><a href="IssueBook.jsp"> Issue Books</a></li>
                <li><a href="RecieveBook.jsp"> Receive Books</a></li>
                <li><a href="AddBooks.jsp"> Add Books</a></li>
                <li><a href="DisplayBooks.jsp"> Display Books</a></li>
                <li><a href="DisplayUsers.jsp"> Display Users</a></li>
                   <li style="float:right"><a href="Logout.jsp"> Logout </a></li>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li style="float:right"><a class="active"> Welcome , <%= session.getAttribute("uname") %></a></li>
            </ul>
        </div>
  
             <h1 style="color:tomato;"> Let's increase our Book Count ! </h1>
             <form name="Upload" action="BookUpdated.jsp" method="get">

          
            <table class="book">
                <%  String x = (String)request.getParameter("id"); %>
                <tr> <td>   Book ID </td> <td> <input type="text" name="id" value="<%=x %>" readonly/></td> </tr>
                <tr> <td>    Title     </td> <td><input type="text" name="title"  value="<%=b.getTitle()%>" required/></td> </tr>  
                <tr> <td> Book Author </td> <td><input type="text" name="author"  value="<%=b.getBookauthor()%>" required /></td> </tr>
                <tr> <td> Book Publication </td> <td><input type="text" name="pub"  value="<%=b.getBookpublication()%>" required /></td> </tr>
                <tr> <td> Book Details </td> <td><input type="text" name="detail"  value="<%=b.getBookdetail()%>" required /></td> </tr>
                <tr> <td> Book Location </td> <td><input type="text" name="location"  value="<%=b.getBooklocation()%>" required /></td> </tr>
                 <tr> <td> Book Availability </td> <td><input type="text" name="avail"  value="<%=b.getAvailability()%>" required /></td> </tr>
            
            
                <tr> <td><input type="submit" value="Submit" clas="bookbtn"/></td></tr>
            
            

            </table>
        </form>

    </body>
</html>

