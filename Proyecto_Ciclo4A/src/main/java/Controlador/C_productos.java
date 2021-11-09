package Controlador;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

import ModeloDAO.ProductosDao;

/**
 * Servlet implementation class C_productos
 */
@WebServlet("/C_productos")
@MultipartConfig
public class C_productos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public C_productos() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           ProductosDao proDao= new ProductosDao(); 
		   if(request.getParameter("cargar")!=null) {
			
			Part archivo= request.getPart("archivo");
			if(archivo.getSize()>0) {

				
			String Url="C:\\documentos\\";
			
			try {
			InputStream file= archivo.getInputStream();
			File copia = new File(Url+"prueba.csv");
			FileOutputStream escribir= new FileOutputStream(copia);
			int num= file.read();
			while(num != -1) {
			 escribir.write(num);
			 num=file.read();
	      	}
			escribir.close();
			file.close();
			JOptionPane.showMessageDialog(null, "Se Cargo el Archivo Correctamente.");
			
			if(proDao.Cargar_Producto(Url+"prueba.csv")) {
				response.sendRedirect("Productos.jsp?men=Se Inserto Los Libros Correctamente");
			}else
			{
				response.sendRedirect("Productos.jsp?men=No se Inserto los Libros");
			}
			}catch(Exception e) {
				JOptionPane.showMessageDialog(null, "Error de Archivo....."+e);
			}
		   }
			
            } 

	}
	}


