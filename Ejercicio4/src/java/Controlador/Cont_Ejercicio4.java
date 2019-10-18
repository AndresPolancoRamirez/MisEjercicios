/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author FORMACIÓN
 */
public class Cont_Ejercicio4 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           int mes = 0;  
           int dia = 0;
            mes = Integer.parseInt(request.getParameter("mes"));
            switch(mes){
                case 1:
                    if(mes==1&& dia==30);
                     out.println("enero tiene 30 dias");
                    break;
                case 2:
                    if(mes==2&& dia==28);
                     out.println("febrero tiene 28 dias");
                    break;
                case 3:
                    if(mes==3&& dia==30);
                     out.println("marzo tiene 30 dias");
                      break;
                case 4:
                    if(mes==4&& dia==30);
                     out.println("abril tiene 30 dias");
                    break;
                case 5:
                    if(mes==5&& dia==31);
                     out.println("mayo tiene 31 dias");
                    break;
                case 6:
                    if(mes==6&& dia==30);
                     out.println("junio tiene 30 dias");
                    break;
                case 7:
                    if(mes==7&& dia==31);
                     out.println("julio tiene 31 dias");
                    break;
                case 8:
                    if(mes==8&& dia==31);
                     out.println("agosto tiene 31 dias");
                    break; 
                case 9:
                    if(mes==9&& dia==30);
                     out.println("septiembre tiene 30 dias");
                    break;
                case 10:
                    if(mes==10&& dia==31);
                     out.println("octubre tiene 31 dias");
                    break;
                case 11:
                    if(mes==11&& dia==30);
                     out.println("nobiembre tiene 30 dias");
                    break;
                case 12:
                    if(mes==12&& dia==31);
                     out.println("diciembre tiene 31 dias");
                    break;
               
                  
            }
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
