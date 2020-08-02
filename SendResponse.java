package com.Rmk;

import com.DBUtils.DBsingletone;
import com.DBUtils.NewClass;
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
import javax.servlet.http.HttpSession;

@WebServlet(name = "SendResponse", urlPatterns = {"/SendResponse"})
public class SendResponse extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            int balance = 0;
            int totalbalance = 0;
            String paymentamount = request.getParameter("paymentamount");
            String message = request.getParameter("message");
            String sanctionnu = request.getParameter("sanctionnu");
            String ngoid = request.getParameter("ngoid");
            HttpSession session = request.getSession();
            String rid = (String) session.getAttribute("rid");
            DBsingletone dbs = DBsingletone.getDbSingletone();
            Connection con = dbs.getConnection();
            PreparedStatement ps = con.prepareStatement("update moneyrequest set paymentamount='" + paymentamount + "', pcdate= now(),isactive=1 where sanctionnu='" + sanctionnu + "'");

            int j = ps.executeUpdate();
            if (j != 0) {
                PreparedStatement ps1 = con.prepareStatement("insert into transaction(ngoid,balanceamt,transactedamt,cid,transactiontype,tdate) value(?,?,?,?,?,now())");

                PreparedStatement ps3 = con.prepareStatement("select bankbalance from vngo where ngoid='" + ngoid + "'");
                ResultSet rs3 = ps3.executeQuery();
                while (rs3.next()) {
                    balance = Integer.parseInt(rs3.getString("bankbalance"));

                }
                System.out.println("bankbalance=" + balance);
                totalbalance = balance + Integer.parseInt(paymentamount);
                PreparedStatement ps4 = con.prepareStatement("update vngo set bankbalance='" + totalbalance + "'  where ngoid='" + ngoid + "'");
                int i4 = ps4.executeUpdate();
                ps1.setString(1, ngoid);
                ps1.setString(2, String.valueOf(totalbalance));
                ps1.setString(3, paymentamount);
                ps1.setString(4, rid);
                ps1.setString(5, "credit");
                int ii = ps1.executeUpdate();
                NewClass sms = new NewClass();
                sms.sendSms("Sanctioned amount is " + paymentamount+" About Loan ="+message, "9620765819");
                SendMail ss=new SendMail();
                ss.SendTo("rashtriyamahilasevakendra@gmail.com", "Sanctioned amount is " + paymentamount+" About Loan ="+message);
                out.print(" <script>alert(\"Profile Successfully Updated!\");window.location.href=\"Rmk/ViewRequest.jsp\";</script>");

            } else {

                out.print(" <script>alert(\"Please Try Again!\");window.location.href=\"Rmk/ViewRequest.jsp\";</script>");
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
