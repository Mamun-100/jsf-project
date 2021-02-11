<%-- 
    Document   : index
    Created on : Nov 16, 2020, 10:30:13 AM
    Author     : Os-10
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <f:view>
        <center>
            <h4>List of products</h4>
            <a href="faces/product.jsp">Add Product</a>
            <table border="1" class="container table table-striped table-hover table-bordered">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th colspan="2">Action</th>
                </tr>
                <c:forEach items="#{productsBean.products}"  var="product">
                    <tr>
                        <td>${product.id}</td>
                        <td>${product.name}</td>
                        <td>${product.price}</td>
                        <td>${product.quantity}</td>
                        <td>
                            <h:form >
                                <h:commandLink value="Update" action="#{productsBean.updateLink(product)}" />
                            </h:form>
                        </td>
                        <td><h:form >
                                <h:commandLink value="Delete" action="#{productsBean.deleteById(product.id)}" />
                            </h:form>
                        </td>
                    </tr>
                </c:forEach>
            </table>

        </center>
    </f:view>
</body>
</html>
