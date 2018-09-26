package kr.or.connect.Todo;

import java.util.List;

import kr.or.connect.Todo.dao.TodoDao;
import kr.or.connect.Todo.dto.TodoDto;

public class connectTest {

	public static void main(String[] args) {
		//INSERT
//		String title = "운동하기";
//		String name = "jin";
//		int sequence = 1;
//		
//		TodoDto dto = new TodoDto(title,name,sequence);
//		
//		TodoDao dao = new TodoDao();
//		int insertCount = dao.addTodo(dto);
//		
//		System.out.println(insertCount);

		//SELECT 1
//		String type = "TODO";
//		TodoDao dao = new TodoDao();
//		TodoDto dto = dao.getTodo(type);
//		System.out.println(dto);
		TodoDao dao = new TodoDao();
		List<TodoDto> list = dao.getTodo();

		for(TodoDto dto : list) {
			System.out.println(dto);
		}
		
		//UPDATE
//		long id = 1;
//		String type = "DOING";
//		
//		TodoDto dto = new TodoDto( type,id);
//		
//		TodoDao dao = new TodoDao();
//		int updateCount = dao.updateTodo(dto);
//
//		System.out.println(updateCount);
		

	}
}


