<%-- 
    Document   : product
    Created on : Nov 16, 2020, 10:30:36 AM
    Author     : Os-10
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
        <title>JSP Page</title>
    </head>
    <f:view>
        <body>
        <center>
            <h:form>
                <h:inputHidden value="#{productsBean.id}" />
                <table border="1" class="table table-striped table-hover table-bordered">
                    
                    <tr>
                       
                        <td>Name</td>
                        <td><h:inputText value="#{productsBean.name}"/></td>
                        
                    </tr>
                    <tr>
                        <td>Price</td>
                        <td><h:inputText value="#{productsBean.price}"/></td>
                    </tr>
                    <tr>
                        <td>Quantity</td>
                        <td><h:inputText value="#{productsBean.quantity}" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <h:commandButton value="Save" action="#{productsBean.createProduct()}" />
                        </td>

                    </tr>
                 
                </table>
            </h:form>
        </center>
    </body>
</f:view>
</html>
