package pl.mlewando;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Example2 {
    public Example2(){
        try {


            Connection con = OracleCon.getConnection();
            Statement stmt = con.createStatement();

            ResultSet rs = stmt.executeQuery("SELECT " +
                    "    * " +
                    "FROM employees " +
                    "         join job_history On employees.employee_id = job_history.employee_id " +
                    "         join departments ON job_history.department_id = departments.department_id " +
                    "         join jobs ON jobs.job_id = job_history.job_id " +
                    "where employees.salary < 3/4 * jobs.max_salary " +
                    "  AND last_name = 'kowalski' " +
                    "Order By departments.department_name asc ");
            while (rs.next())
                System.out.println(rs.getString("departments.department_name"));

            con.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
