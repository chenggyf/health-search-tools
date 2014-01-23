/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.customsearch.Customsearch;
import com.google.api.services.customsearch.model.Result;
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
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONObject;

/**
 *
 * @author Cheng Guo
 */
public class Ml1 extends HttpServlet {

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
            //Get url number
            Integer urlNum = Integer.parseInt(request.getParameter("urlNum"));
            HttpSession session = request.getSession(true);
            String currentUser = (String) session.getAttribute("currentSessionUser");
            String url = (String) session.getAttribute("1url" + urlNum + currentUser);
            URL MLurl = new URL(url);
            InputStream is = (InputStream) MLurl.getContent();
            BufferedReader br = new BufferedReader(new InputStreamReader(is));
            String line = null;
            StringBuffer sb = new StringBuffer();
            while ((line = br.readLine()) != null) {
                sb.append(line);
            }
            String htmlContent = sb.toString();
            ModificationValues mv = new ModificationValues();
            mv.rootPath = contextPath;
            String message = mv.findAllClasses(htmlContent);
            JSONObject jsonObj = new JSONObject(message);
            String percentexper = (String) jsonObj.get("experiential");
            String info = (String) jsonObj.get("infoLinks");
            //write link and time into file
            String time = (String) session.getAttribute("currentSessionUser");
            String path = request.getRealPath("/User");
            File txt = new File(path + "/" + time + ".txt");
            OutputStream file = new FileOutputStream(txt, true);
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            //get current date time with Date()
            Date date = new Date();
            String linkTime = dateFormat.format(date);
            String query = request.getParameter("query");
            file.write(("<link>").getBytes());
            file.write(("<url>").getBytes());
            file.write(url.getBytes());
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
            file.write(("<term>").getBytes());
            file.write(("treatment").getBytes());
            file.write(("</term>").getBytes());
            file.write(("<info>").getBytes());
            if (info.equals("0.0")) {
                file.write(("No").getBytes());
            } else {
                file.write(("Yes").getBytes());
            }
            file.write(("</info>").getBytes());
            file.write(("<percentexper>").getBytes());
            file.write(percentexper.getBytes());
            file.write(("</percentexper>").getBytes());
            file.write(("</link>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());           
            out.println(message);
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
            Logger.getLogger(Ml1.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Ml1.class.getName()).log(Level.SEVERE, null, ex);
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
