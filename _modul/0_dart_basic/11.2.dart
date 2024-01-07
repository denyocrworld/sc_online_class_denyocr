//CRUD = Create Read Update Delete
abstract class CRUDService {
  get(String search);
  create(Map data);
  update(int id, Map data);

  delete(int id);
}

/*
Alex
  Bro Alex bikin ProductService dong,
  Terapkan fitur CRUD-nya ya
  Jangan lupa implements si CRUDService
Rian
  Bro Rian bikin CustomerService dong,
  Terapkan fitur CRUD-nya ya
  Jangan lupa implements si CRUDService
Budi
  Bro Budi bikin UserService dong,
  Terapkan fitur CRUD-nya ya
  Jangan lupa implements si CRUDService
*/

class ProductService implements CRUDService {
  @override
  create(Map data) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  get(String search) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  update(int id, Map data) {
    // TODO: implement update
    throw UnimplementedError();
  }
}

class CustomerService implements CRUDService {
  @override
  create(Map data) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  get(String search) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  update(int id, Map data) {
    // TODO: implement update
    throw UnimplementedError();
  }
}

class UserService implements CRUDService {
  @override
  create(Map data) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  get(String search) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  update(int id, Map data) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
