/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Ngo;

import com.DBUtils.DBsingletone;
import com.DBUtils.PasswordValidator;
import com.DBUtils.SendMail;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Raaghu
 */
@WebServlet(name = "NgoReg", urlPatterns = {"/NgoReg"})
public class NgoReg extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String ngoname = request.getParameter("ngoname");
            String ngoemail = request.getParameter("ngoemail");
            String ngopasswd = request.getParameter("ngopasswd");
            String ngoaddress = request.getParameter("ngoaddress");
            String ngocontact = request.getParameter("ngocontact");
            String ngobankaccno = request.getParameter("ngobankaccno");
            String ngobankifsc = request.getParameter("ngobankifsc");
            String ngopanno = request.getParameter("ngopanno");
            String ngolisenceno = request.getParameter("ngolisenceno");
            String ngoaadhaar = request.getParameter("ngoaadhaar");
          
            DBsingletone dbs = DBsingletone.getDbSingletone();
            Connection con = dbs.getConnection();
            PasswordValidator p = new PasswordValidator();
            System.out.println(p.validate("mkyong1A@"));
            if (p.validate(ngopasswd)) {
             
                PreparedStatement ps1 = con.prepareStatement("select*from vngo where ngoemail='" + ngoemail + "' and ngopanno='" + ngopanno + "'");
                ResultSet rs = ps1.executeQuery();
                if (!rs.next()) {
       
                    PreparedStatement ps = con.prepareStatement("insert into vngo(ngoname,ngoemail,ngopasswd,ngoaddress,ngocontact,ngobankaccno,ngobankifsc,ngoaadhaar,ngopanno,ngolisenceno,cdate) values(?,?,?,?,?,?,?,?,?,?,now())");
                    ps.setString(1, ngoname);
                    ps.setString(2, ngoemail);
                    ps.setString(3, ngopasswd);
                    ps.setString(4, ngoaddress);
                    ps.setString(5, ngocontact);
                    ps.setString(6, ngobankaccno);
                    ps.setString(7, ngobankifsc);
                    ps.setString(8, ngoaadhaar);
                    ps.setString(9, ngopanno);
                    ps.setString(10, ngolisenceno);
                    int i = ps.executeUpdate();
                    if (i != 0) {
                        SendMail sm=new SendMail();
                        sm.SendTo(ngoemail,"NGo Sucessfully Registered ,You Can Login once you get a confirmation email from RMK " );
                        out.print(" <script>alert(\"NGo Sucessfully Registered Now You Can Login!\");window.location.href=\"NgoLogin.jsp\";</script>");

                    } else {
                        out.print(" <script>alert(\"Please Try Again!\");window.location.href=\"NgoReg.java.jsp\";</script>");
                    }
                } else {
                    System.out.println("Ngo Already Registered Pls Login");
                    out.print(" <script>alert(\"Ngo Already Registered Pls Login!\");</script>");
                }
            } else {
                out.print(" <script>alert(\"At least one digit, one upper case letter, one lower case letter and one special symbol like=mkyong1A@ \");window.location.href=\"CustReg.jsp\";</script>");

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
