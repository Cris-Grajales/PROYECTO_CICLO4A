package Config;

import com.mongodb.*;
import com.mongodb.client.MongoDatabase;

public class Connect {
	 
	   public static void main( String args[] ) {  
		   try {
	      
	      // Creating a Mongo client 
	      MongoClient mongo = new MongoClient( "localhost" , 27017 ); 
	   
	      // Creating Credentials 
	      MongoCredential credential; 
	      credential = MongoCredential.createCredential("sampleUser", "TiendaDB", 
	         "password".toCharArray()); 
	      System.out.println("Connected to the database successfully");  
	      
	      // Accessing the database 
	      MongoDatabase database = mongo.getDatabase("TiendaDB"); 
	      System.out.println("Credentials ::"+ credential);  
	      
		   }catch(Exception e) {
			   System.err.println("Error: "+e);
		   }
		   } 

}
