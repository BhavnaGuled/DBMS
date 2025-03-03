package Anudip;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBCUpdateEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			//1.Register the Driver class
			Class.forName("com.mysql.cj.jdbc.Driver");
			//2.Create connection
			Connection con=null;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/anudip","root", "security");
			System.out.println(con);
			//3.create statement
			PreparedStatement ps=con.prepareStatement("update person set name=? where  person_id=?");
			ps.setString(1,"Sneha");
			ps.setInt(2, 1);
			//4.Execute queries
			int i=ps.executeUpdate();
			System.out.println(i+" record updated successfully");
			//5.Close connection
			con.close();
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}
}
/*Output:
com.mysql.cj.jdbc.ConnectionImpl@5fb759d6
1 record updated successfully
*/