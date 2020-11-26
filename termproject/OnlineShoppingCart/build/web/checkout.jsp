<%-- 
    Document   : checkout
    Created on : Nov 26, 2020, 12:46:04 AM
    Author     : 320S-USER
--%>

<%@page import="java.util.Iterator"%>
<%@page import="model.CartTable"%>
<%@page import="java.util.List"%>
<%@page import="model.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Out Your Cart</title>
    </head>
    <jsp:useBean id="cart" class="model.Cart" scope="request"/>
    <%
        List<Cart> cartList = CartTable.findAllCart();
        Iterator<Cart> itr = cartList.iterator();
    %>
    <body>
    <center>
        <h1>Check Out Item</h1>
        <table border="1">
            <tr>
                <th>DVD Names</th>
                <th>Rate</th>
                <th>Year</th>
                <th>Price</th>
                <th>Quantity</th>
            </tr>
            <%
                while (itr.hasNext()) {
                    cart = itr.next();
                    out.println("<tr>");
                    out.println("<td hidden style='text-align: center;'><input class=\"form-control\" type=\"number\" name=\"cartId\" value=" + cart.getCartId() + "></input></td>");
                    out.println("<td> " + cart.getDvdId().getDvdnames() + "</td>");
                    out.println("<td> " + cart.getDvdId().getRate() + "</td>");
                    out.println("<td> " + cart.getDvdId().getYears() + "</td>");
                    out.println("<td> " + cart.getDvdId().getPrice() + "</td>");
                    out.println("<td> " + cart.getQuantity() + "</td>");
                    out.println("<tr>");
                }
            %>
        </table>
        <br>
        <h2>Your Orders is confirmed!</h2> 
        <h3><%= "The total amount is $" + request.getAttribute("total")%></h3>   
    </center>    
</body>
</html>
