package Servletit;

import Tietovarastopakkaus.Toimenpide;
import Tietovarastopakkaus.Tietovarasto;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "lisaaToimenpide", urlPatterns = {"/lisaaToimenpide"})
public class lisaaToimenpide extends HttpServlet {

    //Määritellään viittaus Tietovarsto-luokkaan
    private Tietovarasto tietovarasto = new Tietovarasto();
    //Määritellään päiväysolio ja päiväys formaatti (esim. 2017-11-07)
    private Date date = new Date();
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
    
    protected void processRequest (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType ("text/Html;charset=UTF-8");
        
        //Talletetaan lomakkeelle syötetyt käyttäjän tiedot
        String kuvaus = request.getParameter("kuvaus");
        String kayttajaID = request.getParameter("kayttajaID");
        String aloiteID = request.getParameter("aloiteID");
        String luontipaivays = sdf.format(date);
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<head>");
            out.println("<title>Servlet lisaaToimenpide</title>");            
            out.println("</head>");
            out.println("<html>");
            out.println("<body>");
            String toimenpideID = null;
            
            out.println("ToimenpideID: "+toimenpideID+"<br>");
            out.println("Toimenpiteen kuvaus: "+kuvaus+"<br>");
            out.println("KäyttäjäID: "+kayttajaID+"<br>");
            out.println("AloiteID: "+aloiteID+"<br>");
            out.println("Luontipäivä: "+luontipaivays+"<br>");
            
            // Luodaan käyttäjä-olio lomakkeelta saatujen tietojen avulla
            Toimenpide toimenpide = new Toimenpide(0, Integer.parseInt(kayttajaID), Integer.parseInt(aloiteID), luontipaivays , kuvaus );
            
            // Kutusutaan metodia lisaaKayttaja. Metodille väliteään kayttaja-olio
            if(tietovarasto.lisaaToimenpide(toimenpide)){
                // Lisäys onnistui
                out.println("<h2>Lisäys onnistui</h2>");
            }else{
                // Lisäys epäonnistui
                out.println("<h2>Lisäys epäonnistui</h2>");
            }
            
            out.println("</body>");
            out.println("</html>");
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
