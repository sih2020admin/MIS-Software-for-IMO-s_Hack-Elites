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

/**
 *
 * @author Raaghu
 */
@WebServlet(name = "NgoLogin", urlPatterns = {"/NgoLogin"})
public class NgoLogin extends HttpServlet {

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
            String ngoemail = request.getParameter("nuname");
            String npassword = request.getParameter("npassword");
            System.out.println("nuname=" + ngoemail);
            System.out.println("npassword=" + npassword);
            HttpSession session = request.getSession();
            DBsingletone dbs = DBsingletone.getDbSingletone();
            Connection con = dbs.getConnection();

            PreparedStatement ps1 = con.prepareStatement("select*from vngo where ngoemail='" + ngoemail + "' and ngopasswd='" + npassword + "' and isactive=1");
            ResultSet rs = ps1.executeQuery();
            if (rs.next()) {
                session.setAttribute("ngopassword", npassword);
                session.setAttribute("nid", rs.getString("srno"));
                session.setAttribute("ngoname", rs.getString("ngoname"));
                session.setAttribute("ngobankaccno", rs.getString("ngobankaccno"));
                session.setAttribute("ngobankifsc", rs.getString("ngobankifsc"));
                session.setAttribute("ngoemail", ngoemail);
                session.setAttribute("ngocontact", rs.getString("ngocontact"));
                session.setAttribute("ngopanno", rs.getString("ngopanno"));

                out.print(" <script>alert(\"Login Sucessful!\");window.location.href=\"Ngo/NgoProfile.jsp\";</script>");

            } else {

                out.print(" <script>alert(\"Please Try Again!\");window.location.href=\"NgoLogin.jsp\";</script>");
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
