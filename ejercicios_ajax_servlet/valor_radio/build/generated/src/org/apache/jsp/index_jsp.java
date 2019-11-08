package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>ejercici0 1 </title>\n");
      out.write("        <link href=\"css/estilos.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write(" \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("   <form>\n");
      out.write("            <tr>\n");
      out.write("            <center>\n");
      out.write("                <h3>VALOR DEL RADIO DE UNA CIRCUNFERENCIA</h3>\n");
      out.write("                <div class=\"contenedor\">\n");
      out.write("                    <table>\n");
      out.write("                        <tr><td>valor del radio</td><td><input type=\"text\" id=\"valor1\" /></td></tr>\n");
      out.write("                       \n");
      out.write("                        <tr><td colspan=\"3\" aling=\"center\"><button type=\"button\"class=\"boton1\" onclick=\"calcular_promedio()\">Calcular\n");
      out.write("                         </button></td>\n");
      out.write("                        </tr>\n");
      out.write("                        \n");
      out.write("                    </table>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <div id=\"respuesta_servidor\"></div>\n");
      out.write("            </center>\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("    <script src=\"js/jquery-3.4.1.min.js\" type=\"text/javascript\"></script>\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("    function calcular_promedio(){\n");
      out.write("        \n");
      out.write("        var valor1=$(\"#valor1\").val();\n");
      out.write("       \n");
      out.write("        var Parametros ={'Operacion':'Calcular','valor1':valor1};\n");
      out.write("        $.ajax({\n");
      out.write("            type:\"POST\",\n");
      out.write("            url: \"valor_radio\",\n");
      out.write("            data:Parametros,\n");
      out.write("            datatype:\"text\",\n");
      out.write("            success:function(resp){\n");
      out.write("               $('#respuesta_servidor').html(resp); \n");
      out.write("            }\n");
      out.write("        }).fail(function(jqXHR,textStatus,errorThrown){\n");
      out.write("            alert(\"ERROR....\"+jqXHR.status);\n");
      out.write("        });\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    </script>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
