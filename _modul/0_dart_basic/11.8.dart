mixin LoggingMixin {
  void log(String message) {
    print('Log: $message');
  }
}

mixin DbMixin {
  void save(String message) {
    print('Save');
  }
}

class BaseService {}

class UserService extends BaseService with LoggingMixin, DbMixin {
  void createUser(String username) {
    log('User $username berhasil dibuat');
    // Kode untuk membuat user
  }
}

class ProductService with LoggingMixin {
  void createProduct(String productName) {
    log('Produk $productName berhasil dibuat');
    // Kode untuk membuat produk
  }
}

void main() {
  UserService userService = UserService();
  ProductService productService = ProductService();

  userService.createUser('John');
  productService.createProduct('Laptop');
}
