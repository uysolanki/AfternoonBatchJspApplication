package db;


import java.sql.Connection;
import java.sql.DriverManager;

public class MySQLDbConnection {

	
	public static Connection getConnection() throws Exception
	{
		Connection con;
		
		String driverName="com.mysql.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/";
		String databaseName="excelrafternoondb";
		String username="root";
		String password="";
		
		Class.forName(driverName);
		
		con=DriverManager.getConnection(url+databaseName,username,password);
		return con;
	}
}
