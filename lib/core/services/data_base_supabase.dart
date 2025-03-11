abstract class DataBaseSupabase {

  // GET
  Future<dynamic> getDataSupbase({
    required String path,
    String? documentId,
    Map<String, dynamic>? query,
  });
}
