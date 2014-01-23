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
//@WebServlet(name = "task", urlPatterns = {"/task"})
public class Task extends HttpServlet {

    public Task() {
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

            //write user's answer into the file             
            file.write(System.getProperty("line.separator").getBytes());
//            file.write(("<task>").getBytes());
//            file.write(("<time>").getBytes());
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            String time1 = dateFormat.format(date);
//            file.write(time1.getBytes());
//            file.write(("</time>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<lymeTreat>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            String treat_answer = request.getParameter("treat_answer");
            file.write(("treat_answer").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (treat_answer != null) {
                file.write(treat_answer.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());

            String treat_trustworthiness = request.getParameter("treat_trustworthiness");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("treat_trustworthiness").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (!"".equals(treat_trustworthiness)) {
                file.write(treat_trustworthiness.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (!"".equals(treat_trustworthiness)) {
                file.write(treat_trustworthiness.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());

            String treat_factualSupport = request.getParameter("treat_factualSupport");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("treat_factualSupport").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (!"".equals(treat_factualSupport)) {
                file.write(treat_factualSupport.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (!"".equals(treat_factualSupport)) {
                file.write(treat_factualSupport.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            
            String treat_ppositive = request.getParameter("treat_ppositive");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("treat_ppositive").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (!"".equals(treat_ppositive)) {
                file.write(treat_ppositive.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (!"".equals(treat_ppositive)) {
                file.write(treat_ppositive.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            
            String treat_epositive = request.getParameter("treat_epositive");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("treat_epositive").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (!"".equals(treat_epositive)) {
                file.write(treat_epositive.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (!"".equals(treat_epositive)) {
                file.write(treat_epositive.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            
            String treat_effective = request.getParameter("treat_effective");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("treat_effective").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (!"".equals(treat_effective)) {
                file.write(treat_effective.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (!"".equals(treat_effective)) {
                file.write(treat_effective.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());

            String treat_popularity = request.getParameter("treat_popularity");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("treat_popularity").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (!"".equals(treat_popularity)) {
                file.write(treat_popularity.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (!"".equals(treat_popularity)) {
                file.write(treat_popularity.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            
            String treat_recommend = request.getParameter("treat_recommend");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("treat_recommend").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (!"".equals(treat_recommend)) {
                file.write(treat_recommend.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (!"".equals(treat_recommend)) {
                file.write(treat_recommend.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("</lymeTreat>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String diagnose_answer = request.getParameter("diagnose_answer");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<lymeDiagnose>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("diagnose_answer").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (diagnose_answer != null) {
                file.write(diagnose_answer.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());

            String diagnose_trustworthiness = request.getParameter("diagnose_trustworthiness");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("diagnose_trustworthiness").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (!"".equals(diagnose_trustworthiness)) {
                file.write(diagnose_trustworthiness.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (!"".equals(diagnose_trustworthiness)) {
                file.write(diagnose_trustworthiness.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());

            String diagnose_factualSupport = request.getParameter("diagnose_factualSupport");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("diagnose_factualSupport").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (!"".equals(diagnose_factualSupport)) {
                file.write(diagnose_factualSupport.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (!"".equals(diagnose_factualSupport)) {
                file.write(diagnose_factualSupport.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            
            String diagnose_ppositive = request.getParameter("diagnose_ppositive");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("diagnose_ppositive").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (!"".equals(diagnose_ppositive)) {
                file.write(diagnose_ppositive.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (!"".equals(diagnose_ppositive)) {
                file.write(diagnose_ppositive.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            
            String diagnose_epositive = request.getParameter("diagnose_epositive");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("diagnose_epositive").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (!"".equals(diagnose_epositive)) {
                file.write(diagnose_epositive.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (!"".equals(diagnose_epositive)) {
                file.write(diagnose_epositive.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            
            String diagnose_effective = request.getParameter("diagnose_effective");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("diagnose_effective").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (!"".equals(diagnose_effective)) {
                file.write(diagnose_effective.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (!"".equals(diagnose_effective)) {
                file.write(diagnose_effective.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());

            String diagnose_popularity = request.getParameter("diagnose_popularity");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("diagnose_popularity").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (!"".equals(diagnose_popularity)) {
                file.write(diagnose_popularity.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (!"".equals(diagnose_popularity)) {
                file.write(diagnose_popularity.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            
            String diagnose_recommend = request.getParameter("diagnose_recommend");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("diagnose_recommend").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (!"".equals(diagnose_recommend)) {
                file.write(diagnose_recommend.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (!"".equals(diagnose_recommend)) {
                file.write(diagnose_recommend.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("</lymeDiagnose>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.close();

            response.sendRedirect("postTask.jsp");

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
