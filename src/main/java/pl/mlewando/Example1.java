package pl.mlewando;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Example1 {
    public Example1(){
        try {


            Connection con = OracleCon.getConnection();
            Statement stmt = con.createStatement();

            ResultSet rs = stmt.executeQuery("SELECT employees.last_name FROM departments " +
                    "                                    join job_history ON job_history.department_id = departments.department_id " +
                    "                                    join employees ON employees.department_id = departments.department_id " +
                    "where departments.department_name = 'DRK' " +
                    "  AND JOB_HISTORY.START_DATE <= CURRENT_DATE " +
                    "GROUP By employees.last_name " +
                    "ORDER BY employees.last_name ASC");
            while (rs.next())
                System.out.println(rs.getString("employees.last_name"));

            con.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}
