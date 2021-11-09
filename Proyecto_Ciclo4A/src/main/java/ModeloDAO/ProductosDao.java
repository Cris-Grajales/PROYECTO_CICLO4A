package ModeloDAO;

import javax.swing.JOptionPane;

public class ProductosDao {

	
public boolean Cargar_Producto(String Ruta) {
	 
	boolean resul=false;
	   
	  Runtime r = Runtime.getRuntime();
	  Process p = null;
	  
	String command =  "mongoimport --db TiendaDB --collection db_productos --type csv --file " + Ruta+"--headerline";
	  try {
	   p = r.exec(command);
	  
	   resul=true;
	   JOptionPane.showMessageDialog(null,"Reading csv into Database");
	   
	  } catch (Exception e){
		 JOptionPane.showMessageDialog(null,"Error executing " + command + e.toString());
	  }
	  return resul;


}}
