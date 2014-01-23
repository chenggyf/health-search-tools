/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.URL;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Cheng Guo
 */
@WebServlet(name = "NewServlet2", urlPatterns = {"/NewServlet2"})
public class CallML extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        ServletContext servletContext = getServletContext();
        String contextPath = servletContext.getRealPath(File.separator);
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String urlstr = request.getParameter("threadUrl");
            URL url = new URL(urlstr);
            InputStream is = (InputStream) url.getContent();
            BufferedReader br = new BufferedReader(new InputStreamReader(is));
            String line = null;
            StringBuffer sb = new StringBuffer();
            while ((line = br.readLine()) != null) {
                sb.append(line);
            }
            String htmlContent = sb.toString();
            ModificationValues mv = new ModificationValues();
            mv.rootPath = contextPath;
            String output = mv.findAllClasses(htmlContent);
            out.println(output);

            int index1 = output.indexOf(":");
            int index2 = output.indexOf("@");
            int index3 = output.indexOf("*");
            int index4 = output.indexOf("%");
            int index5 = output.indexOf("#");
            String question = (output.substring(index2 + 9, index3)).toString();
            String info = (output.substring(index4 + 10, index5)).toString();
            Double percentexpert = Double.parseDouble(output.substring(index5 + 9));
            Double percentexper = Double.parseDouble(output.substring(index3 + 13, index4));

            HttpSession session = request.getSession(false);
            String time = (String) session.getAttribute("currentSessionUser");
            String path = request.getRealPath("/User");
            File txt = new File(path + "/" + time + ".txt");
            OutputStream file = new FileOutputStream(txt, true);
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            //get current date time with Date()
            Date date = new Date();
            String linkTime = dateFormat.format(date);
            String query = request.getParameter("query");
            String treatment = request.getParameter("treatment");
            file.write(("<link>").getBytes());
            file.write(("<url>").getBytes());
            file.write(urlstr.getBytes());
            file.write(("</url>").getBytes());
            file.write(("<time>").getBytes());
            file.write(linkTime.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<type>").getBytes());
            file.write("saw".getBytes());
            file.write(("</type>").getBytes());
            file.write(("<query>").getBytes());
            file.write(query.getBytes());
            file.write(("</query>").getBytes());
            file.write(("<treatment>").getBytes());
            file.write(treatment.getBytes());
            file.write(("</treatment>").getBytes());
//            file.write(("<question>").getBytes());
//            if (question.equals("0.0")) {
//                file.write("no".getBytes());
//            } else {
//                file.write("yes".getBytes());
//            }
//            file.write(("</question>").getBytes());
            file.write(("<info>").getBytes());
            if (info.equals("0.0")) {
                file.write("no".getBytes());
            } else {
                file.write("yes".getBytes());
            }
            file.write(("</info>").getBytes());
//            file.write(("<percentexpert>").getBytes());
//            if (percentexpert == 0.0) {
//                file.write(("000").getBytes());
//            } else if (percentexpert > 0.0 && percentexpert < 0.15) {
//                file.write(("010").getBytes());
//            } else if (percentexpert >= 0.15 && percentexpert < 0.25) {
//                file.write(("020").getBytes());
//            } else if (percentexpert >= 0.25 && percentexpert < 0.35) {
//                file.write(("030").getBytes());
//            } else if (percentexpert >= 0.35 && percentexpert < 0.45) {
//                file.write(("040").getBytes());
//            } else if (percentexpert >= 0.45 && percentexpert < 0.55) {
//                file.write(("050").getBytes());
//            } else if (percentexpert >= 0.55 && percentexpert < 0.65) {
//                file.write(("060").getBytes());
//            } else if (percentexpert >= 0.65 && percentexpert < 0.75) {
//                file.write(("070").getBytes());
//            } else if (percentexpert >= 0.75 && percentexpert < 0.85) {
//                file.write(("080").getBytes());
//            } else if (percentexpert >= 0.85 && percentexpert < 0.95) {
//                file.write(("090").getBytes());
//            } else if (percentexpert >= 0.95 && percentexpert <= 1.00) {
//                file.write(("100").getBytes());
//            }
//            file.write(("</percentexpert>").getBytes());
            file.write(("<percentexper>").getBytes());
            if (percentexper == 0.0) {
                file.write(("000").getBytes());
            } else if (percentexper > 0.0 && percentexper < 0.15) {
                file.write(("010").getBytes());
            } else if (percentexper >= 0.15 && percentexper < 0.25) {
                file.write(("020").getBytes());
            } else if (percentexper >= 0.25 && percentexper < 0.35) {
                file.write(("030").getBytes());
            } else if (percentexper >= 0.35 && percentexper < 0.45) {
                file.write(("040").getBytes());
            } else if (percentexper >= 0.45 && percentexper < 0.55) {
                file.write(("050").getBytes());
            } else if (percentexper >= 0.55 && percentexper < 0.65) {
                file.write(("060").getBytes());
            } else if (percentexper >= 0.65 && percentexper < 0.75) {
                file.write(("070").getBytes());
            } else if (percentexper >= 0.75 && percentexper < 0.85) {
                file.write(("080").getBytes());
            } else if (percentexper >= 0.85 && percentexper < 0.95) {
                file.write(("090").getBytes());
            } else if (percentexper >= 0.95 && percentexper <= 1.00) {
                file.write(("100").getBytes());
            }
            file.write(("</percentexper>").getBytes());          
            file.write(("</link>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(CallML.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(CallML.class.getName()).log(Level.SEVERE, null, ex);
        }
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
