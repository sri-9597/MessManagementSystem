<%@include file="header.jsp"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*" %>

<%Date date = new Date();
SimpleDateFormat ft = new SimpleDateFormat("dd.MM.yyyy");%>
<h2 align="center"><b>Mess bill untill </b><%out.print(ft.format(date));%> </h2><br><br><br>
<table>
    <thead>
    <td>ID</td>
    <td>BREAKFAST</td>
    <td>LUNCH</td>
    <td>SNACKS</td>
    <td>DINNER</td>
    <td>SPECIAL_FOOD</td>
    <td>LATE_FINE</td>
    <td>CANCELLATION_CHARGE</td>
    <td>TOTAL</td>
    </thead>

<%try{
    HttpSession session1 = request.getSession();
    String n = (String) session1.getAttribute("student_id");
    int id = Integer.parseInt(n);
//    int id = 18325;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection(
            "jdbc:oracle:thin:@192.168.2.25:1521:orcl", "BCS65", "BCS65");
    Statement statement = con.createStatement();
    String query = "SELECT STUDENT_ID,BREAKFAST,LUNCH,SNACKS,DINNER,SPECIAL_FOOD_COST,LATE,CANCELLATION_CHARGE,(BREAKFAST+STUDENT_BILL.LUNCH+STUDENT_BILL.SNACKS+STUDENT_BILL.DINNER+STUDENT_BILL.SPECIAL_FOOD_COST+STUDENT_BILL.LATE+STUDENT_BILL.CANCELLATION_CHARGE) TOTAL FROM STUDENT_BILL WHERE STUDENT_ID = " + id;
    ResultSet resultSet = statement.executeQuery(query);
    while (resultSet.next()) {%>
    <tr>
        <td><%out.print(resultSet.getInt("student_id"));%></td>
        <td><%out.print(resultSet.getInt("breakfast"));%></td>
        <td><%out.print(resultSet.getInt("lunch"));%></td>
        <td><%out.print(resultSet.getInt("snacks"));%></td>
        <td><%out.print(resultSet.getInt("dinner"));%></td>
        <td><%out.print(resultSet.getInt("special_food_cost"));%></td>
        <td><%out.print(resultSet.getInt("late"));%></td>
        <td><%out.print(resultSet.getInt("cancellation_charge"));%></td>
        <td><%out.print(resultSet.getInt("total"));%></td>
    </tr>
    <%}
    con.close();
    }catch (Exception e){
        System.out.print(e);
    }%>
</table><br><br><br>
<%@include file="footer.jsp"%>
