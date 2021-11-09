import java.util.Scanner;
import java.io.File;
import java.io.FileReader;
import java.io.BufferedReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;

// En este exercici, lo que farem sera a traves de un ficher csv, sera recorrerlo i agregarlo 
// a un array, amb una separcio de punt i coma i per ultim farem un insert into dels
// datos que hi ha en el ficher, per a que se importen a la nostra base de datos (PhpMyAdmin).
// Reseña: primer tindre que fer la conexion a la nostra bese de datos, sino no funcionara
// el programa.

public class acteva4 
{
	static Scanner teclat = new Scanner(System.in);
	
	static String[] lli;
	
	public static void main(String[] args) 
	{
		try 
		{
			String f = "AE04_T1_4_JDBC_Dades.csv";
			
			File ficher = new File(f);	
		
			FileReader fr = new FileReader(ficher);
			
			BufferedReader br = new BufferedReader(fr);
			
			String linea = br.readLine();
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con =
					
			DriverManager.getConnection("jdbc:mysql://localhost:3306/llibres","root","");
			
			Statement stmt = con.createStatement();
			
			linea = br.readLine();
			
			System.out.print("Dades del ficher csv. \n");
			
			while(linea != null) 
			{
				lli = linea.split(";");
				
				if(lli[2] == "") 
				{
					lli[2] = "N.C";			
				}

				PreparedStatement ps = con.prepareStatement("INSERT INTO llibres (titol,autor,anynaixement,anypublicacio,editorial,numpagines) VALUES(?,?,?,?,?,?)");
					
				ps.setString(1,lli[0]);
				ps.setString(2,lli[1]);
				ps.setString(3,lli[2]);
				ps.setInt(4,Integer.parseInt(lli[3]));
				ps.setString(5,lli[4]);
				ps.setInt(6,Integer.parseInt(lli[5]));
				ps.executeUpdate();
				
				System.out.println(linea);
				
				linea = br.readLine();
				
			}
			fr.close();
			br.close();
			
			ResultSet rs = stmt.executeQuery("SELECT titol,autor,anypublicacio FROM llibres WHERE anynaixement<1950");
			
			if(con != null) 
			{
				System.out.print("\n");
				
				System.out.println("Resultat de les dades del primer select.");
				while(rs.next()) 
				{
					System.out.println(rs.getString(1) + rs.getString(2) +
					rs.getString(3));
				}
			}
			rs.close();
			
			ResultSet rs1 = stmt.executeQuery("SELECT editorial FROM llibres WHERE anypublicacio>=2000");
			
			if(con != null) 
			{
				System.out.print("\n");
				
				System.out.println("Resultat de les dades del segon select.");
				while(rs1.next()) 
				{
					System.out.println(rs1.getString(1));
				}
				
				System.out.print("\n");
				System.out.println("Conexio amb la base de dades realitza amb exit.");
				System.out.println("Insercio realitza correctament.");
			}
			
			rs1.close();
			stmt.close();
			con.close();
		}
		catch(Exception e) 
		{
			System.out.println("Error amb la conexio amb la base de dades.");
			System.out.println("Error en la insercio de dades amb la base de dades.");
			e.printStackTrace();
		}
	}
}