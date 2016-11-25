
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Conexión a MySQL con JDBC</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    </head>
    <body>
        <div class="container">
            <div class="panel panel-primary">
                <div class="panel-heading">Conexión a MySQL con JDBC</div>
                <div class="panel-body">
                    <p>
                        <a href="" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>Agregar</a>
                    </p>
                    
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Precio</th>
                                <th>Stock</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                            ResultSet datos=(ResultSet)request.getAttribute("datos");
                            while(datos.next())
                            {
                                %>
                                <tr>
                                    <td><%=datos.getInt("id") %></td>
                                    <td><%=datos.getString("nombre") %></td>
                                    <td><%=datos.getInt("precio") %></td>
                                    <td><%=datos.getInt("stock") %></td>
                                    <td>
                                        <a href=""><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
                                        <a href=""><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
                                    </td>
                                </tr>
                                <%
                            }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
