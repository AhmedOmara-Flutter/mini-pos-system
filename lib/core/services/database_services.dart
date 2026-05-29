abstract class DatabaseServices<T> {
  Future<void> addData(T data);

  Future<List<T>> getData();

  Future<void> updateData(int index, T data);

  Future<void> deleteData(int index);
}
