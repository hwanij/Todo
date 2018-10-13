package kr.or.connect.Todo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.connect.Todo.dao.TodoDao;
import kr.or.connect.Todo.dto.TodoDto;

/**
 * Servlet implementation class TodoTypeServlet
 */
public class TodoTypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TodoTypeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//UPDATE
		String type = request.getParameter("type");
		String id = request.getParameter("id");
		Long pid = Long.parseLong(id);
		
		//System.out.println(pid +" " + type);
		
		if(type.equals("TODO")) {
			type="DOING";
		}else if(type.equals("DOING")) {
			type="DONE";
		}else
			System.out.println("no!");
			
		//type="DOING";
		System.out.println(type);
		TodoDto dto = new TodoDto( type,pid);
		
		TodoDao dao = new TodoDao();
		int updateCount = dao.updateTodo(dto);

		System.out.println(updateCount);
		
		System.out.println(dto);
		response.sendRedirect("http://localhost:8080/Todo/main");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
