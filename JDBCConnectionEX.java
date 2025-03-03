package Anudip;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBCConnectionEX {

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
			Statement stmt=con.createStatement();
			//4.Execute queries
			ResultSet rs=stmt.executeQuery("select * from person");
			while(rs.next()) {
				System.out.println(rs.getInt(1)+" "+rs.getNString(2)+" "+rs.getInt(3));
			}
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
1 Deepali 22
3 Priti 24
4 Anita 23
*/

