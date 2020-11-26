<%-- 
    Document   : index
    Created on : Nov 25, 2020, 8:54:43 PM
    Author     : 320S-USER
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.CatalogTable"%>
<%@page import="model.Catalog"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Shopping Cart</title>
    </head>
    <jsp:useBean id="catalog" class="model.Catalog" scope="request"/>
    <%
        List<Catalog> CatalogList = CatalogTable.findAllCatalog();
        Iterator<Catalog> itr = CatalogList.iterator();
    %>
    <body>
    <center>
        <h1>DVD Catalog</h1>
        <table border="1">
            <tr>
                <th>DVD Names</th>
                <th>Rate</th>
                <th>Year</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>AddtoCart</th>
            </tr>
            <%
                while (itr.hasNext()) {
                    out.println("<form name=\"AddtoCartController\" method=\"POST\" action=\"AddtoCartController\">");
                    catalog = itr.next();
                    out.println("<tr>");
                    out.println("<td hidden style> <input type=\"number\" name=\"dvdId\" value=" + catalog.getDvdId()+ "></input></td>");
                    out.println("<td> " + catalog.getDvdnames() + "</td>");
                    out.println("<td> " + catalog.getRate() + "</td>");
                    out.println("<td> " + catalog.getYears() + "</td>");
                    out.println("<td> " + catalog.getPrice() + "</td>");
                    out.println("<td> <input type=\"number\" name=\"quantity\"></input></td>");
                    out.println("<td> <button  type=\"submit\" name=\"additem\" >AddToCart</button></td>");
                    out.println("<tr>");
                    out.println("</form>");
                }
            %>
        </table>
    </center>
</body>
</html>
