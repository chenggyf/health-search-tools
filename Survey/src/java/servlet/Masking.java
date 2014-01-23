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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/**
 *
 * @author Cheng Guo
 */
//@WebServlet(name = "search-results", urlPatterns = {"/search-results"})
public class Masking extends HttpServlet {

    public Masking() {
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
    public String Masking(String url) throws IOException {
        //use jsoup to mask Lymenet 
        Document doc = Jsoup.connect(url).timeout(0).get();


        Element body = doc.select("body").first();
        body.attr("height", "96.5%");
        //add a navigation bar here
        Element head = doc.select("head").first();
        head.append("<script src=\"http://code.jquery.com/jquery.js\"></script>"
                + "<script src=\"http://getbootstrap.com/2.3.2/assets/js/bootstrap.js\" type=\"text/javascript\"></script>"
                + "<link href=\"http://getbootstrap.com/2.3.2/assets/css/bootstrap.css\" rel=\"stylesheet\" media=\"screen\">"
                + "<script src=\"https://www.google.com/jsapi\" type=\"text/javascript\"></script>");
        Element table = doc.select("table").first();
        table.attr("width", "100%");

        //change the title
        Element title = head.select("title").first();
        title.text("Online Health Information Study");

//        table.before("<div class=\"navbar\">"
//                + "<div class=\"navbar-inner\">"
//                + "<div class=\"container\" style=\"margin-left: 50px\">"
//                + "<button type=\"button\" class=\"btn btn-navbar\" data-toggle=\"collapse\" data-target=\".nav-collapse\">"
//                + "<span class=\"icon-bar\"></span>"
//                + "<span class=\"icon-bar\"></span>"
//                + "<span class=\"icon-bar\"></span>"
//                + "</button>"
//                + "<a class=\"brand\" href=\"#\">Lymelife</a>"
//                + "<div class=\"nav-collapse collapse\">"
//                + "<ul class=\"nav\">"
//                + "<li class=\"active\"><a href=\"http://localhost:8010/Lymelife/\">Home</a></li>"
//                + "<li><a href=\"#about\">About</a></li>"
//                + "<li><a href=\"#contact\">Contact</a></li>"
//                + "</ul>"
//                + "</div>"
//                + "</div>"
//                + "</div>"
//                + "</div>");

        table.before("<div style='margin-left:3.5%;'><br><input type=\"button\" class=\"btn btn-large btn-primary\" value=\"Go back to the results\" onclick=\"window.open('', '_self', '');window.close();\"></div>");

        table.wrap("<div id=wrap style=margin-right:1%;margin-left:1%;min-height:100%;height:auto;margin-bottom:5px;></div>");

        //remove the side bar
        Element sideBar = doc.select("td[width=120]").first();
        sideBar.remove();

        // remove the line "UBBFriend: Email This Page to Someone!" and the table befor the line
        Element UBBLine = doc.select("table[width=95%]").get(1);
        UBBLine.remove();
        Element spanTable1 = doc.select("table[width=95%]").first();
        spanTable1.remove();

        Element spanTable4 = doc.select("table[border=0]").get(2);
        spanTable4.attr("style", "display:none");
        spanTable4.attr("height", "0");

        //remove the table after the post table
        Element spanTable2 = doc.select("table[width=95%]").get(1);
        spanTable2.remove();

        //change the size of the post table
        Element postTable = doc.select("table[width=95%]").first();
        postTable.attr("width", "100%");

        //remove the img
        Element flashD = doc.select("table").first().select("a").first();
        flashD.remove();

        //remove the header
        Element header = doc.select("center").first();
        header.remove();

        //change the font   
        Elements font = doc.select("font");
        font.attr("face", "Helvetica");

        //change the title bar
        Elements authorTopic = doc.select("font[color=#000080]");
        authorTopic.attr("color", "#0088CC");
        authorTopic.attr("size", "2.5px");
        Element tbr = doc.select("tr[bgcolor=#D5E6E1]").first();
        tbr.attr("bgcolor", "#F7F8E0");
        Elements date = doc.select("font[color=#800080]");
//        date.attr("color", "#0088CC");
//        date.select("a").remove();
        date.remove();

        //change the look and feel of author
        Elements author = doc.select("td[width=18%]");
        author.select("font[size=2]").attr("color", "#8A0808");
        author.select("font[size=2]").attr("style", "font-weight:bold");
        author.select("font[size=2]").select("a").attr("style", "color:#8A0808");

        author.select("font[size=1]").remove();

        //change the background color of the table
        Elements tr1 = doc.select("tr[bgcolor=#dedfdf]");
        tr1.attr("bgcolor", "white");
        Elements tr2 = doc.select("tr[bgcolor=#f7f7f7]");
        tr2.attr("bgcolor", "white");

        //change the color of all <hr>
        Elements hr = doc.select("hr");
        hr.attr("color", "#F5F6CE");
        hr.attr("size", "3%");

        //chang the border color of table
        Element border = doc.select("table[width=95%]").first();
        Element border1 = border.select("table[cellpadding=3]").first();
        border1.attr("border", "1");
        border1.attr("bordercolor", "#0088CC");
        Elements td = doc.select("td[bgcolor=#dedfdf]");
        td.attr("bgcolor", "white");

        //remove the icon
        Elements tr = doc.select("tr[bgcolor=white]");
        tr.select("img").remove();

        //remove IP


        //remove the bottom part
        Element quickReply = doc.select("div[id=quickreply]").first();
        if (quickReply != null) {
            quickReply.remove();
        }
        Element spanTable5 = doc.select("table[border=0]").get(5);
        spanTable5.remove();
        Element spanTable6 = doc.select("table[border=0]").get(5);
        spanTable6.remove();
        Element spanTable7 = doc.select("center").get(2);
        spanTable7.remove();
        Element spanTable8 = doc.select("center").get(2);
        spanTable8.remove();
        Element spanTable9 = doc.select("center").get(2);
        spanTable9.remove();
        Element hr1 = doc.select("hr").last();
        hr1.remove();
        Element hr2 = doc.select("hr").last();
        hr2.remove();
        Element hr3 = doc.select("hr").last();
        hr3.remove();

        Elements information = doc.select("td[align=left]");
        Elements infoElement = information.select("font[size=1]");
        for (int i = 0; i < infoElement.size(); i++) {
            String infoText = infoElement.get(i).text();
            if (infoText.contains("Posts:")) {
                if (infoText.contains("From")) {
                    String replaceText1 = infoElement.get(i).text().replaceAll("Posts:", "<span style=\"color:#0088CC\">Posts:</span>");
                    int index1 = replaceText1.indexOf("From");
                    String posts = replaceText1.substring(0, index1);
                    String replaceText2 = replaceText1.replaceAll("From", "<span style=\"color:#0088CC\">From:</span>");
                    int index2 = replaceText2.indexOf("Registered");
                    String from = replaceText2.substring(index1, index2);
                    String replaceText3 = replaceText2.replaceAll("Registered:", "<span style=\"color:#0088CC\">Registered:</span>");
                    String registered = replaceText3.substring(index2);
                    String replaceText4 = replaceText3.replaceAll("IP:Logged", " ");
                    int index3 = replaceText3.indexOf("IP");
                    infoElement.get(i).html((posts + from + registered).substring(0, index3 - 3));
                } else {
                    if (infoText.contains("Registered")) {
                        String replaceText1 = infoElement.get(i).text().replaceAll("Posts:", "<span style=\"color:#0088CC\">Posts:</span>");
                        int index1 = replaceText1.indexOf("Registered");
                        String posts = replaceText1.substring(0, index1);
                        String replaceText2 = replaceText1.replaceAll("Registered:", "<span style=\"color:#0088CC\">Registered:</span>");
                        String registered = replaceText2.substring(index1);
                        int index2 = replaceText2.indexOf("IP");
                        infoElement.get(i).html((posts + registered).substring(0, index2 - 3));
                    }
                }
            } else {
                if (infoText.contains("IP:")) {
                    infoElement.get(i).remove();
                }
            }
        }

        //add to the bottom part
        Element wrap = doc.select("div[id=wrap]").first();
        wrap.after("<div id=\"footer\" style=\"background-color: #f5f5f5;\">\n"
                + "            <div class=\"container\" style=\"margin-left: 3.5%;\">\n"
                + "                <p class=\"muted credit\" style=\"margin: 20px 0;\">Human-Computer Interaction Institute, Carnegie Mellon University | 5000 Forbes Ave | Pittsburgh, PA 15213</p>\n"
                + "            </div>\n"
                + "        </div>");

        Element spanTable10 = doc.select("table[width=95%]").last();
        spanTable10.remove();

        return doc.toString();


    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try {
            PrintWriter out = response.getWriter();
            /* TODO output your page here. You may use following sample code. */
            String url2 = request.getParameter("url");
            System.out.println(url2);
            String term = request.getParameter("term");
//            String seekInfo = request.getParameter("seekInfo");
//            System.out.println(seekInfo);
//            int index1 = seekInfo.indexOf("_");
//            int index2 = seekInfo.indexOf(".");
//            String question = seekInfo.substring(index1 + 1, index2);
            String infoLinks = request.getParameter("infoLinks");
//            int index3 = infoLinks.indexOf("_");
//            int index4 = infoLinks.indexOf(".");
//            String info = infoLinks.substring(index3 + 1, index4);
//            String prolific = request.getParameter("prolific");
//            int index5 = prolific.indexOf("_");
//            int index6 = prolific.indexOf(".");
//            String percentexpert = prolific.substring(index5 + 1, index6);
            String experiential = request.getParameter("experiential");
//            int index7 = experiential.indexOf("_");
//            int index8 = experiential.indexOf(".");
//            String percentexper = experiential.substring(index7 + 1, index8);
            //System.out.println(url2);
            //System.out.println(hyperbaricUrl);
            System.out.println(url2);
            //write link and time into file
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
            file.write(("<link>").getBytes());
            file.write(("<url>").getBytes());
            file.write(url2.getBytes());
            file.write(("</url>").getBytes());
            file.write(("<time>").getBytes());
            file.write(linkTime.getBytes());
            file.write(("</time>").getBytes());
            file.write(("<type>").getBytes());
            file.write("clicked".getBytes());
            file.write(("</type>").getBytes());
            file.write(("<query>").getBytes());
            file.write(query.getBytes());
            file.write(("</query>").getBytes());
            file.write(("<term>").getBytes());
            file.write(term.getBytes());
            file.write(("</term>").getBytes());
//            file.write(("<question>").getBytes());
//            file.write(question.getBytes());
//            file.write(("</question>").getBytes());
            file.write(("<info>").getBytes());
            file.write(infoLinks.getBytes());
            file.write(("</info>").getBytes());
//            file.write(("<percentexpert>").getBytes());
//            file.write(percentexpert.getBytes());
//            file.write(("</percentexpert>").getBytes());
            file.write(("<percentexper>").getBytes());
            file.write(experiential.getBytes());
            file.write(("</percentexper>").getBytes());
            file.write(("</link>").getBytes());
            file.write(System.getProperty("line.separator").getBytes());
            out.println(Masking(url2));
            file.close();

        } catch (Exception ex) {
            try {
                throw ex;
            } catch (Exception ex1) {
                Logger.getLogger(Masking.class.getName()).log(Level.SEVERE, null, ex1);
            }
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
