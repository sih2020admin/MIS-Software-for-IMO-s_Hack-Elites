package com.Ngo;

import com.DBUtils.DBsingletone;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "NGOChangePassword", urlPatterns = {"/NGOChangePassword"})
public class NGOChangePassword extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
      try (PrintWriter out = response.getWriter()) {
               HttpSession session = request.getSession();
            String nid = (String) session.getAttribute("nid");
            String npassword = ((String) session.getAttribute("npassword"));
            String oldpasswd = request.getParameter("oldpasswd");
            String newpasswd = request.getParameter("newpasswd");
            String conpasswd = request.getParameter("conpasswd");
            DBsingletone dbs = DBsingletone.getDbSingletone();
            Connection con = dbs.getConnection();
            if (oldpasswd.equals(npassword)) {
                if (conpasswd.equals(newpasswd)) {
                    PreparedStatement ps = con.prepareStatement("update ngo set npassword='" + conpasswd + "' where nid='" + nid + "'");
                    int i = ps.executeUpdate();
                    if (i != 0) {
                         session.setAttribute("npassword", conpasswd);
                        out.print("<script>alert(\"Password Sucessfully Changed!\");window.location.href=\"NgoProfile.jsp\";</script>");

                    } else{
                        out.print("<script>alert(\"Try again!\");window.location.href=\"Ngo/ChangePassword.jsp\";</script>");
                    }
                } else {
                    out.print("<script>alert(\"New  and confirm passwords doesn't  match!\");window.location.href=\"Ngo/ChangePassword.jsp\";</script>");
                }
            } else {
                out.print("<script>alert(\"Current password is wrong!\");window.location.href=\"Ngo/ChangePassword.jsp\";</script>");
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