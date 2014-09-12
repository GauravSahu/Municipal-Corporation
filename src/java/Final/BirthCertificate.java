/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Final;

import com.lowagie.text.Chunk;
import com.lowagie.text.Document;
import com.lowagie.text.PageSize;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Rectangle;
import com.lowagie.text.pdf.Barcode128;
import com.lowagie.text.pdf.PdfWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author QWERTY
 */
public class BirthCertificate extends HttpServlet {
 private String Name="";
    String RegistrationNo = "";
             String regid="";
                               String ward="";
                                String Sex = "";
                                String dob = "";
                                String birth_place = "";
                                String father = "";
                                String mother = "";
                                String permanent_address = "";
                                String dor = "";
                                String Date_of_issue= new Date().toString(  );
                                private java.sql.Date dor1;
        
       
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
	}
	public void doGet(HttpServletRequest request, 
				HttpServletResponse response) 
				throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, 
				HttpServletResponse response) 
				throws ServletException, IOException {
             
            
		try {
                        
                        regid = request.getParameter("child_id");
			response.setContentType("application/pdf");
			// Code 1
                                
			
			
                                
                               Rectangle layout = new Rectangle(PageSize.A4);
                                  // layout.setBorderColor(Color.DARK_GRAY);
                                   //Border color
                                  layout.border();
                                   
                                  layout.setBorderWidth(3); 
                                   
                                 
                                  layout.setBorder(Rectangle.BOX);
                                
                                   
                                Document document = new Document(layout);
				PdfWriter.getInstance(document, response.getOutputStream());
				// Code 2
				PdfWriter writer = PdfWriter.getInstance(document, response.getOutputStream());
				document.open();
                                try{
                                    								
                               
                               
                                
                                Class.forName("com.mysql.jdbc.Driver"); 
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/municipal","root","");           
                                PreparedStatement pstmt  = con.prepareStatement("SELECT * FROM child_birth WHERE child_id = ? ");
                                pstmt.setString(1,regid);
                                ResultSet rs1 = pstmt.executeQuery();
                                while (rs1.next()) {
                                    RegistrationNo = rs1.getString("child_id"); 
                                    Name = rs1.getString("child_name");
                                    Sex = rs1.getString("gender");
                                    dob = rs1.getString("date_of_birth");
                                    birth_place = rs1.getString("birth_place");
                                    father = rs1.getString("father_name");
                                    ward = rs1.getString("ulb_id");
                                    mother = rs1.getString("mother_name");
                                    permanent_address = rs1.getString("permanent_address");
                                    dor1 = rs1.getDate("registeration_date");
                                   
                                   
                                }
                                }
                                catch(Exception e){
                                   
                                }
				com.lowagie.text.Image img = com.lowagie.text.Image.getInstance("C:\\Users\\QWERTY\\Documents\\NetBeansProjects\\JavaApplication1\\src\\javaapplication1\\birth5.jpg");
				com.lowagie.text.Image img2 = com.lowagie.text.Image.getInstance("C:\\Users\\QWERTY\\Documents\\NetBeansProjects\\JavaApplication1\\src\\javaapplication1\\stamp.png");
				com.lowagie.text.Image img3 = com.lowagie.text.Image.getInstance("C:\\Users\\QWERTY\\Documents\\NetBeansProjects\\JavaApplication1\\src\\javaapplication1\\stamp2.jpg");
				
				img2.scaleAbsolute(100, 100);
				img3.scaleAbsolute(470, 90);
				
				img.setAbsolutePosition(20, 575);
				// Code 1
                                img2.setAbsolutePosition(25, 103);
				img3.setAbsolutePosition(140, 100);
				document.add(img);
                                document.add(img2);
                                document.add(img3);
                                
				
                               // Code 2
				//img.setRotationDegrees(40); // Code 3
				Barcode128 code128 = new Barcode128();
				code128.setGenerateChecksum(true);
				code128.setCode(regid);
                                code128.setBarHeight(20);
                                code128.setX((float) 1.2);
				document.add(code128.createImageWithBarcode(writer.getDirectContent(), null, null));
		
				
				
				document.add(new  Paragraph("     "));
				document.add(new  Paragraph("     "));
				document.add(new  Paragraph("     "));
				document.add(new  Paragraph("     "));
				document.add(new  Paragraph("     "));
				document.add(new  Paragraph("     "));
				document.add(new  Paragraph("     "));
				document.add(new  Paragraph("     "));
				document.add(new  Paragraph("     "));
				document.add(new  Paragraph("     "));
				document.add(new  Paragraph("     "));
				document.add( new Paragraph("Zone                                                         :     "+ ward+""));
				document.add(Chunk.NEWLINE);
				document.add( new Paragraph("Name                                                        :      "+Name+""));
				document.add(Chunk.NEWLINE);
				document.add( new Paragraph("Sex                                                           :       "+Sex+""));
				document.add(Chunk.NEWLINE);
				document.add( new Paragraph("Date Of Birth                                             :        "+dob+""));
				document.add(Chunk.NEWLINE);
				document.add( new Paragraph("Place Of Birth                                            :        "+birth_place+""));
				document.add(Chunk.NEWLINE);
				document.add( new Paragraph("Name Of Father                                         :      "+father+""));
				document.add(Chunk.NEWLINE);
				document.add( new Paragraph("Name Of Mother                                        :      "+mother+""));
				document.add(Chunk.NEWLINE);
				document.add( new Paragraph("Permanent Residential Address                 :       "+permanent_address+""));
				document.add(Chunk.NEWLINE);
				document.add( new Paragraph("Registration Number                                   :      "+RegistrationNo+""));
				document.add(Chunk.NEWLINE);
				document.add( new Paragraph("Date of Registration                                   :     "+dor1+""));
				document.add(Chunk.NEWLINE);
				
				
                                
				document.add(Chunk.NEWLINE);
                                document.add(Chunk.NEWLINE);
                                document.add(Chunk.NEWLINE);
                                document.add(new Paragraph(Date_of_issue.substring(0,8)+Date_of_issue.substring(24)));
                                document.add(Chunk.NEWLINE);
                                document.add(Chunk.NEWLINE);
                                document.add(Chunk.NEWLINE);
                                
                               
                                document.add(new Paragraph("Note : This certificate is computer generated and does not require any Seal/Signature in original. The authenticity of this certificate can be verified at www.municipalcorporation.com. The Registration Number is unique to each birth.") );
				//  PdfPCell cell2 = new PdfPCell(img, true);
				//   cell2.setFixedHeight(5);
				// cell2.setHorizontalAlignment( Element.ALIGN_LEFT);
				//  document.add(table);
				/*   document.add(new Chunk(Image.getInstance(img),10, 550));
            document.add(new Chunk(Image.getInstance(img1),-5, -42));
            document.add(new  Paragraph("     "));
            document.add(new  Paragraph("     "));
            document.add(new  Paragraph("       11356"));*/
				//   table.addCell(cell2);
				// table.addCell(cell);
				// Code 4
				document.close();
			
			
		}
		catch(Exception ex) {
			Logger.getLogger(BirthCertificate.class.getName()).log(Level.SEVERE, null, ex);
		}
	}
}
