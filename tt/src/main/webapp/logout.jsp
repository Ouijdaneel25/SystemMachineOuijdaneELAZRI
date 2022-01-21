
<%
HttpSession httpSession = request.getSession();
httpSession.invalidate();
RequestDispatcher dispatcher = request.getRequestDispatcher("/authentifier.jsp");
dispatcher.include(request, response);
%>
