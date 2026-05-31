import 'package:todo_app_api/features/todo/models/todo.dart';
import 'package:todo_app_api/features/todo/service/todo_service.dart';
import 'package:todo_app_api/shared/endpoints/endpoints.dart';
import 'package:todo_app_api/shared/services/apiservice.dart';

class TodoServiceImpl implements TodoService {
  final ApiService api = ApiService();

  // create
  @override
  Future<void> create(Todo todo) async {
    await api.post(
      EndPoints.todoCreate,
      todo.toJson(),
    );
  }

  // update
  @override
  Future<void> update(Todo todo) async {
    await api.put(
      "${EndPoints.todoUpdate}/${todo.id}",
      todo.toJson(),
    );
  }

  // delete
  @override
  Future<void> delete(String id) async {
    await api.delete(
      "${EndPoints.todoDelete}/$id",
    );
  }

  // get + filter + pagination (dari backend Express)
  // saya tidak membuat paginationnya di backend
  @override
  Future<List<Todo>> getByFilter(String? status,String? search, int page) async {
    final res = await api.get(EndPoints.todoGetAll);

    final List<dynamic> data = res.data["data"];

    List<Todo> todos = data.map((e) => Todo.fromJson(e)).toList();

    if (status != null && status.isNotEmpty && status.toLowerCase() != "all") {
      todos = todos.where(
              (item) => item.status.toLowerCase() == status.toLowerCase()
      ).toList();
    }

    // filter search
    if (search != null && search.isNotEmpty) {
      todos = todos.where((item) =>
          item.title.toLowerCase().contains(search.toLowerCase())
      ).toList();
    }

    // Pagination
    const int pageSize = 5;

    final startIndex = (page - 1) * pageSize;

    if (startIndex >= todos.length) {
      return [];
    }

    final endIndex = (startIndex + pageSize) > todos.length
        ? todos.length
        : startIndex + pageSize;

    return todos.sublist(startIndex, endIndex);
  }
}