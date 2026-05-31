abstract class EndPoints {
  static const String url = "http://127.0.0.1:3000";

  static const String baseUrl = url;

  static const String todoGetAll = "$baseUrl/todos";
  static const String todoCreate = "$baseUrl/todos";
  static const String todoUpdate = "$baseUrl/todos"; // PUT /todos/:id
  static const String todoDelete = "$baseUrl/todos"; // DELETE /todos/:id
}