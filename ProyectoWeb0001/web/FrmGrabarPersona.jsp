<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <!-- /FrmListarPersonas.jsp -->
        <form name="form"  method="POST" action="<c:url value="/UsuarioServlet" />">  
            <table>
                <tr>
                    <td>Nombre :</td>
                    <td><input type="text" name="txtNombre"></td>
                </tr>
                <tr>
                    <td>Apellido :</td>
                    <td><input type="text" name="txtApellido"></td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Grabar">
                    </td>
                </tr>                
            </table>
        </form>        
    </center>
    </body>
</html>
