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
//@WebServlet(name = "postTask", urlPatterns = {"/postTask"})
public class PostTask extends HttpServlet {

    public PostTask() {
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
            HttpSession session = request.getSession(false);
            String time = (String) session.getAttribute("currentSessionUser");
            String path = request.getRealPath("/User");
            File txt = new File(path + "/" + time + ".txt");
            OutputStream file = new FileOutputStream(txt, true);

            //write answers to the file

            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<postTask>").getBytes());
            DateFormat dateFormat1 = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            String time1 = dateFormat1.format(date);
//            file.write(("<time>").getBytes());
//            file.write(time1.getBytes());
//            file.write(("</time>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            String hbo_recommendation = request.getParameter("hbo_recommendation");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("hbo_recommendation").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (hbo_recommendation != null) {
                file.write(hbo_recommendation.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (hbo_recommendation != null) {
                file.write(hbo_recommendation.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());

            String rife_recommendation = request.getParameter("rife_recommendation");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("rife_recommendation").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (rife_recommendation != null) {
                file.write(rife_recommendation.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (rife_recommendation != null) {
                file.write(rife_recommendation.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());

            String probiotics_recommendation = request.getParameter("probiotics_recommendation");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("probiotics_recommendation").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (probiotics_recommendation != null) {
                file.write(probiotics_recommendation.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (probiotics_recommendation != null) {
                file.write(probiotics_recommendation.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());

//            String seekOnlineHealthInfo = request.getParameter("seekOnlineHealthInfo");
//            file.write(System.getProperty("line.separator").getBytes());
//            file.write(("<question>").getBytes());
//            file.write(("<time>").getBytes());
//            file.write(time1.getBytes());
//            file.write(("</time>").getBytes());
//            file.write(("<name>").getBytes());
//            file.write(("seekOnlineHealthInfo").getBytes());
//            file.write(("</name>").getBytes());
//            file.write(("<value>").getBytes());
//            if (seekOnlineHealthInfo != null) {
//                file.write(seekOnlineHealthInfo.substring(0, 1).getBytes());
//            }
//            file.write(("</value>").getBytes());
//            file.write(("<label>").getBytes());
//            if (seekOnlineHealthInfo != null) {
//                file.write(seekOnlineHealthInfo.substring(1).getBytes());
//            }
//            file.write(("</label>").getBytes());
//            file.write(("</question>").getBytes());

            String hbo_explanation = request.getParameter("hbo_explanation");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("hbo_explanation").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (hbo_explanation  != null) {
                file.write(hbo_explanation.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());

            String rife_explanation = request.getParameter("rife_explanation");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("rife_explanation").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (rife_explanation!= null) {
                file.write(rife_explanation.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());
            
            String probiotics_explanation = request.getParameter("probiotics_explanation");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("probiotics_explanation").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (probiotics_explanation!= null) {
                file.write(probiotics_explanation.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());
            
            String importance_effectiveness = request.getParameter("importance_effectiveness");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("importance_effectiveness").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (importance_effectiveness != null) {
                file.write(importance_effectiveness.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (importance_effectiveness!= null) {
                file.write(importance_effectiveness.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());

            String importance_patientReports = request.getParameter("importance_patientReports");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("importance_patientReports").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (importance_patientReports != null) {
                file.write(importance_patientReports.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (importance_patientReports!= null) {
                file.write(importance_patientReports.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            
            String importance_expertReports = request.getParameter("importance_expertReports");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("importance_expertReports").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (importance_expertReports != null) {
                file.write(importance_expertReports.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (importance_expertReports != null) {
                file.write(importance_expertReports.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());

            String importance_trustworthiness = request.getParameter("importance_trustworthiness");
            file.write(System.getProperty("line.separator").getBytes());
             file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("importance_trustworthiness").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (importance_trustworthiness != null) {
                file.write(importance_trustworthiness.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (importance_trustworthiness != null) {
                file.write(importance_trustworthiness.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());

            String importance_factualSupport = request.getParameter("importance_factualSupport");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("importance_factualSupport").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (importance_factualSupport != null) {
                file.write(importance_factualSupport.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (importance_factualSupport != null) {
                file.write(importance_factualSupport.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());

            String importance_popularity = request.getParameter("importance_popularity");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("importance_popularity").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (importance_popularity != null) {
                file.write(importance_popularity.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (importance_popularity != null) {
                file.write(importance_popularity.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());

            String otherComments = request.getParameter("otherComments");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("otherComments").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (importance_popularity != null) {
                file.write(otherComments.getBytes());
            }
            file.write(("</value>").getBytes());

            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("</postTask>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            file.close();

            response.sendRedirect("conclusion.jsp");

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
