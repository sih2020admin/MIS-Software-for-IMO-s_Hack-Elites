/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Ngo;

import com.DBUtils.DBsingletone;
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
import javax.servlet.http.HttpSession;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;

/**
 *
 * @author Raaghu
 */
@WebServlet(name = "Sendrequest", urlPatterns = {"/Sendrequest"})
public class Sendrequest extends HttpServlet {

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
            
            String ngoid = request.getParameter("ngoid");
            String bacno = request.getParameter("bacno");
            String ifsc = request.getParameter("ifsc");
            String amount = request.getParameter("amount");
            String purpose = request.getParameter("purpose");
            String ngopanno = request.getParameter("ngopanno");

            DBsingletone dbs = DBsingletone.getDbSingletone();
            Connection con = dbs.getConnection();

            PreparedStatement ps1 = con.prepareStatement("select*from moneyrequest where ngoid='" + ngoid + "' and bacno='" + bacno + "'");
            ResultSet rs = ps1.executeQuery();
            if (!rs.next()) {
                PreparedStatement ps = con.prepareStatement("insert into moneyrequest(ngoid,bacno,ifsc,amount,purpose,ngopanno,cdate) values(?,?,?,?,?,?,now())");
                ps.setString(1, ngoid);
                ps.setString(2, bacno);
                ps.setString(3, ifsc);
                ps.setString(4, amount);
                ps.setString(5, purpose);
                ps.setString(6, ngopanno);

                int i = ps.executeUpdate();
                if (i != 0) {

                   
                    out.print(" <script>alert(\"Request Sent Sucessfully!\");window.location.href=\"Ngo/AccountDetails.jsp\";</script>");

                } else {

                    out.print(" <script>alert(\"Please Try Again!\");window.location.href=\"Ngo/SendRequest.jsp\";</script>");
                }
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
