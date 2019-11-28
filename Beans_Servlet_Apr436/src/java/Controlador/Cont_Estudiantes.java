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
import Entidades.Estudiantes;
import com.google.gson.Gson;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/**
 *
 * @author FORMACIÓN
 */
public class Cont_Estudiantes extends HttpServlet {
Estudiantes Est;
    ArrayList<Estudiantes> Listar_Estudiantes= new ArrayList<Estudiantes>();;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           if(request.getParameter("Operacion").equals("Listar"))
          {
          
              for (int i = 0; i < Listar_Estudiantes.size();i++)
          {
              out.println("<tr><td>"+i+"</td>");
              out.println("<td>"+Listar_Estudiantes.get(i).getNombre()+"</td>");
              out.println("<td>"+Listar_Estudiantes.get(i).getNota1()+"</td>");
              out.println("<td>"+Listar_Estudiantes.get(i).getNota2()+"</td>");
              out.println("<td>"+Listar_Estudiantes.get(i).getNota3()+"</td>");
              out.println("<td>"+Listar_Estudiantes.get(i).getDefinitiva()+"</td>");
              out.println("<td><a href ='javascript:Eliminar_Estud("+i+");'>Eliminar</a></td></tr>");
              
              
          }
          }
        if(request.getParameter("Operacion").equals("Eliminar"))
            {
             int id = Integer.parseInt(request.getParameter("id"));
             Listar_Estudiantes.remove(id);
             out.println("<h2><p style='color:white;'>Estudiante Eliminado</p></h2>"); 
             
            } 
          
          if(request.getParameter("Operacion").equals("Registrar"))
          {
          Est =new Estudiantes();
          Est.setNombre(request.getParameter("Nomb"));
          Est.setNota1(Float.parseFloat(request.getParameter("N1")));
          Est.setNota2(Float.parseFloat(request.getParameter("N2")));
          Est.setNota3(Float.parseFloat(request.getParameter("N3")));
          Est.setDefinitiva((Est.getNota1()+Est.getNota2()+Est.getNota3())/3);
          Listar_Estudiantes.add(Est);
          out.println("<center><h2><p style='color:white;'>Se Registro el Estudiante: "+Est.getNombre()+ "</p></h2></center>"); 
          
          }
         if(request.getParameter("Operacion").equals("Listar_Json"))
         {
             String json = new Gson().toJson(Listar_Estudiantes);
             out.println(json);
             
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
