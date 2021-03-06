package servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Usuario;
import logica.manager.ManagerControl;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {
    ManagerControl manager = ManagerControl.getInstante();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        boolean result = false;
        String name = request.getParameter("userName");
        String pass = request.getParameter("password");
        List<Usuario> listUsu = manager.getCusu().traerUsuario();
        for(Usuario element : listUsu){
            if(element.getNombre().equals(name)){ 
                element.setConectado(true);
                manager.getCusu().modifUsuario(element);
                response.sendRedirect("Dashboard.jsp"); 
                result = true;
                break;
            }
        }
        if(result){            
            HttpSession sesion = request.getSession(true);
            sesion.setAttribute("usuario", name);
            sesion.setAttribute("pass", pass);            
        }else{
            request.getSession().setAttribute("resLogReg", "El Usuario y Contraseña no fueron cargados o estan vacíos.!");
            response.sendRedirect("ResLogRes.jsp");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
