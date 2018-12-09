package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>footer</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <link href=\"css/form.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery1.min.js\"></script>\n");
      out.write("        <!-- start menu -->\n");
      out.write("        <link href=\"css/megamenu.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <script type=\"text/javascript\" src=\"js/megamenu.js\"></script>\n");
      out.write("        <script>$(document).ready(function () {\n");
      out.write("            $(\".megamenu\").megamenu();\n");
      out.write("        });</script>\n");
      out.write("        <!--start slider -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/fwslider.css\" media=\"all\">\n");
      out.write("        <script src=\"js/jquery-ui.min.js\"></script>\n");
      out.write("        <script src=\"js/css3-mediaqueries.js\"></script>\n");
      out.write("        <script src=\"js/fwslider.js\"></script>\n");
      out.write("        <!--end slider -->\n");
      out.write("        <script src=\"js/jquery.easydropdown.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"footer\">\n");
      out.write("            <div class=\"footer-top\">\n");
      out.write("                <div class=\"wrap\">\n");
      out.write("                    <div class=\"section group example\">\n");
      out.write("                        <div class=\"col_1_of_2 span_1_of_2\">\n");
      out.write("                            <ul class=\"f-list\">\n");
      out.write("                                <li><img src=\"images/2.png\"><span class=\"f-text\">Free Shipping on orders over $ 100</span>\n");
      out.write("                                    <div class=\"clear\"></div>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col_1_of_2 span_1_of_2\">\n");
      out.write("                            <ul class=\"f-list\">\n");
      out.write("                                <li><img src=\"images/3.png\"><span class=\"f-text\">Contact Us!Phone Number: 088888888</span>\n");
      out.write("                                    <div class=\"clear\"></div>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"clear\"></div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"footer-middle\">\n");
      out.write("                <div class=\"wrap\">\n");
      out.write("                    <div class=\"section group example\">\n");
      out.write("                        <div class=\"col_1_of_f_1 span_1_of_f_1\">\n");
      out.write("                            <div class=\"section group example\">\n");
      out.write("                                <div class=\"col_1_of_f_2 span_1_of_f_2\">\n");
      out.write("                                    <h3>Facebook</h3>\n");
      out.write("                                    <script>(function (d, s, id) {\n");
      out.write("                var js, fjs = d.getElementsByTagName(s)[0];\n");
      out.write("                if (d.getElementById(id))\n");
      out.write("                    return;\n");
      out.write("                js = d.createElement(s);\n");
      out.write("                js.id = id;\n");
      out.write("                js.src = \"//connect.facebook.net/en_US/all.js#xfbml=1\";\n");
      out.write("                fjs.parentNode.insertBefore(js, fjs);\n");
      out.write("            }(document, 'script', 'facebook-jssdk'));</script>\n");
      out.write("                                    <div class=\"like_box\">\n");
      out.write("                                        <div class=\"fb-like-box\" data-href=\"http://www.facebook.com\"\n");
      out.write("                                             data-colorscheme=\"light\" data-show-faces=\"true\" data-header=\"true\" data-stream=\"false\"\n");
      out.write("                                             data-show-border=\"true\"></div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col_1_of_f_2 span_1_of_f_2\">\n");
      out.write("                                    <h3>Twitter</h3>\n");
      out.write("                                    <div class=\"recent-tweet\">\n");
      out.write("                                        <div class=\"recent-tweet-icon\">\n");
      out.write("                                            <span> </span>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"recent-tweet-info\">\n");
      out.write("                                            <p>Ds which don't look even slightly believable. If you are <a href=\"#\">going\n");
      out.write("                                                    to use nibh euismod</a>\n");
      out.write("                                                tincidunt ut laoreet adipisicing</p>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"clear\"> </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"recent-tweet\">\n");
      out.write("                                        <div class=\"recent-tweet-icon\">\n");
      out.write("                                            <span> </span>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"recent-tweet-info\">\n");
      out.write("                                            <p>Ds which don't look even slightly believable. If you are <a href=\"#\">going\n");
      out.write("                                                    to use nibh euismod</a>\n");
      out.write("                                                tincidunt ut laoreet adipisicing</p>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"clear\"> </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div> \n");
      out.write("                                <div class=\"clear\"></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col_1_of_f_1 span_1_of_f_1\">\n");
      out.write("                            <div class=\"section group example\">\n");
      out.write("                                <div class=\"col_1_of_f_2 span_1_of_f_2\">\n");
      out.write("                                    <h3>Information</h3>\n");
      out.write("                                    <ul class=\"f-list1\">\n");
      out.write("                                        <li><a href=\"#\">Duis autem vel eum iriure </a></li>\n");
      out.write("                                        <li><a href=\"#\">anteposuerit litterarum formas </a></li>\n");
      out.write("                                        <li><a href=\"#\">Tduis dolore te feugait nulla</a></li>\n");
      out.write("                                        <li><a href=\"#\">Duis autem vel eum iriure </a></li>\n");
      out.write("                                        <li><a href=\"#\">anteposuerit litterarum formas </a></li>\n");
      out.write("                                        <li><a href=\"#\">Tduis dolore te feugait nulla</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col_1_of_f_2 span_1_of_f_2\">\n");
      out.write("                                    <h3>Contact us</h3>\n");
      out.write("                                    <div class=\"company_address\">\n");
      out.write("                                        <p>500 Lorem Ipsum Dolor Sit,</p>\n");
      out.write("                                        <p>22-56-2-9 Sit Amet, Lorem,</p>\n");
      out.write("                                        <p>USA</p>\n");
      out.write("                                        <p>Phone:(00) 222 666 444</p>\n");
      out.write("                                        <p>Fax: (000) 000 00 00 0</p>\n");
      out.write("                                        <p>Email: <span>mail[at]leoshop.com</span></p>\n");
      out.write("\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"social-media\">\n");
      out.write("                                        <ul>\n");
      out.write("                                            <li> <span class=\"simptip-position-bottom simptip-movable\" data-tooltip=\"Google\"><a\n");
      out.write("                                                        href=\"#\" target=\"_blank\">\n");
      out.write("                                                    </a></span></li>\n");
      out.write("                                            <li><span class=\"simptip-position-bottom simptip-movable\" data-tooltip=\"Linked in\"><a\n");
      out.write("                                                        href=\"#\" target=\"_blank\">\n");
      out.write("                                                    </a> </span></li>\n");
      out.write("                                            <li><span class=\"simptip-position-bottom simptip-movable\" data-tooltip=\"Rss\"><a\n");
      out.write("                                                        href=\"#\" target=\"_blank\"> </a></span></li>\n");
      out.write("                                            <li><span class=\"simptip-position-bottom simptip-movable\" data-tooltip=\"Facebook\"><a\n");
      out.write("                                                        href=\"#\" target=\"_blank\">\n");
      out.write("                                                    </a></span></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"clear\"></div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"clear\"></div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"footer-bottom\">\n");
      out.write("                <div class=\"wrap\">\n");
      out.write("                    <div class=\"copy\">\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"f-list2\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li class=\"active\"><a href=\"about.html\">About Us</a></li> |\n");
      out.write("                            <li><a href=\"delivery.html\">Delivery & Returns</a></li> |\n");
      out.write("                            <li><a href=\"delivery.html\">Terms & Conditions</a></li> |\n");
      out.write("                            <li><a href=\"contact.html\">Contact Us</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clear\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
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
