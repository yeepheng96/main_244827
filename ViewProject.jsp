<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Compose Result</title>
        <link rel="stylesheet" type="text/css" 
        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <style>
        .jumbotron{
            background-color:buttonface;
            color:black;
        }
        </style>
        <title>View Project</title>
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <%
                    try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/composeproject","root","ascent1314");
                        Statement st = con.createStatement();
                        String QueryString = "SELECT * FROM composeproject";
                        ResultSet result = null;
                        result = st.executeQuery(QueryString);
                %>
            <center>
                <h1>Project's Record</h1>
            <table cellpadding="15" border="1">
            <tr>
                <tr>
                    <th>Project ID</th>
                    <th>Project Name</th>
                    <th>Project Description</th>
                    <th>Expected Fund</th>
                    <th>Project Period</th>
                    <th>Current Fund</th>
                    <th>Status</th>
                </tr>
            </tr>
            <%
                while(result.next()){
            %>
            <tr>
                <td><%=result.getString(1)%></td>
                <td><%=result.getString(2)%></td>
                <td><%=result.getString(3)%></td>
                <td><%=result.getString(4)%></td>
                <td><%=result.getString(5)%></td>
                <td><%=result.getString(6)%></td>
                <td><%=result.getString(7)%></td>
            </tr>
            <% } %>
        </table>
        <br>
        <form action="ComposeProject.jsp" method="get">
        <div align="center">
            <button type ="submit" class="btn btn-default" role="button">Back to main page</button>
        </div>
        </form>
        </center>
            <% }catch(Exception e){
                out.println(e);
                } %>
            </div>
        </div>
    </body>
</html>
