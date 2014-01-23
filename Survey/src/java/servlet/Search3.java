/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.customsearch.Customsearch;
import com.google.api.services.customsearch.model.Result;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Cheng Guo
 */
public class Search3 extends HttpServlet {

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
            // Get your query string posted by the user
            String query = request.getParameter("query");
//            String query = "hyperbaric";
            //Instantiate a Customsearch object using NetHttpTransport and the JacksonFactory (JSON library)
            Customsearch customsearch;
            customsearch = new Customsearch(new NetHttpTransport(), new JacksonFactory(), null);
            // Instantiate a Customsearch.Cse.List object using your query string
            com.google.api.services.customsearch.Customsearch.Cse.List list = customsearch.cse().list(query);
            // Set your API KEY
            list.setKey("AIzaSyBHA8MVxsOL-m7HhqtjQYs4OelUNueEMGs");
            // Set your custom search engine ID
            list.setCx("004420932855421078394:2omxas5gw9s");
            //Get page number
            String page = request.getParameter("page");
            list.setStart(new Long(Integer.parseInt(page)*10 + 1));
            // Execute the search
            com.google.api.services.customsearch.model.Search results = list.execute();
            // Get the result items
            List<Result> items = results.getItems();

            HttpSession session = request.getSession(true);
            String currentUser = (String) session.getAttribute("currentSessionUser");
            String url1 = items.get(0).getLink();
            session.setAttribute("3url0" + currentUser, url1);
            String title1 = items.get(0).getHtmlTitle().replace("LymeNet Flash:", "").replace("<b>LymeNet</b> Flash:", "");
            String url2 = items.get(1).getLink();
            session.setAttribute("3url1" + currentUser, url2);
            String title2 = items.get(1).getHtmlTitle().replace("LymeNet Flash:", "").replace("<b>LymeNet</b> Flash:", "");
            String url3 = items.get(2).getLink();
            session.setAttribute("3url2" + currentUser, url3);
            String title3 = items.get(2).getHtmlTitle().replace("LymeNet Flash:", "").replace("<b>LymeNet</b> Flash:", "");
            String url4 = items.get(3).getLink();
            session.setAttribute("3url3" + currentUser, url4);
            String title4 = items.get(3).getHtmlTitle().replace("LymeNet Flash:", "").replace("<b>LymeNet</b> Flash:", "");
            String url5 = items.get(4).getLink();
            session.setAttribute("3url4" + currentUser, url5);
            String title5 = items.get(4).getHtmlTitle().replace("LymeNet Flash:", "").replace("<b>LymeNet</b> Flash:", "");
            String url6 = items.get(5).getLink();
            session.setAttribute("3url5" + currentUser, url6);
            String title6 = items.get(5).getHtmlTitle().replace("LymeNet Flash:", "").replace("<b>LymeNet</b> Flash:", "");
            String url7 = items.get(6).getLink();
            session.setAttribute("3url6" + currentUser, url7);
            String title7 = items.get(6).getHtmlTitle().replace("LymeNet Flash:", "").replace("<b>LymeNet</b> Flash:", "");
            String url8 = items.get(7).getLink();
            session.setAttribute("3url7" + currentUser, url8);
            String title8 = items.get(7).getHtmlTitle().replace("LymeNet Flash:", "").replace("<b>LymeNet</b> Flash:", "");
            String url9 = items.get(8).getLink();
            session.setAttribute("3url8" + currentUser, url9);
            String title9 = items.get(8).getHtmlTitle().replace("LymeNet Flash:", "").replace("<b>LymeNet</b> Flash:", "");
            String url10 = items.get(9).getLink();
            session.setAttribute("3url9" + currentUser, url10);
            String title10 = items.get(9).getHtmlTitle().replace("LymeNet Flash:", "").replace("<b>LymeNet</b> Flash:", "");
            String message = "{" + "\"url1\":" + '"' + url1 + '"' + ",\"title1\":" + '"' + title1 + '"' + ",\"url2\":" + '"' + url2 + '"' + ",\"title2\":" + '"' + title2 + '"'
                    + ",\"url3\":" + '"' + url3 + '"' + ",\"title3\":" + '"' + title3 + '"' + ",\"url4\":" + '"' + url4 + '"' + ",\"title4\":" + '"' + title4 + '"'
                    + ",\"url5\":" + '"' + url5 + '"' + ",\"title5\":" + '"' + title5 + '"' + ",\"url6\":" + '"' + url6 + '"' + ",\"title6\":" + '"' + title6 + '"'
                    + ",\"url7\":" + '"' + url7 + '"' + ",\"title7\":" + '"' + title7 + '"' + ",\"url8\":" + '"' + url8 + '"' + ",\"title8\":" + '"' + title8 + '"'
                    + ",\"url9\":" + '"' + url9 + '"' + ",\"title9\":" + '"' + title9 + '"' + ",\"url10\":" + '"' + url10 + '"' + ",\"title10\":" + '"' + title10 + '"'
                    + "}";
            out.println(message);
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
