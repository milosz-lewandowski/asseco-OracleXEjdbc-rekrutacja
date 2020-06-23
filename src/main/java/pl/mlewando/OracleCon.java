package pl.mlewando;

import java.sql.*;
class OracleCon{
    public static Connection getConnection() throws SQLException {
            try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
            }catch(Exception e){ System.out.println(e);}

            return DriverManager.getConnection(
                        "jdbc:oracle:thin:@0.0.0.0:1521:xe","HR","asseco");

    }
}