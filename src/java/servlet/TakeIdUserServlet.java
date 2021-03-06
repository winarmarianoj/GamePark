package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Usuario;
import logica.manager.ManagerControl;

@WebServlet(name = "TakeIdUserServlet", urlPatterns = {"/TakeIdUserServlet"})
public class TakeIdUserServlet extends HttpServlet {

    ManagerControl manager = ManagerControl.getInstante();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("idChangeUsuario"));
        Usuario changeUsuario = manager.getCusu().traerUsuarioEnParticular(id);
        request.getSession().setAttribute("changeUsuario", changeUsuario);
        response.sendRedirect("ChangeUser.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
