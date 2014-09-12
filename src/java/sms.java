/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.util.*;
import java.sql.*;
import java.io.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author QWERTY
 */

public class sms extends HttpServlet {

    static int flag = 0 ;
	private enum Tables{
		BCS,DCS,PTS,PTH,WTS,WTH,LFS,LES,PAY,PAYH,PIS,PAYIT,PSLIP,CS,CR,RTI,HBS;
	}
	static boolean isvalid(String s[],int n)
	{
		if(n!=1&&n!=0)
		{
			return false;
		}
		if(s[0].equals("HELP")&&n==0)
		{	flag =1;
			return true;
		}
		else if(s[0].equals("HELP")&&(s[1].equals("BCS")||s[1].equals("DCS")||s[1].equals("PTS")||s[1].equals("PTH")||s[1].equals("WTS")||s[1].equals("WTH")||s[1].equals("LFS")||s[1].equals("LES")||s[1].equals("PAY")||s[1].equals("PAYH")||s[1].equals("PIS")||s[1].equals("PAYIT")||s[1].equals("PSLIP")||s[1].equals("CS")||s[1].equals("CR")||s[1].equals("RTI")||s[1].equals("HBS")))
		{		flag =2 ;
				return true ;
		}
		else if(s[0].equals("BCS")||s[0].equals("DCS")||s[0].equals("PTS")||s[0].equals("PTH")||s[0].equals("WTS")||s[0].equals("WTH")||s[0].equals("LFS")||s[0].equals("LES")||s[0].equals("PAY")||s[0].equals("PAYH")||s[0].equals("PIS")||s[0].equals("PAYIT")||s[0].equals("PSLIP")||s[0].equals("CS")||s[0].equals("CR")||s[0].equals("RTI")||s[0].equals("HBS"))
		{	flag = 3;
			return true ;
		}
		else
		{
			return false ;
		}
	}
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
                String str= request.getParameter("smst");
                String test[] = new String[50];
		int len = -1;
		str = request.getParameter("smst");
		str = str.toUpperCase();

		StringTokenizer st = new StringTokenizer(str);
		while (st.hasMoreTokens())
		{
			test[++len]=st.nextToken();
		}

	    if(!isvalid(test,len))
		{
			out.println("Invalid String <br> Type HELP for more details...");
		}
            else
		{
                    if(flag == 1){
                        out.println("Enter the following Options:<br>'Help BCS' for birth <br> 'Help DCS' for death query<br>'Help PTS' for property tax query<br>'Help PTH' for property tax history query<br>'Help WTS' for Water tax query<br>'Help WTH' for Water tax query<br>'Help LFS' for License fee query<br>'Help LES' for License expiry query<br>'Help PAY' for Pay details query<br>");
                        }
                    else if(flag==2){
			if(test[1].equals("BCS")){
                            out.println("Enter in following format:<br>'BCS #####' for birth registration query<br>You get:-<br>ULB:'NN Name'<br>Name:'Your Name'<br>DoB:'Date of Birth'<br>Status:'Certificate Status'<br>Commissionar");
			}
                        if(test[1].equals("DCS")){
                            out.println("Enter in following format:<br>'DCS #####' for Death registration query<br>You get:-<br>ULB:'NN Name'<br>Name:'Your Name'<br>DoB:'Date of Death'<br>Status:'Certificate Status'<br>Commissionar");
			}
			if(test[1].equals("PTS")){
                            out.println("Enter in following format:<br>'PTS #####' for Property tax deposit details query<br>You get:-<br>ULB:'NN Name'<br>Name:'Yor Name'<br>DoD:'Date of Deposit'<br>Amount:'Amount'<br>Status:'Certificate Status'<br>Fin year:'Final year'<br>Commissionar");
			}
                        if(test[1].equals("PTH")){
                            out.println("Enter in following format:<br>'PTH #####' for Property tax history for last 5 years<br>");
			}
			if(test[1].equals("WTS")){
                            out.println("Enter in following format:<br>'WTS #####' for Water tax details details query<br>You get:-<br>ULB:'NN Name'<br>Name:'Yor Name'<br>DoD:'Date of Deposit'<br>Amount:'Amount'<br>Status:'Certificate Status'<br>Fin year:'Final year'<br>Commissionar");
			}
                        if(test[1].equals("WTH")){
                            out.println("Enter in following format:<br>'WTH #####' for Water tax history for last 5 years<br>");
			}
			if(test[1].equals("LFS")){
                            out.println("Enter in following format:<br>'LFS #####' for License pay status of the assets<br>You get:-<br>ULB:'NN Name'<br>Name:'Your Name'<br>DoD:'Date of Deposit'<br>Amount:'Amount'<br>Status:'Certificate Status'<br>Fin year:'Final year'<br>Commissionar");
			}
                        if(test[1].equals("LES")){
                            out.println("Enter in following format:<br>'LES #####' for License expiry status of the assets<br>You get:-<br>ULB:'NN Name'<br>Name:'Your Name'<br>L_fee:'Fee'<br>Status:'Certificate Status'<br>last date:'Last Date'<br>Commissionar");
			}
                        if(test[1].equals("PAY")){
                            out.println("Enter in following format:<br>'PAY #####' for Pay details of previous month<br>");
			}
                        if(test[1].equals("PAYH")){
                            out.println("Enter in following format:<br>''PAYH #####' for Pay history of fin year<br>");
			}
                        if(test[1].equals("PIS")){
                            out.println("Enter in following format:<br>'PIS #####' for PIS Status(Employee Verification)<br>");
			}
                        if(test[1].equals("PAYIT")){
                            out.println("Enter in following format:<br>'PAYIT #####' for Income tax Status<br>");
			}
                        if(test[1].equals("PSLIP")){
                            out.println("Enter in following format:<br>'PSLIP #####' for Pay slip of Employee <br>");
			}
                        if(test[1].equals("CS")){
                            out.println("Enter in following format:<br>'CS #####' for Complain Status<br>You get:-<br>ULB:'NN Name'<br>Name:'Your Name'<br>Compl date:'Complain Date'<br>Status:'Certificate Status'<br>Due Date:'Due Date'<br>Resp off:'resp_off'<br>Commissionar");
			}
                        if(test[1].equals("CR")){
                            out.println("Enter in following format:<br>'CS #STDCODE#<br> <....Complain to be written....>' for Complain Register<br>");
			}
                        if(test[1].equals("RTI")){
                            out.println("Enter in following format:<br>'RTI #####' for RTI Status<br>You get:-<br>ULB:'NN Name'<br>Name:'Your Name'<br>Compl date:'Complain Date'<br>Status:'Certificate Status'<br>Due Date:'Due Date'<br>Resp off:'resp_off'<br>Commissionar");
			}
                        if(test[1].equals("HBS")){
                            out.println("Enter in following format:<br>'HBS #####' for Hall Booking Status<br>You get:-<br>ULB:'NN Name'<br>Name:'Your Name'<br>Compl date:'omplain Date'<br>Status:'Certificate Status'<br>Due Date:'Due Date'<br>Resp off:'resp_off'<br>Commissionar");
			}

                    }
                    else{
                       try{

                           PreparedStatement pstmt=null;
                            ResultSet rst = null;

                            String jdbc_url="jdbc:mysql://localhost/nic";
                            String user="root";
                            String password="";

                            String tb_name=test[0];
                            sms.Tables tb = sms.Tables.valueOf(tb_name);

                            Class.forName("com.mysql.jdbc.Driver");

                            Connection con = DriverManager.getConnection(jdbc_url,user,password);

                            switch(tb){
                                 case BCS:
                                    pstmt =con.prepareStatement("Select * From "+tb_name+" Where ID = ? ");
                                    pstmt.setString(1,test[1]);
                                    rst = pstmt.executeQuery();
                                    if(rst.next()){
                                         String Ulb = rst.getString(2);
                                         String Name = rst.getString(3);
                                         String Dob = rst.getString(4);
                                         String Status = rst.getString(5);
                                         String Auth = rst.getString(6);
                                         out.println("ULB:"+Ulb+"<br>Name:"+Name+"<br>Dob:"+Dob+"<br>Status:"+Status+"<br>"+Auth);
                                     }
                                     else{
                                        out.println("Invalid");
                                     }
                                 break;
                                case DCS:
                                     pstmt =con.prepareStatement("Select * From "+tb_name+" Where ID = ? ");
                                     pstmt.setString(1,test[1]);
                                     rst = pstmt.executeQuery();
                                      if(rst.next()){
                                         String Ulb = rst.getString(2);
                                         String Name = rst.getString(3);
                                         String DoD = rst.getString(4);
                                         String Status = rst.getString(5);
                                         String Auth = rst.getString(6);
                                         out.println("ULB:"+Ulb+"<br>Name:"+Name+"<br>DoD:"+DoD+"<br>Status:"+Status+"<br>"+Auth);
                                     }
                                     else{
                                        out.println("Invalid");
                                     }

                                break;
                                case PTS:
                                     pstmt =con.prepareStatement("Select * From "+tb_name+" Where ID = ? ");
                                     pstmt.setString(1,test[1]);
                                     rst = pstmt.executeQuery();
                                      if(rst.next()){
                                         String Ulb = rst.getString(2);
                                         String Name = rst.getString(3);
                                         String DoD = rst.getString(4);
                                         String Amount = rst.getString(5);
                                         String Status = rst.getString(6);
                                         String Fin_year = rst.getString(7);
                                         String Auth = rst.getString(8);
                                         out.println("ULB:"+Ulb+"<br>Name:"+Name+"<br>DoD:"+DoD+"<br>Amount:"+Amount+"<br>Status:"+Status+"<br>Fin year:"+Fin_year+"<br>"+Auth);
                                     }
                                     else{
                                        out.println("Invalid");
                                     }

                                break;
                                    case WTS:
                                     pstmt =con.prepareStatement("Select * From "+tb_name+" Where ID = ? ");
                                     pstmt.setString(1,test[1]);
                                     rst = pstmt.executeQuery();
                                      if(rst.next()){
                                         String Ulb = rst.getString(2);
                                         String Name = rst.getString(3);
                                         String DoD = rst.getString(4);
                                         String Amount = rst.getString(5);
                                         String Status = rst.getString(6);
                                         String Fin_year = rst.getString(7);
                                         String Auth = rst.getString(8);
                                         out.println("ULB:"+Ulb+"<br>Name:"+Name+"<br>DoD:"+DoD+"<br>Amount:"+Amount+"<br>Status:"+Status+"<br>Fin year:"+Fin_year+"<br>"+Auth);
                                     }
                                     else{
                                        out.println("Invalid");
                                     }

                                break;

















                                
                                case LFS:
                                     pstmt =con.prepareStatement("Select * From "+tb_name+" Where ID = ? ");
                                     pstmt.setString(1,test[1]);
                                     rst = pstmt.executeQuery();
                                      if(rst.next()){
                                         String Ulb = rst.getString(2);
                                         String Name = rst.getString(3);
                                         String l_fee = rst.getString(4);
                                         String Status = rst.getString(5);
                                         String last_date = rst.getString(6);
                                         String Auth = rst.getString(7);
                                         out.println("ULB:"+Ulb+"<br>Name:"+Name+"<br>L_fee:"+l_fee+"<br>Status:"+Status+"<br>last date:"+last_date+"<br>"+Auth);
                                     }
                                     else{
                                        out.println("Invalid");
                                     }

                                break;
                                case LES:
                                     pstmt =con.prepareStatement("Select * From "+tb_name+" Where ID = ? ");
                                     pstmt.setString(1,test[1]);
                                     rst = pstmt.executeQuery();
                                      if(rst.next()){
                                         String Ulb = rst.getString(2);
                                         String Name = rst.getString(3);
                                         String l_exp_date = rst.getString(4);
                                         String Auth = rst.getString(5);
                                         out.println("ULB:"+Ulb+"<br>Name:"+Name+"<br>L Exp date:"+l_exp_date+"<br>"+Auth);
                                     }
                                     else{
                                        out.println("Invalid");
                                     }

                                break;
                                case PIS:
                                     pstmt =con.prepareStatement("Select * From "+tb_name+" Where ID = ? ");
                                     pstmt.setString(1,test[1]);
                                     rst = pstmt.executeQuery();
                                      if(rst.next()){
                                         String Ulb = rst.getString(2);
                                         String Name = rst.getString(3);
                                         String Status = rst.getString(4);
                                         String deptt = rst.getString(5);
                                         String section = rst.getString(6);
                                         String DoR = rst.getString(7);
                                         String Auth = rst.getString(8);
                                         out.println("ULB:"+Ulb+"<br>Name:"+Name+"<br>Status:"+Status+"<br>Deptt:"+deptt+"<br>Section:"+section+"<br>DoR:"+DoR+"<br>"+Auth);
                                     }
                                     else{
                                        out.println("Invalid");
                                     }

                                break;
                                case CS:
                                     pstmt =con.prepareStatement("Select * From "+tb_name+" Where ID = ? ");
                                     pstmt.setString(1,test[1]);
                                     rst = pstmt.executeQuery();
                                      if(rst.next()){
                                         String Ulb = rst.getString(2);
                                         String Name = rst.getString(3);
                                         String comp_date = rst.getString(4);
                                         String Status = rst.getString(5);
                                         String due_date = rst.getString(6);
                                         String resp_off = rst.getString(7);
                                         String Auth = rst.getString(8);
                                         out.println("ULB:"+Ulb+"<br>Name:"+Name+"<br>Compl date:"+comp_date+"<br>Status:"+Status+"<br>Due Date:"+due_date+"<br>Resp off:"+resp_off+"<br>"+Auth);
                                     }
                                     else{
                                        out.println("Invalid");
                                     }

                                break;
                                 case RTI:
                                     pstmt =con.prepareStatement("Select * From "+tb_name+" Where ID = ? ");
                                     pstmt.setString(1,test[1]);
                                     rst = pstmt.executeQuery();
                                      if(rst.next()){
                                         String Ulb = rst.getString(2);
                                         String Name = rst.getString(3);
                                         String comp_date = rst.getString(4);
                                         String Status = rst.getString(5);
                                         String due_date = rst.getString(6);
                                         String resp_off = rst.getString(7);
                                         String Auth = rst.getString(8);
                                         out.println("ULB:"+Ulb+"<br>Name:"+Name+"<br>Compl date:"+comp_date+"<br>Status:"+Status+"<br>Due Date:"+due_date+"<br>Resp off:"+resp_off+"<br>"+Auth);
                                     }
                                     else{
                                        out.println("Invalid");
                                     }

                                break;
                                 case HBS:
                                     pstmt =con.prepareStatement("Select * From "+tb_name+" Where ID = ? ");
                                     pstmt.setString(1,test[1]);
                                     rst = pstmt.executeQuery();
                                      if(rst.next()){
                                         String Ulb = rst.getString(2);
                                         String Name = rst.getString(3);
                                         String comp_date = rst.getString(4);
                                         String Status = rst.getString(5);
                                         String due_date = rst.getString(6);
                                         String resp_off = rst.getString(7);
                                         String Auth = rst.getString(8);
                                         out.println("ULB:"+Ulb+"<br>Name:"+Name+"<br>Compl date:"+comp_date+"<br>Status:"+Status+"<br>Due Date:"+due_date+"<br>Resp off:"+resp_off+"<br>"+Auth);
                                     }
                                     else{
                                        out.println("Invalid");
                                     }

                                break;
                                default:
                                     out.println("Invalid<br>Type HELP ....");
                                break;
                            }

                    }
		catch(Exception e){}
		}
            }

        } finally {
            out.close();
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
