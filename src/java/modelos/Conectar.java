
package modelos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class Conectar 
{
    private Connection con;
    private PreparedStatement consulta;
    private Statement procesar=null;
    private ResultSet datos;
    private String server,user,pass,bd;
    
    public Conectar()
    {
        this.server="localhost";
        this.user="root";
        this.pass="";
        this.bd="manosenelcodigo2";
    }
    
    public void con() throws SQLException
    {
         try
        {
            Class.forName("com.mysql.jdbc.Driver");
            this.con=DriverManager.getConnection
            (
                 "jdbc:mysql://"+this.server+"/"+this.bd,
                    this.user,
                    this.pass
            );
        }catch(ClassNotFoundException e)
        {
            e.printStackTrace();
        }
    }
    public void desconectar() throws SQLException
    {
        this.con.close();
    }
    public ResultSet getDatos(String sql) throws SQLException
    {
        this.con();
        this.consulta=this.con.prepareStatement(sql);
        this.datos=this.consulta.executeQuery();
        return this.datos;
    }
}
