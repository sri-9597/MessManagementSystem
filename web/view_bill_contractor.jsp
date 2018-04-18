<%@ page import="java.sql.ResultSet" %>
<%@include file="header.jsp"%>
<style>
    table {
        margin: 0 auto;
        text-align: center;
        border-collapse: collapse;
        border: 1px solid #d4d4d4;
        font-size: 20px;
        background: #fff;
    }

    table th,
    table tr:nth-child(2n+2) {
        background: #e7e7e7;
    }

    table th,
    table td {
        padding: 20px 50px;
    }

    table th {
        border-bottom: 1px solid #d4d4d4;
    }
</style>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import = "java.util.*" %>
<%

    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@192.168.2.25:1521:orcl", "BCS65", "BCS65");
    Statement st = con.createStatement();
    String sql = "Select * from cost where time='breakfast'";
    ResultSet rs = st.executeQuery(sql);
    rs.next();
    int breakfast_cost = Integer.parseInt(rs.getString(2));
    //out.println(breakfast_cost);

    sql = "Select cost from cost where time='lunch'";
    rs = st.executeQuery(sql);
    rs.next();
    int lunch_cost = Integer.parseInt(rs.getString(1));
    //out.println(lunch_cost);

    sql = "Select cost from cost where time='snacks'";
    rs = st.executeQuery(sql);
    rs.next();
    int snacks_cost = Integer.parseInt(rs.getString(1));
    //out.println(snacks_cost);

    sql = "Select cost from cost where time='dinner'";
    rs = st.executeQuery(sql);
    rs.next();
    int dinner_cost = Integer.parseInt(rs.getString(1));

        /*out.println(breakfast_cost);
        out.println(lunch_cost);
        out.println(snacks_cost);
        out.println(dinner_cost);*/
%>
<table>
    <thead>
    <tr>
        <th>Student id</th>
        <th>Student Name</th>
        <th>Daily Meals</th>
        <th>Special Food Items</th>
        <th>Fine</th>
        <th>Total</th>
    </tr>
    </thead>
    <tbody>
    <%
        sql = "select * from student_bill , student_information where student_bill.student_id = student_information.student_id";
        rs = st.executeQuery(sql);
        ResultSet rs1 ;
        int i = 0;
        int num_bfast ,num_lunch , num_snacks , num_dinner ;

        int late, spcl_food , cancl;

        int normal_bill, extra , total;
        while(rs.next()){

            num_bfast = Integer.parseInt(rs.getString("breakfast"));
            num_lunch = Integer.parseInt(rs.getString("lunch"));
            num_snacks = Integer.parseInt(rs.getString("snacks"));
            num_dinner = Integer.parseInt(rs.getString("dinner"));

            late = Integer.parseInt(rs.getString("late"));
            spcl_food = Integer.parseInt(rs.getString("special_food_cost"));
            cancl = Integer.parseInt(rs.getString("cancellation_charge"));

            String id = rs.getString("Student_id");
            String name = rs.getString("name");

            normal_bill = num_bfast * breakfast_cost +num_lunch * lunch_cost +num_snacks * snacks_cost +num_dinner * dinner_cost;
            extra = late + spcl_food + cancl;
            total = normal_bill + extra;
            out.println("<tr>");
            out.println("<td>"+id+"</td>");
            out.println("<td>"+name+"</td>");
            out.println("<td>"+total+"</td>");
            out.println("<td>"+normal_bill+"</td>");
            out.println("<td>"+extra+"</td>");
            out.println("<td>"+total+"</td>");
            out.println("</tr>");
            i++;

        }
    %>
    </tbody>
</table>


<%@include file="footer.jsp"%>
