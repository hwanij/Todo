package kr.or.connect.Todo;

import java.io.IOException;
import java.nio.charset.StandardCharsets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.connect.Todo.dao.TodoDao;
import kr.or.connect.Todo.dto.TodoDto;

/**
 * Servlet implementation class TodoAddServlet
 */
public class TodoAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TodoAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		String title = request.getParameter("title");
		byte[] bytes = title.getBytes(StandardCharsets.ISO_8859_1);
		title = new String(bytes,StandardCharsets.UTF_8);
		String name = request.getParameter("name");
		byte[] bytes2 = name.getBytes(StandardCharsets.ISO_8859_1);
		name = new String(bytes2,StandardCharsets.UTF_8);
		
		int sequence = Integer.parseInt(request.getParameter("sequence"));
		System.out.println(title + " " + name + " " + sequence);
		TodoDto dto = new TodoDto(title,name,sequence);
		TodoDao dao = new TodoDao();
		int insertCount = dao.addTodo(dto);
		
		System.out.println(insertCount);		
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
