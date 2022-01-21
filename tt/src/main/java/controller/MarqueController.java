package controller;

import java.beans.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import beans.Marque;
import jakarta.servlet.http.HttpSession;
import service.MarqueService;

/**
 * Servlet implementation class MarqueController
 */
@WebServlet("/MarqueController")
public class MarqueController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MarqueService ms;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MarqueController() {
		super();
		ms = new MarqueService();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if (request.getParameter("id") != null) {

			if (request.getParameter("id").equals("load")) {

				response.setContentType("application/json");
				List<Marque> marques = ms.findAll();
				Gson json = new Gson();
				response.getWriter().write(json.toJson(marques));
			} else if (request.getParameter("id").equals("delete")) {

				String id = request.getParameter("indice");
				System.out.println("Id est :" + id);
				ms.delete(ms.findById(Integer.parseInt(id)));

				response.setContentType("application/json");
				List<Marque> marques = ms.findAll();
				Gson json = new Gson();
				response.getWriter().write(json.toJson(marques));

			} else if (request.getParameter("id").equals("update")) {

				String id = request.getParameter("indice");
				System.out.println("Id est :" + id);
				String code = request.getParameter("indice2");
				System.out.println("Code est :" + code);
				String libelle = request.getParameter("indice3");
				System.out.println("Libelle est :" + libelle);
				Marque m = ms.findById(Integer.parseInt(id));
				m.setCode(code);
				m.setLibelle(libelle);

				ms.update(m);

				response.setContentType("application/json");
				List<Marque> marques = ms.findAll();
				Gson json = new Gson();
				response.getWriter().write(json.toJson(marques));

			}

		} else if (request.getParameter("id") == null) {

			String code = request.getParameter("code");
			String libelle = request.getParameter("libelle");
			ms.create(new Marque(code, libelle));

			response.setContentType("application/json");
			List<Marque> marques = ms.findAll();
			Gson json = new Gson();
			response.getWriter().write(json.toJson(marques));

		}

//		response.setContentType("application/json");
//		List<Marque> marques = ms.findAll();
//		Gson json = new Gson();
//		response.getWriter().write(json.toJson(marques));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
