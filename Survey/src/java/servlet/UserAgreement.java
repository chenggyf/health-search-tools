/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Cheng Guo
 */
//@WebServlet(name = "userAgreement", urlPatterns = {"/userAgreement"})
public class UserAgreement extends HttpServlet {

    public UserAgreement() {
    }

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            DateFormat dateFormat = new SimpleDateFormat("MMddHHmmss");
            //get current date time with Date()
            Date date = new Date();
            String time = dateFormat.format(date);
            HttpSession session = request.getSession(true);
            session.setAttribute("currentSessionUser", time);
            //create filw for each user
            String path = request.getRealPath("/User");
            File txt = new File(path + "/" + time + ".txt");
            txt.createNewFile();
            OutputStream file = new FileOutputStream(txt);
            //write time into the file
//            String time2 = request.getParameter("abc");
//            out.println(time2);
////            file.write(("<startingTime>").getBytes());
//            file.write(time2.getBytes());
////            file.write(("</startingTime>").getBytes());
            DateFormat dateFormat1 = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            String time1 = dateFormat1.format(date);
            file.write(("<?xml version=\"1.0\"?>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<data>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<startingTime>").getBytes());
            file.write(time1.getBytes());
            file.write(("</startingTime>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            //write user's agreements into the file          
            String agreement = request.getParameter("agreement");
            file.write(("<agreement>").getBytes());
            file.write(agreement.getBytes());
            file.write(("</agreement>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            
            
            if (agreement.equals("I do not agree to participate in this research study.")) {
                file.write(("</data>").getBytes());
                session.invalidate();
                response.sendRedirect("early_exit.jsp");
            }
            else{
                response.sendRedirect("preSurvey.jsp");
            }
            file.close();

        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
