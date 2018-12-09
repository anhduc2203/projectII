package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>header</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <link href=\"css/form.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery1.min.js\"></script>\n");
      out.write("        <!-- start menu -->\n");
      out.write("        <link href=\"css/megamenu.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("        <script type=\"text/javascript\" src=\"js/megamenu.js\"></script>\n");
      out.write("        <script>$(document).ready(function () {\n");
      out.write("                $(\".megamenu\").megamenu();\n");
      out.write("            });</script>\n");
      out.write("        <!--start slider -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/fwslider.css\" media=\"all\">\n");
      out.write("        <script src=\"js/jquery-ui.min.js\"></script>\n");
      out.write("        <script src=\"js/css3-mediaqueries.js\"></script>\n");
      out.write("        <script src=\"js/fwslider.js\"></script>\n");
      out.write("        <!--end slider -->\n");
      out.write("        <script src=\"js/jquery.easydropdown.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"header-top\">\n");
      out.write("            <div class=\"wrap\">\n");
      out.write("                <div class=\"header-top-left\">\n");
      out.write("                    <div class=\"box\">\n");
      out.write("                        <select tabindex=\"4\" class=\"dropdown\">\n");
      out.write("                            <!--<option value=\"\" class=\"label\" value=\"\">Language :</option> -->\n");
      out.write("                            <option value=\"1\">English</option>\n");
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"box1\">\n");
      out.write("                        <select tabindex=\"4\" class=\"dropdown\">\n");
      out.write("                            <option value=\"\" class=\"label\" value=\"\">Currency :</option>\n");
      out.write("                            <option value=\"1\">$ Dollar</option>\n");
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clear\"></div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"cssmenu\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li class=\"active\"><a href=\"login.jsp\">Account</a></li> |\n");
      out.write("                        <!--<li><a href=\"checkout.html\">Wishlist</a></li> | -->\n");
      out.write("                        <li><a href=\"checkout.jsp\">Checkout</a></li> |\n");
      out.write("                        <li><a href=\"login.jsp\">Log In</a></li> |\n");
      out.write("                        <li><a href=\"register.jsp\">Sign Up</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"clear\"></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"header-bottom\">\n");
      out.write("            <div class=\"wrap\">\n");
      out.write("                <div class=\"header-bottom-left\">\n");
      out.write("                    <div class=\"logo\">\n");
      out.write("                        <a href=\"index.html\"><img src=\"images/logo.png\" alt=\"\" /></a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"menu\">\n");
      out.write("                        <ul class=\"megamenu skyblue\">\n");
      out.write("                            <li class=\"active grid\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                            <li><a class=\"color4\" href=\"#\">English Book</a>\n");
      out.write("                                <div class=\"megapanel\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col1\">\n");
      out.write("                                            <div class=\"h_nav\">\n");
      out.write("                                                <h4>Contact Lenses</h4>\n");
      out.write("                                                <ul>\n");
      out.write("                                                    <li><a href=\"womens.html\">Daily-wear soft lenses</a></li>\n");
      out.write("                                                    <li><a href=\"womens.html\">Extended-wear</a></li>\n");
      out.write("                                                    <li><a href=\"womens.html\">Lorem ipsum </a></li>\n");
      out.write("                                                    <li><a href=\"womens.html\">Planned replacement</a></li>\n");
      out.write("                                                </ul>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col1\">\n");
      out.write("                                            <div class=\"h_nav\">\n");
      out.write("                                                <h4>Sun Glasses</h4>\n");
      out.write("                                                <ul>\n");
      out.write("                                                    <li><a href=\"womens.html\">Heart-Shaped</a></li>\n");
      out.write("                                                    <li><a href=\"womens.html\">Square-Shaped</a></li>\n");
      out.write("                                                    <li><a href=\"womens.html\">Round-Shaped</a></li>\n");
      out.write("                                                    <li><a href=\"womens.html\">Oval-Shaped</a></li>\n");
      out.write("                                                </ul>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col1\">\n");
      out.write("                                            <div class=\"h_nav\">\n");
      out.write("                                                <h4>Eye Glasses</h4>\n");
      out.write("                                                <ul>\n");
      out.write("                                                    <li><a href=\"womens.html\">Anti Reflective</a></li>\n");
      out.write("                                                    <li><a href=\"womens.html\">Aspheric</a></li>\n");
      out.write("                                                    <li><a href=\"womens.html\">Bifocal</a></li>\n");
      out.write("                                                    <li><a href=\"womens.html\">Hi-index</a></li>\n");
      out.write("                                                    <li><a href=\"womens.html\">Progressive</a></li>\n");
      out.write("                                                </ul>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </li>\n");
      out.write("                            <li><a class=\"color5\" href=\"#\">Sách tiếng việt</a>\n");
      out.write("                                <div class=\"megapanel\">\n");
      out.write("                                    <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>Contact Lenses</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <li><a href=\"mens.html\">Daily-wear soft lenses</a></li>\n");
      out.write("                                                <li><a href=\"mens.html\">Extended-wear</a></li>\n");
      out.write("                                                <li><a href=\"mens.html\">Lorem ipsum </a></li>\n");
      out.write("                                                <li><a href=\"mens.html\">Planned replacement</a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>Sun Glasses</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <li><a href=\"mens.html\">Heart-Shaped</a></li>\n");
      out.write("                                                <li><a href=\"mens.html\">Square-Shaped</a></li>\n");
      out.write("                                                <li><a href=\"mens.html\">Round-Shaped</a></li>\n");
      out.write("                                                <li><a href=\"mens.html\">Oval-Shaped</a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"col1\">\n");
      out.write("                                        <div class=\"h_nav\">\n");
      out.write("                                            <h4>Eye Glasses</h4>\n");
      out.write("                                            <ul>\n");
      out.write("                                                <li><a href=\"mens.html\">Anti Reflective</a></li>\n");
      out.write("                                                <li><a href=\"mens.html\">Aspheric</a></li>\n");
      out.write("                                                <li><a href=\"mens.html\">Bifocal</a></li>\n");
      out.write("                                                <li><a href=\"mens.html\">Hi-index</a></li>\n");
      out.write("                                                <li><a href=\"mens.html\">Progressive</a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </li>\n");
      out.write("                            <li><a class=\"color6\" href=\"other.html\">Other</a></li>\n");
      out.write("                            <li><a class=\"color7\" href=\"other.html\">Purchase</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"header-bottom-right\">\n");
      out.write("                    <div class=\"search\">\n");
      out.write("                        <input type=\"text\" name=\"s\" class=\"textbox\" value=\"Search\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {\n");
      out.write("                                    this.value = 'Search';\n");
      out.write("                                }\">\n");
      out.write("                        <input type=\"submit\" value=\"Subscribe\" id=\"submit\" name=\"submit\">\n");
      out.write("                        <div id=\"response\"> </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"tag-list\">\n");
      out.write("                        <ul class=\"icon1 sub-icon1 profile_img\">\n");
      out.write("                            <li><a class=\"active-icon c1\" href=\"#\"> </a>\n");
      out.write("                                <ul class=\"sub-icon1 list\">\n");
      out.write("                                    <li>\n");
      out.write("                                        <h3>sed diam nonummy</h3><a href=\"\"></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <p>Lorem ipsum dolor sit amet, consectetuer <a href=\"\">adipiscing elit, sed diam</a></p>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                        <ul class=\"icon1 sub-icon1 profile_img\">\n");
      out.write("                            <li><a class=\"active-icon c2\" href=\"#\"> </a>\n");
      out.write("                                <ul class=\"sub-icon1 list\">\n");
      out.write("                                    <li>\n");
      out.write("                                        <h3>No Products</h3><a href=\"\"></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <p>Lorem ipsum dolor sit amet, consectetuer <a href=\"#\">adipiscing elit, sed diam</a></p>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                        <ul class=\"last\">\n");
      out.write("                            <li><a href=\"#\">Cart(0)</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"clear\"></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("       \n");
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
