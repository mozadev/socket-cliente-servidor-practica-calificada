
package Modelo;

import java.sql.*;
import Utilitario.ConexionBD;
import  java.util.ArrayList;
public class PersonaDAO 
{
    PreparedStatement    pt=null;
    ResultSet            rs=null;
    Connection           cn=null;
    ArrayList<Persona>   lista=null;
    
    public ArrayList<Persona>   ListarPersonas()
    {
        try {
            cn=ConexionBD.getConexionBD();
            pt=cn.prepareStatement("Select * from   persona ;");
            rs= pt.executeQuery();
            lista=new ArrayList<Persona>();
            while(rs.next())
            {
                Persona  objeto=new Persona();
                objeto.setIdpersona(rs.getInt(1));
                objeto.setNombre(rs.getString(2));
                objeto.setApellido(rs.getString(3));
                lista.add(objeto);                
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception e) {
        }
        return lista;
    }
    
   public  int   InsertarPersona(String  nombre , String  apellido)
   { 
       int  estado=0;
       try
       {    cn=ConexionBD.getConexionBD();          
            pt=cn.prepareStatement("insert into persona(nombre,apellido) value(?,?); ");  
            pt.setString(1,nombre);
            pt.setString(2,apellido);
            estado=pt.executeUpdate();            
            pt.close();
            cn.close();      
       } catch (Exception e)
       {
       }
       return estado;
   }        
}
