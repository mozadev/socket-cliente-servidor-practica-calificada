<%@page import="Modelo.Persona"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.PersonaDAO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
      <html>
           <head>
         <title>Servlet UsuarioServlet</title>            
         </head>
          <body>
              <%
                    HttpSession sesion = request.getSession();
                    ArrayList<Persona> lista = (ArrayList<Persona>) sesion.getAttribute("LISTA");
              %>
           
          <center>${sessionScope.mensaje}</center>
            
           <CENTER>  <table    border=10>
             <tr>
              <td>Nombre</td>
              <td>Apellido</td>
              <td>Operacion</td>
             </tr>
             <c:forEach var="em" items="${LISTA}">
                <tr>
                    <td>${em.getNombre()}</td>
                    <td>${em.getApellido()}</td>
                   <td> <input  type=button  value=Eliminar >      </td>                  
                </tr>
                </c:forEach>            
                  
               
              </table> </CENTER>
            </body>
          </html>