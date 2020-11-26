<%-- 
    Document   : cart
    Created on : Nov 26, 2020, 12:28:04 AM
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
        <title>Cart</title>
    </head>
    <jsp:useBean id="cart" class="model.Cart" scope="request"/>
    <%
        List<Cart> cartList = CartTable.findAllCart();
        Iterator<Cart> itr = cartList.iterator();
    %>
    <body>
    <center>
        <h1>DVD Shopping Cart</h1>
        <table border="1">
            <tr>
                <th>DVD Names</th>
                <th>Rate</th>
                <th>Year</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Remove</th>
            </tr>
            <%
                while (itr.hasNext()) {
                    out.println("<form name=\"RemoveFromCartController\" method=\"post\" action=\"RemoveFromCartController\">");
                    cart = itr.next();
                    out.println("<tr>");
                    out.println("<td hidden style> <input type=\"number\" name=\"cartId\" value=" + cart.getCartId()+ "></input></td>");
                    out.println("<td> " + cart.getDvdId().getDvdnames() + "</td>");
                    out.println("<td> " + cart.getDvdId().getRate() + "</td>");
                    out.println("<td> " + cart.getDvdId().getYears() + "</td>");
                    out.println("<td> " + cart.getDvdId().getPrice() + "</td>");
                    out.println("<td> " + cart.getQuantity() + "</td>");
                    out.println("<td> <button type=\"submit\" name=\"removeitem\" >Remove</button></td>");
                    out.println("<tr>");
                    out.println("</form>");
                }
            %>
        </table>
        <button  type=\"submit\" name=\"back\" onclick="window.location.href = '/OnlineShoppingCart/index.jsp'"> < Back to Catalog</button>
        <button  type=\"submit\" name=\"checkout\" onclick="window.location.href = '/OnlineShoppingCart/CheckOutController'" >CheckOut</button>
    </center>    
</body>
</html>
