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
//@WebServlet(name = "userAnswer", urlPatterns = {"/userAnswer"})
public class UserAnswer extends HttpServlet {

    public UserAnswer() {
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
            DateFormat dateFormat1 = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            String time1 = dateFormat1.format(date);
            String seekOnlineHealthInfo = request.getParameter("seekOnlineHealthInfo");
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<seekingInfo>").getBytes());
//            file.write(("<time>").getBytes());
//            file.write(time1.getBytes());
//            file.write(("</time>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("seekOnlineHealthInfo").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (seekOnlineHealthInfo != null) {
                file.write(seekOnlineHealthInfo.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (seekOnlineHealthInfo != null) {
                file.write(seekOnlineHealthInfo.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String visitHealthForums = request.getParameter("visitHealthForums");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("visitHealthForums").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (visitHealthForums != null) {
                file.write(visitHealthForums.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (visitHealthForums != null) {
                file.write(visitHealthForums.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String nameOfForum = request.getParameter("nameOfForum");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("nameOfForum").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (nameOfForum != null) {
                file.write(nameOfForum.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthForum_competence1 = request.getParameter("healthForum_competence1");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthForum_competence1").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthForum_competence1 != null) {
                file.write(healthForum_competence1.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthForum_competence1 != null) {
                file.write(healthForum_competence1.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthForum_integrity1 = request.getParameter("healthForum_integrity1");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthForum_integrity1").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthForum_integrity1 != null) {
                file.write(healthForum_integrity1.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthForum_integrity1 != null) {
                file.write(healthForum_integrity1.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthForum_integrity2 = request.getParameter("healthForum_integrity2");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthForum_integrity2").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthForum_integrity2 != null) {
                file.write(healthForum_integrity2.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthForum_integrity2 != null) {
                file.write(healthForum_integrity2.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthForum_general1 = request.getParameter("healthForum_general1");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthForum_general1").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthForum_general1 != null) {
                file.write(healthForum_general1.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthForum_general1 != null) {
                file.write(healthForum_general1.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthForum_competence2 = request.getParameter("healthForum_competence2");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthForum_competence2").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthForum_competence2 != null) {
                file.write(healthForum_competence2.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthForum_competence2 != null) {
                file.write(healthForum_competence2.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthForum_benevolence1 = request.getParameter("healthForum_benevolence1");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthForum_benevolence1").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthForum_benevolence1 != null) {
                file.write(healthForum_benevolence1.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthForum_benevolence1 != null) {
                file.write(healthForum_benevolence1.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthForum_competence3 = request.getParameter("healthForum_competence3");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthForum_competence3").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthForum_competence3 != null) {
                file.write(healthForum_competence3.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthForum_competence3 != null) {
                file.write(healthForum_competence3.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthForum_integrity3 = request.getParameter("healthForum_integrity3");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthForum_integrity3").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthForum_integrity3 != null) {
                file.write(healthForum_integrity3.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthForum_integrity3 != null) {
                file.write(healthForum_integrity3.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthForum_benevolence2 = request.getParameter("healthForum_benevolence2");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthForum_benevolence2").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthForum_benevolence2 != null) {
                file.write(healthForum_benevolence2.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthForum_benevolence2 != null) {
                file.write(healthForum_benevolence2.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthForum_general2 = request.getParameter("healthForum_general2");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthForum_general2").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthForum_general2 != null) {
                file.write(healthForum_general2.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthForum_general2 != null) {
                file.write(healthForum_general2.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthForum_integrity4 = request.getParameter("healthForum_integrity4");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthForum_integrity4").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthForum_integrity4 != null) {
                file.write(healthForum_integrity4.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthForum_integrity4 != null) {
                file.write(healthForum_integrity4.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthForum_benevolence3 = request.getParameter("healthForum_benevolence3");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthForum_benevolence3").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthForum_benevolence3 != null) {
                file.write(healthForum_benevolence3.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthForum_benevolence3 != null) {
                file.write(healthForum_benevolence3.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String visitHealthSites = request.getParameter("visitHealthSites");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("visitHealthSites").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (visitHealthSites != null) {
                file.write(visitHealthSites.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (visitHealthSites != null) {
                file.write(visitHealthSites.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String nameOfSite = request.getParameter("nameOfSite");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("nameOfSite").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (nameOfSite != null) {
                file.write(nameOfSite.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthWebsite_competence1 = request.getParameter("healthWebsite_competence1");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthWebsite_competence1").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthWebsite_competence1 != null) {
                file.write(healthWebsite_competence1.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthWebsite_competence1 != null) {
                file.write(healthWebsite_competence1.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthWebsite_integrity1 = request.getParameter("healthWebsite_integrity1");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthWebsite_integrity1").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthWebsite_integrity1 != null) {
                file.write(healthWebsite_integrity1.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthWebsite_integrity1 != null) {
                file.write(healthWebsite_integrity1.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthWebsite_integrity2 = request.getParameter("healthWebsite_integrity2");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthWebsite_integrity2").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthWebsite_integrity2 != null) {
                file.write(healthWebsite_integrity2.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthWebsite_integrity2 != null) {
                file.write(healthWebsite_integrity2.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthWebsite_general1 = request.getParameter("healthWebsite_general1");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthWebsite_general1").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthWebsite_general1 != null) {
                file.write(healthWebsite_general1.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthWebsite_general1 != null) {
                file.write(healthWebsite_general1.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthWebsite_competence2 = request.getParameter("healthWebsite_competence2");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthWebsite_competence2").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthWebsite_competence2 != null) {
                file.write(healthWebsite_competence2.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthWebsite_competence2 != null) {
                file.write(healthWebsite_competence2.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthWebsite_benevolence1 = request.getParameter("healthWebsite_benevolence1");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthWebsite_benevolence1").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthWebsite_benevolence1 != null) {
                file.write(healthWebsite_benevolence1.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthWebsite_benevolence1 != null) {
                file.write(healthWebsite_benevolence1.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthWebsite_competence3 = request.getParameter("healthWebsite_competence3");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthWebsite_competence3").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthWebsite_competence3 != null) {
                file.write(healthWebsite_competence3.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthWebsite_competence3 != null) {
                file.write(healthWebsite_competence3.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthWebsite_integrity3 = request.getParameter("healthWebsite_integrity3");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthWebsite_integrity3").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthWebsite_integrity3 != null) {
                file.write(healthWebsite_integrity3.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthWebsite_integrity3 != null) {
                file.write(healthWebsite_integrity3.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthWebsite_benevolence2 = request.getParameter("healthWebsite_benevolence2");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthWebsite_benevolence2").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthWebsite_benevolence2 != null) {
                file.write(healthWebsite_benevolence2.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthWebsite_benevolence2 != null) {
                file.write(healthWebsite_benevolence2.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthWebsite_general2 = request.getParameter("healthWebsite_general2");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthWebsite_general2").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthWebsite_general2 != null) {
                file.write(healthWebsite_general2.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthWebsite_general2 != null) {
                file.write(healthWebsite_general2.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthWebsite_integrity4 = request.getParameter("healthWebsite_integrity4");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthWebsite_integrity4").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthWebsite_integrity4 != null) {
                file.write(healthWebsite_integrity4.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthWebsite_integrity4 != null) {
                file.write(healthWebsite_integrity4.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String healthWebsite_benevolence3 = request.getParameter("healthWebsite_benevolence3");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("healthWebsite_benevolence3").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (healthWebsite_benevolence3 != null) {
                file.write(healthWebsite_benevolence3.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (healthWebsite_benevolence3 != null) {
                file.write(healthWebsite_benevolence3.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String when = request.getParameter("when");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("when").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (when != null) {
                file.write(when.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (when != null) {
                file.write(when.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String who = request.getParameter("who");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("who").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (who != null) {
                file.write(who.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (who != null) {
                file.write(who.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String typeOfInfoSought = request.getParameter("typeOfInfoSought");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("typeOfInfoSought").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (typeOfInfoSought != null) {
                file.write(typeOfInfoSought.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String firstWebsite = request.getParameter("firstWebsite");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("firstWebsite").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (firstWebsite != null) {
                file.write(firstWebsite.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String firstNonSearchWebsite = request.getParameter("firstNonSearchWebsite");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("firstNonSearchWebsite").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (firstNonSearchWebsite != null) {
                file.write(firstNonSearchWebsite.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String howMany = request.getParameter("howMany");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("howMany").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (howMany != null) {
                file.write(howMany.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (howMany != null) {
                file.write(howMany.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String foundInfoOnFirstSite = request.getParameter("foundInfoOnFirstSite");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("foundInfoOnFirstSite").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (foundInfoOnFirstSite != null) {
                file.write(foundInfoOnFirstSite.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (foundInfoOnFirstSite != null) {
                file.write(foundInfoOnFirstSite.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String whereInfoFound = request.getParameter("whereInfoFound");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("whereInfoFound").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (whereInfoFound != null) {
                file.write(whereInfoFound.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForLast_factualSupport1 = request.getParameter("lookForLast_factualSupport1");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForLast_factualSupport1").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForLast_factualSupport1 != null) {
                file.write(lookForLast_factualSupport1.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForLast_factualSupport1 != null) {
                file.write(lookForLast_factualSupport1.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForLast_popularity1 = request.getParameter("lookForLast_popularity1");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForLast_popularity1").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForLast_popularity1 != null) {
                file.write(lookForLast_popularity1.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForLast_popularity1 != null) {
                file.write(lookForLast_popularity1.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForLast_factualSupport2 = request.getParameter("lookForLast_factualSupport2");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForLast_factualSupport2").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForLast_factualSupport2 != null) {
                file.write(lookForLast_factualSupport2.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForLast_factualSupport2 != null) {
                file.write(lookForLast_factualSupport2.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForLast_factualSupport3 = request.getParameter("lookForLast_factualSupport3");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForLast_factualSupport3").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForLast_factualSupport3 != null) {
                file.write(lookForLast_factualSupport3.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForLast_factualSupport3 != null) {
                file.write(lookForLast_factualSupport3.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForLast_trust1 = request.getParameter("lookForLast_trust1");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForLast_trust1").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForLast_trust1 != null) {
                file.write(lookForLast_trust1.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForLast_trust1 != null) {
                file.write(lookForLast_trust1.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForLast_effect1 = request.getParameter("lookForLast_effect1");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForLast_effect1").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForLast_effect1 != null) {
                file.write(lookForLast_effect1.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForLast_effect1 != null) {
                file.write(lookForLast_effect1.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForLast_trust2 = request.getParameter("lookForLast_trust2");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForLast_trust2").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForLast_trust2 != null) {
                file.write(lookForLast_trust2.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForLast_trust2 != null) {
                file.write(lookForLast_trust2.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForLast_effect2 = request.getParameter("lookForLast_effect2");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForLast_effect2").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForLast_effect2 != null) {
                file.write(lookForLast_effect2.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForLast_effect2 != null) {
                file.write(lookForLast_effect2.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForLast_effect3 = request.getParameter("lookForLast_effect3");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForLast_effect3").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForLast_effect3 != null) {
                file.write(lookForLast_effect3.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForLast_effect3 != null) {
                file.write(lookForLast_effect3.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForLast_popularity2 = request.getParameter("lookForLast_popularity2");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForLast_popularity2").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForLast_popularity2 != null) {
                file.write(lookForLast_popularity2.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForLast_popularity2 != null) {
                file.write(lookForLast_popularity2.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForLast_factualSupport4 = request.getParameter("lookForLast_factualSupport4");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForLast_factualSupport4").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForLast_factualSupport4 != null) {
                file.write(lookForLast_factualSupport4.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForLast_factualSupport4 != null) {
                file.write(lookForLast_factualSupport4.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForLast_popularity3 = request.getParameter("lookForLast_popularity3");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForLast_popularity3").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForLast_popularity3 != null) {
                file.write(lookForLast_popularity3.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForLast_popularity3 != null) {
                file.write(lookForLast_popularity3.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForLast_popularity4 = request.getParameter("lookForLast_popularity4");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForLast_popularity4").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForLast_popularity4 != null) {
                file.write(lookForLast_popularity4.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForLast_popularity4 != null) {
                file.write(lookForLast_popularity4.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForLast_trust3 = request.getParameter("lookForLast_trust3");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForLast_trust3").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForLast_trust3 != null) {
                file.write(lookForLast_trust3.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForLast_trust3 != null) {
                file.write(lookForLast_trust3.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForLast_effect4 = request.getParameter("lookForLast_effect4");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForLast_effect4").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForLast_effect4 != null) {
                file.write(lookForLast_effect4.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForLast_effect4 != null) {
                file.write(lookForLast_effect4.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForLast_trust4 = request.getParameter("lookForLast_trust4");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForLast_trust4").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForLast_trust4 != null) {
                file.write(lookForLast_trust4.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForLast_trust4 != null) {
                file.write(lookForLast_trust4.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForEver_factualSupport1 = request.getParameter("lookForEver_factualSupport1");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForEver_factualSupport1").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForEver_factualSupport1 != null) {
                file.write(lookForEver_factualSupport1.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForEver_factualSupport1 != null) {
                file.write(lookForEver_factualSupport1.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForEver_popularity1 = request.getParameter("lookForEver_popularity1");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForEver_popularity1").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForEver_popularity1 != null) {
                file.write(lookForEver_popularity1.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForEver_popularity1 != null) {
                file.write(lookForEver_popularity1.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForEver_factualSupport2 = request.getParameter("lookForEver_factualSupport2");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForEver_factualSupport2").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForEver_factualSupport2 != null) {
                file.write(lookForEver_factualSupport2.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForEver_factualSupport2 != null) {
                file.write(lookForEver_factualSupport2.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForEver_factualSupport3 = request.getParameter("lookForEver_factualSupport3");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForEver_factualSupport3").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForEver_factualSupport3 != null) {
                file.write(lookForEver_factualSupport3.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForEver_factualSupport3 != null) {
                file.write(lookForEver_factualSupport3.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForEver_trust1 = request.getParameter("lookForEver_trust1");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForEver_trust1").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForEver_trust1 != null) {
                file.write(lookForEver_trust1.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForEver_trust1 != null) {
                file.write(lookForEver_trust1.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForEver_effect1 = request.getParameter("lookForEver_effect1");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForEver_effect1").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForEver_effect1 != null) {
                file.write(lookForEver_effect1.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForEver_effect1 != null) {
                file.write(lookForEver_effect1.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForEver_trust2 = request.getParameter("lookForEver_trust2");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForEver_trust2").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForEver_trust2 != null) {
                file.write(lookForEver_trust2.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForEver_trust2 != null) {
                file.write(lookForEver_trust2.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForEver_effect2 = request.getParameter("lookForEver_effect2");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForEver_effect2").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForEver_effect2 != null) {
                file.write(lookForEver_effect2.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForEver_effect2 != null) {
                file.write(lookForEver_effect2.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForEver_effect3 = request.getParameter("lookForEver_effect3");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForEver_effect3").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForEver_effect3 != null) {
                file.write(lookForEver_effect3.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForEver_effect3 != null) {
                file.write(lookForEver_effect3.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForEver_popularity2 = request.getParameter("lookForEver_popularity2");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForEver_popularity2").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForEver_popularity2 != null) {
                file.write(lookForEver_popularity2.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForEver_popularity2 != null) {
                file.write(lookForEver_popularity2.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForEver_factualSupport4 = request.getParameter("lookForEver_factualSupport4");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForEver_factualSupport4").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForEver_factualSupport4 != null) {
                file.write(lookForEver_factualSupport4.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForEver_factualSupport4 != null) {
                file.write(lookForEver_factualSupport4.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForEver_popularity3 = request.getParameter("lookForEver_popularity3");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForEver_popularity3").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForEver_popularity3 != null) {
                file.write(lookForEver_popularity3.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForEver_popularity3 != null) {
                file.write(lookForEver_popularity3.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForEver_popularity4 = request.getParameter("lookForEver_popularity4");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForEver_popularity4").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForEver_popularity4 != null) {
                file.write(lookForEver_popularity4.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForEver_popularity4 != null) {
                file.write(lookForEver_popularity4.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForEver_trust3 = request.getParameter("lookForEver_trust3");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForEver_trust3").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForEver_trust3 != null) {
                file.write(lookForEver_trust3.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForEver_trust3 != null) {
                file.write(lookForEver_trust3.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForEver_effect4 = request.getParameter("lookForEver_effect4");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForEver_effect4").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForEver_effect4 != null) {
                file.write(lookForEver_effect4.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForEver_effect4 != null) {
                file.write(lookForEver_effect4.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String lookForEver_trust4 = request.getParameter("lookForEver_trust4");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("lookForEver_trust4").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (lookForEver_trust4 != null) {
                file.write(lookForEver_trust4.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (lookForEver_trust4 != null) {
                file.write(lookForEver_trust4.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("</seekingInfo>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String generalHealth = request.getParameter("generalHealth");
            file.write(("<yourHealthExperience>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("generalHealth").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (generalHealth != null) {
                file.write(generalHealth.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (generalHealth != null) {
                file.write(generalHealth.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String[] relationship_cancer = request.getParameterValues("relationship_cancer");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("relationship_cancer").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (relationship_cancer != null) {
                for (int i = 0; i < relationship_cancer.length; i++) {
                    file.write(relationship_cancer[i].substring(0, 1).getBytes());
                    file.write(("  ").getBytes());
                }
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (relationship_cancer != null) {
                for (int i = 0; i < relationship_cancer.length; i++) {
                    file.write(relationship_cancer[i].substring(1).getBytes());
                    file.write(("  ").getBytes());
                }
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String[] relationship_diabetes = request.getParameterValues("relationship_diabetes");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("relationship_diabetes").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (relationship_diabetes != null) {
                for (int i = 0; i < relationship_diabetes.length; i++) {
                    file.write(relationship_diabetes[i].substring(0, 1).getBytes());
                    file.write(("  ").getBytes());
                }
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (relationship_diabetes != null) {
                for (int i = 0; i < relationship_diabetes.length; i++) {
                    file.write(relationship_diabetes[i].substring(1).getBytes());
                    file.write(("  ").getBytes());
                }
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String[] relationship_heartDisease = request.getParameterValues("relationship_heartDisease");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("relationship_heartDisease").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (relationship_heartDisease != null) {
                for (int i = 0; i < relationship_heartDisease.length; i++){
                    file.write(relationship_heartDisease[i].substring(0, 1).getBytes());
                    file.write(("  ").getBytes());
                }                
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (relationship_heartDisease != null) {
                for (int i = 0; i < relationship_heartDisease.length; i++){
                    file.write(relationship_heartDisease[i].substring(1).getBytes());
                    file.write(("  ").getBytes());
                }               
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String[] relationship_lyme = request.getParameterValues("relationship_lyme");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("relationship_lyme").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (relationship_lyme != null) {
                for (int i = 0; i < relationship_lyme.length; i++){
                    file.write(relationship_lyme[i].substring(0, 1).getBytes());
                    file.write(("  ").getBytes());
                }              
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (relationship_lyme != null) {
                for (int i = 0; i < relationship_lyme.length; i++){
                    file.write(relationship_lyme[i].substring(1).getBytes());
                    file.write(("  ").getBytes());
                }               
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            
            String[] relationship_other = request.getParameterValues("relationship_other");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("relationship_other").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (relationship_other != null) {
                for (int i = 0; i < relationship_other.length; i++){
                    file.write(relationship_other[i].substring(0, 1).getBytes());
                    file.write(("  ").getBytes());
                }              
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (relationship_other != null) {
                for (int i = 0; i < relationship_other.length; i++){
                    file.write(relationship_other[i].substring(1).getBytes());
                    file.write(("  ").getBytes());
                }              
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            
            String relationship_otherName = request.getParameter("relationship_otherName");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("relationship_otherName").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (relationship_otherName != null) {
                file.write(relationship_otherName.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String knowledge_cancer = request.getParameter("knowledge_cancer");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("knowledge_cancer").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (knowledge_cancer != null) {
                file.write(knowledge_cancer.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (knowledge_cancer != null) {
                file.write(knowledge_cancer.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String knowledge_diabetes = request.getParameter("knowledge_diabetes");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("knowledge_diabetes").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (knowledge_diabetes != null) {
                file.write(knowledge_diabetes.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (knowledge_diabetes != null) {
                file.write(knowledge_diabetes.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String knowledge_heartDisease = request.getParameter("knowledge_heartDisease");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("knowledge_heartDisease").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (knowledge_heartDisease != null) {
                file.write(knowledge_heartDisease.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (knowledge_heartDisease != null) {
                file.write(knowledge_heartDisease.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String knowledge_lyme = request.getParameter("knowledge_lyme");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("knowledge_lyme").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (knowledge_lyme != null) {
                file.write(knowledge_lyme.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (knowledge_lyme != null) {
                file.write(knowledge_lyme.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String knowledge_other = request.getParameter("knowledge_other");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("knowledge_other").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (knowledge_other != null) {
                file.write(knowledge_other.substring(0, 1).getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("<label>").getBytes());
            if (knowledge_other != null) {
                file.write(knowledge_other.substring(1).getBytes());
            }
            file.write(("</label>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());

            String knowledge_otherName = request.getParameter("knowledge_otherName");
            file.write(("<question>").getBytes());
            file.write(("<time>").getBytes());
            file.write(time1.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<name>").getBytes());
            file.write(("knowledge_otherName").getBytes());
            file.write(("</name>").getBytes());
            file.write(("<value>").getBytes());
            if (knowledge_otherName != null) {
                file.write(knowledge_otherName.getBytes());
            }
            file.write(("</value>").getBytes());
            file.write(("</question>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.write(("</yourHealthExperience>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            file.write(System.getProperty("line.separator").getBytes());


            file.close();

            response.sendRedirect("task.jsp");
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
