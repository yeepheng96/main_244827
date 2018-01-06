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
        <title>Result</title>
    </head>
    <body>
        <div class="container">
            <div class="page-header">
                <%
                    String pName = request.getParameter("pName");
                    String pDesc = request.getParameter("pDesc");
                    String pFund = request.getParameter("pFund");
                    String pPeriod = request.getParameter("pPeriod");
                    try{
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/composeproject","root","ascent1314");
                        PreparedStatement statement = con.prepareStatement("select * from composeproject");
                        Statement st = con.createStatement();
            
                        st.executeUpdate("insert into composeproject(ProjectName, ProjectDescription, ProjectFund, ProjectPeriod)"
                        + "values ('"+pName+"', '"+pDesc+"', '"+pFund+"', '"+pPeriod+"')");
                %>
                </div>
                <center>
                <h1>Result</h1>
                <div class="jumbotron">
                    <% out.println("Successful Register"); %>
                </div>
                <a href="ComposeProject.jsp"><button>Back to Main Page</button></a>
                <%
                }catch(Exception e){
                    out.println(e);
                }
                %>
                </center>
        </div>
    </body>
</html>
