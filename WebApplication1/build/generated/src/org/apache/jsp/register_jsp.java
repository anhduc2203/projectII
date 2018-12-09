package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <title>Register ::</title>\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery1.min.js\"></script>\r\n");
      out.write("        <!-- start menu -->\r\n");
      out.write("        <link href=\"css/megamenu.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/megamenu.js\"></script>\r\n");
      out.write("        <script>$(document).ready(function () { $(\".megamenu\").megamenu(); });</script>\r\n");
      out.write("        <script src=\"js/jquery.easydropdown.js\"></script>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        <!-- Doan ajax kiem tra account da ton tai chua -->\r\n");
      out.write("        <script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("        <script type=\"text/javascript\">\r\n");
      out.write("              $(document).ready(function () {\r\n");
      out.write("                   var x_timer;\r\n");
      out.write("                   $(\"#username\").keyup(function (e) {\r\n");
      out.write("                        clearTimeout(x_timer);\r\n");
      out.write("                        var user_name = $(this).val();\r\n");
      out.write("                        x_timer = setTimeout(function () {\r\n");
      out.write("                            check_username_ajax(user_name);\r\n");
      out.write("                        }, 1000);\r\n");
      out.write("                        });\r\n");
      out.write(" \r\n");
      out.write("                   function check_username_ajax(username) {\r\n");
      out.write("                        $(\"#user-result\").html('<img src=\"img_controller/ajax-loader.gif\" />');\r\n");
      out.write("                        $.post('CheckAccountServlet', {'username': username}, function (data) {\r\n");
      out.write("                            $(\"#user-result\").html(data);\r\n");
      out.write("                         });\r\n");
      out.write("                   }\r\n");
      out.write("               });\r\n");
      out.write("        </script>\r\n");
      out.write("        \r\n");
      out.write("        <!-- Ket thuc doan ajax --- doan ma nay chua thanh cong !!!!! -->\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"register_account\">\r\n");
      out.write("            <div class=\"wrap\">\r\n");
      out.write("                <h4 class=\"title\">Create an Account</h4>\r\n");
      out.write("                <form action=\"AccountServlet\" method=\"POST\">\r\n");
      out.write("                    <div class=\"col_1_of_2 span_1_of_2\">\r\n");
      out.write("                        <div><input type=\"text\" name=\"username\" id=\"username\" value=\"User Name\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'User Name';}\"><span id=\"user-result\"></span></div>\r\n");
      out.write("                        <div><input type=\"text\" name=\"password\" id=\"password\" value=\"Password\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Password';}\"></div>\r\n");
      out.write("                        <div><input type=\"text\" name=\"name\" id=\"name\" value=\"Full Name\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Name';}\"></div>\r\n");
      out.write("                        <div><input type=\"text\" name=\"ctyorschool\" id=\"ctyorschool\" value=\"Company or School\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Company or School';}\"></div>\r\n");
      out.write("                        \r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col_1_of_2 span_1_of_2\">\r\n");
      out.write("                        <div><input type=\"text\" name=\"email\" id=\"email\" value=\"Email\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Email';}\"></div>\r\n");
      out.write("                        <div><input type=\"text\" name=\"phonenumber\" id=\"phonenumber\" value=\"Phone Number\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Phone Number';}\"></div>\r\n");
      out.write("                        <div><input type=\"text\" name=\"address\" id=\"address\" value=\"Address\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Address';}\"></div>\r\n");
      out.write("                        <div><select id=\"country\" name=\"country\" onchange=\"change_country(this.value)\" class=\"frm-field required\">\r\n");
      out.write("                                <option value=\"null\">Select a Country</option>                           \r\n");
      out.write("                                <option value=\"SN\">Viet Nam</option>\r\n");
      out.write("                             </select>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <button class=\"grey\">Create Account</button>\r\n");
      out.write("                    \r\n");
      out.write("                    <p class=\"terms\">By clicking 'Create Account' you agree to the <a href=\"#\">Terms &amp; Conditions</a>.</p>\r\n");
      out.write("                    <div class=\"clear\"></div>\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
