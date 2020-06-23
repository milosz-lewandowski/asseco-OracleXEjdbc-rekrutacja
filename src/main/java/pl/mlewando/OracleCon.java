package pl.mlewando;

import java.sql.*;
class OracleCon{
    public static void main(String args[]){
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");

            Connection con=DriverManager.getConnection(
                    "jdbc:oracle:thin:@0.0.0.0:1521:xe","HR","asseco");

            Statement stmt=con.createStatement();

            ResultSet rs=stmt.executeQuery("select * from COUNTRIES");
            while(rs.next())
                System.out.println(rs.getString(1)+"  "+rs.getString(2)+"  "+rs.getInt(3));

            con.close();

        }catch(Exception e){ System.out.println(e);}

    }
}