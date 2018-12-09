package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Login ::</title>\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery1.min.js\"></script>\r\n");
      out.write("        <!-- start menu -->\r\n");
      out.write("        <link href=\"css/megamenu.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/megamenu.js\"></script>\r\n");
      out.write("        <script>$(document).ready(function () { $(\".megamenu\").megamenu(); });</script>\r\n");
      out.write("        <!-- dropdown -->\r\n");
      out.write("        <script src=\"js/jquery.easydropdown.js\"></script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"login\">\r\n");
      out.write("            <div class=\"wrap\">\r\n");
      out.write("                <div class=\"col_1_of_login span_1_of_login\">\r\n");
      out.write("                    <h4 class=\"title\">New Account</h4>\r\n");
      out.write("                    <p>Nếu bạn chưa có tài khoản hãy tạo một tài khoản mới để sử dụng dịch vụ của chúng tôi!</p>\r\n");
      out.write("                    <div class=\"button1\">\r\n");
      out.write("                        <a href=\"register.jsp\"><input type=\"submit\" name=\"Submit\" value=\"Create an Account\"></a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"clear\"></div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"col_1_of_login span_1_of_login\">\r\n");
      out.write("                    <div class=\"login-title\">\r\n");
      out.write("                        <h4 class=\"title\">Đăng nhập</h4>\r\n");
      out.write("                        <div id=\"loginbox\" class=\"loginbox\">\r\n");
      out.write("                            <form action=\"\" method=\"post\" name=\"login\" id=\"login-form\">\r\n");
      out.write("                                <fieldset class=\"input\">\r\n");
      out.write("                                    <p id=\"login-form-username\">\r\n");
      out.write("                                        <label for=\"modlgn_username\">Tên đăng nhập</label>\r\n");
      out.write("                                        <input id=\"modlgn_username\" type=\"text\" name=\"email\" class=\"inputbox\" size=\"18\" autocomplete=\"off\">\r\n");
      out.write("                                    </p>\r\n");
      out.write("                                    <p id=\"login-form-password\">\r\n");
      out.write("                                        <label for=\"modlgn_passwd\">Mật khẩu</label>\r\n");
      out.write("                                        <input id=\"modlgn_passwd\" type=\"password\" name=\"password\" class=\"inputbox\" size=\"18\" autocomplete=\"off\">\r\n");
      out.write("                                    </p>\r\n");
      out.write("                                    <div class=\"remember\">\r\n");
      out.write("                                        <p id=\"login-form-remember\">\r\n");
      out.write("                                            <label for=\"modlgn_remember\"><a href=\"#\">Forget Your Password ? </a></label>\r\n");
      out.write("                                        </p>\r\n");
      out.write("                                        <input type=\"submit\" name=\"Submit\" class=\"button\" value=\"Login\">\r\n");
      out.write("                                        <div class=\"clear\"></div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </fieldset>\r\n");
      out.write("                            </form>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"clear\"></div>\r\n");
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
