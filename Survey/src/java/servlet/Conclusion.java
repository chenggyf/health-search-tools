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
//@WebServlet(name = "Conclusion", urlPatterns = {"/Conclusion"})
public class Conclusion extends HttpServlet {

    public Conclusion() {
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
            //HttpSession session = request.getSession(false);
            HttpSession session = request.getSession(false);
            String time = (String) session.getAttribute("currentSessionUser");
            String path = request.getRealPath("/User");
            File txt = new File(path + "/" + time + ".txt");
            OutputStream file = new FileOutputStream(txt, true);

            DateFormat dateFormat1 = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            String time1 = dateFormat1.format(date);
            //write user's answer into the file           
//            DateFormat dateFormat1 = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
//            Date date = new Date();
//
//            String time1 = dateFormat1.format(date);
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<conclusion>").getBytes());
//            file.write(("<time>").getBytes());
//            file.write(time1.getBytes());
//            file.write(("</time>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            String gender = request.getParameter("gender");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("gender").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (gender != null) {
                file.write(gender.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (gender != null) {
                file.write(gender.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String yearBorn = request.getParameter("yearBorn");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("yearBorn").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (yearBorn != null) {
                file.write(yearBorn.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            
            String initials = request.getParameter("initials");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("initials").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (initials != null) {
                file.write(initials.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String maritalStatus = request.getParameter("maritalStatus");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("maritalStatus").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (maritalStatus != null) {
                file.write(maritalStatus.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (maritalStatus != null) {
                file.write(maritalStatus.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String[] occupation = request.getParameterValues("occupation");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("occupation").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (occupation != null) {
                 for (int i = 0; i < occupation.length; i++){
                     file.write(occupation[i].substring(0, 1).getBytes());
                     file.write((" ").getBytes());
                 }               
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (occupation != null) {
                for (int i = 0; i < occupation.length; i++){
                    file.write(occupation[i].substring(1).getBytes());
                    file.write((" ").getBytes());
                }              
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String education = request.getParameter("education");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("education").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (education != null) {
                file.write(education.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (education != null) {
                file.write(education.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String ethnicity = request.getParameter("ethnicity");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("ethnicity").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (ethnicity != null) {
                file.write(ethnicity.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (ethnicity != null) {
                file.write(ethnicity.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String nationality = request.getParameter("nationality");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("nationality").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (nationality != null) {
                file.write(nationality.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (nationality != null) {
                file.write(nationality.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String us_state = request.getParameter("us_state");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("us_state").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (us_state != null) {
                file.write(us_state.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String language = request.getParameter("language");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("language").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (language != null) {
                file.write(language.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (language != null) {
                file.write(language.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            
            String whereSee = request.getParameter("whereSee");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("whereSee").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (whereSee != null) {
                file.write(whereSee.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String studyComments = request.getParameter("studyComments");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("studyComments").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (studyComments != null) {
                file.write(studyComments.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String emailAddress = request.getParameter("emailAddress");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("emailAddress").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (emailAddress != null) {
                file.write(emailAddress.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String contactMe = request.getParameter("contactMe");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("contactMe").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (contactMe != null) {
                file.write(contactMe.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("</conclusion>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
//            DateFormat dateFormat1 = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
//            Date date = new Date();
            String endingTime = dateFormat1.format(date);
            file.write(("<endingTime>").getBytes());
            file.write(endingTime.getBytes());
            file.write(("</endingTime>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("</data>").getBytes());

            file.close();
            session.invalidate();
//            out.print("<script language=javascript>alert('Thank you for participating in this study!');window.open('', '_self', '');window.close();");
//            out.print("</script>");
            response.sendRedirect("exit.jsp");
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
