package DB;

/**
 *
 * @author hp
 */
import java.sql.*;
public class DBConnection implements DBConfig {
  public static Connection getConn()
  {
    Connection con1=null;
    try{
    Class.forName(Driver);
   con1=DriverManager.getConnection(Conn,Unm,Pw);
    }catch(Exception tt)
    {System.out.println(tt);}
    
    return con1;
  }
  
}