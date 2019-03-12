package Servletit;

import Tietovarastopakkaus.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Alex
 */
@WebServlet(name = "muokkaaAloite", urlPatterns = {"/muokkaaAloite"})
public class muokkaaAloite extends HttpServlet {
    
    // Määritellään viitaus Tietovarasto-luokkaan
    private Tietovarasto tietovarasto = new Tietovarasto();


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        // Talletetaan lomakkeelle syötetut käyttäjän tiedot
        String aloiteID = request.getParameter("aloiteID");
        String aloitekuvaus = request.getParameter("aloitekuvaus");
        
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet muokkaaAloite</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Muokkaa aloite</h1>");
            out.println("AloiteID: "+aloiteID+"<br>");
            out.println("Aloitekuvaus: "+aloitekuvaus+"<br>");
            
            // Luodaan käyttäjä-olio lomakkeelta saatujen tietojen avulla
            Muokkaa muokkaa = new Muokkaa(Integer.parseInt(aloiteID), aloitekuvaus);
            
            // Kutusutaan metodia lisaaKayttaja. Metodille väliteään kayttaja-olio
            if(tietovarasto.muokkaaAloite(muokkaa)){
                // Lisäys onnistui
                out.println("<h2>Muokkaus onnistui</h2>");
            }else{
                // Lisäys epäonnistui
                out.println("<h2>Muokkaus epäonnistui</h2>");
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
