

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.connect.Todo.dao.TodoDao;
import kr.or.connect.Todo.dto.TodoDto;

/**
 * Servlet implementation class MainServlet
 */
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TodoDao dao = new TodoDao();
		List<TodoDto> lists = dao.getTodo();
		
		request.setAttribute("lists", lists);
		
		//Forward to the JSP 
		request.getRequestDispatcher("./main.jsp").forward(request, response);
		
//		for(TodoDto dto : lists) {
//			System.out.println(dto);
//		}
	}

}
