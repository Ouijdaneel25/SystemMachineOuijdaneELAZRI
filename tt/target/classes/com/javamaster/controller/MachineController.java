package controller;

import beans.Machine;
import beans.Marque;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import service.MachineService;
import service.MarqueService;

@WebServlet(urlPatterns = { "/MachineController" })
public class MachineController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private MachineService ms = new MachineService();
	private MarqueService mms = new MarqueService();

	@SuppressWarnings("deprecation")
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getParameter("id") != null) {
			if (request.getParameter("id").equals("load")) {
				response.setContentType("application/json");
				List<Marque> marques = mms.findAll();
				List<Machine> machines = ms.findAll();
				Gson json = new Gson();
				String bothList = "[" + json.toJson(marques) + "," + json.toJson(machines) + "]";
				response.getWriter().write(bothList);
			} else if (request.getParameter("id").equals("delete")) {
				int id = Integer.parseInt(request.getParameter("indice"));
				ms.delete(ms.findById(id));
				response.setContentType("application/json");
				List<Machine> machines = ms.findAll();
				Gson json = new Gson();
				response.getWriter().write(json.toJson(machines));
			} else if (request.getParameter("id").equals("update")) {

				String id = request.getParameter("indice");
				String ref = request.getParameter("indice2");
				String dateA = request.getParameter("indice3").replace("-", "/");
				String prix = request.getParameter("indice4");
				String idM = request.getParameter("indice5");
				Machine m = ms.findById(Integer.parseInt(id));
				m.setReference(ref);
				m.setDateAchat(new Date(dateA));
				m.setPrix(Double.parseDouble(prix));
				m.setIdMarque(mms.findByL(idM));
				System.out.println(mms.findById(Integer.parseInt(idM)));
				System.out.println("jj" + mms.findById(Integer.parseInt(idM)));
				m.setIdMarque(mms.findById(Integer.parseInt(idM)));
				System.out.println(mms.findById(Integer.parseInt(idM)).toString());
				ms.update(m);

				response.setContentType("application/json");
				List<Machine> machines = ms.findAll();
				Gson json = new Gson();
				response.getWriter().write(json.toJson(machines));
			}
		} else {
			boolean test = false;
			String reference = request.getParameter("reference");
			double prix = Double.parseDouble(request.getParameter("prix"));
			Date dateAchat = new Date(request.getParameter("dateAchat").replace("-", "/"));
			Marque m = mms.findById(Integer.parseInt(request.getParameter("idMarque")));
			if (!ms.findMachineByReference(reference).isEmpty()) {
				test = true;
			}
			ms.create(new Machine(reference, dateAchat, prix, m));
			response.setContentType("application/json");
			List<Machine> machines = ms.findAll();
			Gson json = new Gson();
			String both = "[" + json.toJson(test) + "," + json.toJson(machines) + "]";
			response.getWriter().write(both);
		}

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}
