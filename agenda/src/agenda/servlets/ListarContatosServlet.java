package agenda.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import agenda.daos.ContatoDAO;
import agenda.models.Contato;

@WebServlet ("/listarContatos")
public class ListarContatosServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse reponse) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ContatoDAO dao = new ContatoDAO();
		List<Contato> contatos = dao.getLista();
		
		request.setAttribute("contatos", contatos);
		RequestDispatcher rd = request.getRequestDispatcher("listar.jsp");
		rd.forward(request, reponse);
	}
}