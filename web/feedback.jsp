<%@include file="header.jsp"%>
<style>
    @import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);

    fieldset, label { margin: 0; padding: 0; }
    body{ margin: 20px; }
    h1 { font-size: 1.5em; margin: 10px; }

    /****** Style Star Rating Widget *****/

    .rating {
        border: none;
        float: left;
    }
    

    .rating1 {
        border: none;
        float: left;
    }
    .rating2 {
        border: none;
        float: left;
    }
    .rating3 {
        border: none;
        float: left;
    }

    .rating > input { display: none; }
    .rating > label:before {
        margin: 5px;
        font-size: 1.25em;
        font-family: FontAwesome;
        display: inline-block;
        content: "\f005";
    }

    .rating > label {
        color: #ddd;
        float: right;
    }

    /***** CSS Magic to Highlight Stars on Hover *****/

    .rating > input:checked ~ label, /* show gold star when clicked */
    .rating:not(:checked) > label:hover, /* hover current star */
    .rating:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */

    .rating > input:checked + label:hover, /* hover current star when changing rating */
    .rating > input:checked ~ label:hover,
    .rating > label:hover ~ input:checked ~ label, /* lighten current selection */
    .rating > input:checked ~ label:hover ~ label { color: #FFED85;  }


    .rating > input { display: none; }
    .rating > label:before {
        margin: 5px;
        font-size: 1.25em;
        font-family: FontAwesome;
        display: inline-block;
        content: "\f005";
    }

    .rating > label {
        color: #ddd;
        float: right;
    }

    /***** CSS Magic to Highlight Stars on Hover *****/

    .rating > input:checked ~ label, /* show gold star when clicked */
    .rating:not(:checked) > label:hover, /* hover current star */
    .rating:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */

    .rating > input:checked + label:hover, /* hover current star when changing rating */
    .rating > input:checked ~ label:hover,
    .rating > label:hover ~ input:checked ~ label, /* lighten current selection */
    .rating > input:checked ~ label:hover ~ label { color: #FFED85;  }



    .rating1 > input { display: none; }
    .rating1 > label:before {
        margin: 5px;
        font-size: 1.25em;
        font-family: FontAwesome;
        display: inline-block;
        content: "\f005";
    }

    .rating1 > .half:before {
        content: "\f089";
        position: absolute;
    }

    .rating1 > label {
        color: #ddd;
        float: right;
    }

    /***** CSS Magic to Highlight Stars on Hover *****/

    .rating1 > input:checked ~ label, /* show gold star when clicked */
    .rating1:not(:checked) > label:hover, /* hover current star */
    .rating1:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */

    .rating1 > input:checked + label:hover, /* hover current star when changing rating */
    .rating1 > input:checked ~ label:hover,
    .rating1 > label:hover ~ input:checked ~ label, /* lighten current selection */
    .rating1 > input:checked ~ label:hover ~ label { color: #FFED85;  }



    .rating2 > input { display: none; }
    .rating2 > label:before {
        margin: 5px;
        font-size: 1.25em;
        font-family: FontAwesome;
        display: inline-block;
        content: "\f005";
    }

    .rating2 > .half:before {
        content: "\f089";
        position: absolute;
    }

    .rating2 > label {
        color: #ddd;
        float: right;
    }

    /***** CSS Magic to Highlight Stars on Hover *****/

    .rating2 > input:checked ~ label, /* show gold star when clicked */
    .rating2:not(:checked) > label:hover, /* hover current star */
    .rating2:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */

    .rating2 > input:checked + label:hover, /* hover current star when changing rating */
    .rating2 > input:checked ~ label:hover,
    .rating2 > label:hover ~ input:checked ~ label, /* lighten current selection */
    .rating2 > input:checked ~ label:hover ~ label { color: #FFED85;  }




    .rating3 > input { display: none; }
    .rating3 > label:before {
        margin: 5px;
        font-size: 1.25em;
        font-family: FontAwesome;
        display: inline-block;
        content: "\f005";
    }

    .rating3 > .half:before {
        content: "\f089";
        position: absolute;
    }

    .rating3 > label {
        color: #ddd;
        float: right;
    }

    /***** CSS Magic to Highlight Stars on Hover *****/

    .rating3 > input:checked ~ label, /* show gold star when clicked */
    .rating3:not(:checked) > label:hover, /* hover current star */
    .rating3:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */

    .rating3 > input:checked + label:hover, /* hover current star when changing rating */
    .rating3 > input:checked ~ label:hover,
    .rating3 > label:hover ~ input:checked ~ label, /* lighten current selection */
    .rating3 > input:checked ~ label:hover ~ label { color: #FFED85;  }

</style>
<form action="feedback.jsp" style= "background-color: inherit ">
    User id : <input type = "text" name="student_id">
    <div style="background-color: inherit ">
        <table style="background-color: inherit ">
            <tr style="background-color: inherit ">
                <td style="background-color: inherit ">Quality</td><td>
                <fieldset class="rating">
                    <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
                    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
                    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
                    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
                    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
                </fieldset></td>
            </tr>
            <tr style="background-color: inherit ">
                <td style="background-color: inherit ">Cleanliness</td><td>
                <fieldset class="rating1">
                    <input type="radio" id="star15" name="rating1" value="5" /><label class = "full" for="star15" title="Awesome - 5 stars"></label>
                    <input type="radio" id="star14" name="rating1" value="4" /><label class = "full" for="star14" title="Pretty good - 4 stars"></label>
                    <input type="radio" id="star13" name="rating1" value="3" /><label class = "full" for="star13" title="Meh - 3 stars"></label>
                    <input type="radio" id="star12" name="rating1" value="2" /><label class = "full" for="star12" title="Kinda bad - 2 stars"></label>
                    <input type="radio" id="star11" name="rating1" value="1" /><label class = "full" for="star11" title="Sucks big time - 1 star"></label>
                </fieldset></td>
            </tr>

            <tr style="background-color: inherit ">
                <td style="background-color: inherit ">Quantity</td><td>
                <fieldset class="rating2">
                    <input type="radio" id="star25" name="rating2" value="5" /><label class = "full" for="star25" title="Awesome - 5 stars"></label>
                    <input type="radio" id="star24" name="rating2" value="4" /><label class = "full" for="star24" title="Pretty good - 4 stars"></label>
                    <input type="radio" id="star23" name="rating2" value="3" /><label class = "full" for="star23" title="Meh - 3 stars"></label>
                    <input type="radio" id="star22" name="rating2" value="2" /><label class = "full" for="star22" title="Kinda bad - 2 stars"></label>
                    <input type="radio" id="star21" name="rating2" value="1" /><label class = "full" for="star21" title="Sucks big time - 1 star"></label>
                </fieldset></td>
            </tr>

            <tr style="background-color: inherit ">
                <td style="background-color: inherit ">Hospitality</td><td>
                <fieldset class="rating3">
                    <input type="radio" id="star35" name="rating3" value="5" /><label class = "full" for="star35" title="Awesome - 5 stars"></label>
                    <input type="radio" id="star34" name="rating3" value="4" /><label class = "full" for="star34" title="Pretty good - 4 stars"></label>
                    <input type="radio" id="star33" name="rating3" value="3" /><label class = "full" for="star33" title="Meh - 3 stars"></label>
                    <input type="radio" id="star32" name="rating3" value="2" /><label class = "full" for="star32" title="Kinda bad - 2 stars"></label>
                    <input type="radio" id="star31" name="rating3" value="1" /><label class = "full" for="star31" title="Sucks big time - 1 star"></label>
                </fieldset></td>
            </tr>
            <tr style="background-color: inherit ">
                <td></td>
                <td> </td>
            </tr>
        </table>
    </div>
    Comment:<input type="text" name="comment">
    <input type="submit" value="submit">
</form>
<form action="feedback.jsp" style= "background-color: inherit ">

</form>
<table>
    <tr></tr>
    <tr></tr>
    <tr></tr>
</table>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import = "java.util.*" %>
<%@page import="java.text.*" %>
<%
    java.util.Date date = new java.util.Date();
    SimpleDateFormat simpleDateformat = new SimpleDateFormat("dd/MM/yy");
    String dt=simpleDateformat.format(date);

    out.println(dt);

    String student_id = request.getParameter("student_id");
    String quality_rt = request.getParameter("rating");
    String cleanliness_rt = request.getParameter("rating1");
    String quantity_rt = request.getParameter("rating2");
    String hospitality_rt = request.getParameter("rating3");
    String comment = request.getParameter("comment");

    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@192.168.2.25:1521:orcl", "BCS65", "BCS65");
    Statement st = con.createStatement();
    String sql = "Select * from OVERALL_REVIEW_FEEDBACK where review_date='" + dt +"' and student_id = " + student_id;
    //out.println(sql);
    ResultSet rs = st.executeQuery(sql);
    if(rs.next()){
        //update query
        if(quality_rt != null){
            sql = "update OVERALL_REVIEW_FEEDBACK set quality = "+quality_rt ;
            //out.println(sql);
            st.executeUpdate(sql);
        }
        if(cleanliness_rt != null){
            sql = "update OVERALL_REVIEW_FEEDBACK set quality = "+cleanliness_rt ;
            //out.println(sql);
            st.executeUpdate(sql);
        }
        if(quantity_rt != null){
            sql = "update OVERALL_REVIEW_FEEDBACK set quality = "+quantity_rt ;
            //out.println(sql);
            st.executeUpdate(sql);
        }
        if(hospitality_rt != null){
            sql = "update OVERALL_REVIEW_FEEDBACK set quality = "+hospitality_rt ;
            //out.println(sql);
            st.executeUpdate(sql);
        }
    }
    else if (student_id != null && dt != null){
        //insert query
        sql = "insert into OVERALL_REVIEW_FEEDBACK values ("+student_id+" , '"+ dt +"' , "+ quality_rt +"," + cleanliness_rt +"," +quantity_rt +"," +hospitality_rt +")";
        st.executeUpdate(sql);
    }
    if(comment !=null){
        sql = "insert into comments values ('"+ comment +"')";
        st.executeUpdate(sql);
    }
%>

<%@include file="footer.jsp"%>
