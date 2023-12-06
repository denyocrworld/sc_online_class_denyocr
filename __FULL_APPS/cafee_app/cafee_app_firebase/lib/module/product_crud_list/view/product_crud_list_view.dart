import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/model/product/product.dart';
import 'package:get_it/get_it.dart';

class ProductCrudListView extends StatefulWidget {
  const ProductCrudListView({Key? key}) : super(key: key);

  @override
  State<ProductCrudListView> createState() => _ProductCrudListViewState();
}

class _ProductCrudListViewState extends State<ProductCrudListView> {
  ProductCrudListController controller = ProductCrudListController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<ProductCrudListController>()) {
      GetIt.I.unregister<ProductCrudListController>();
    }
    GetIt.I.registerSingleton(controller);
    controller.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => controller.ready(),
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => controller,
      child: BlocListener<ProductCrudListController, ProductCrudListState>(
        listener: (context, state) {},
        child: BlocBuilder<ProductCrudListController, ProductCrudListState>(
          builder: (context, state) {
            final bloc = context.read<ProductCrudListController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    ProductCrudListController controller,
    ProductCrudListState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductCrudList'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Colors.grey[300]!,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.blueGrey[900],
                  ),
                  suffixIcon: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.sort,
                      color: Colors.blueGrey[900],
                    ),
                  ),
                ),
                onSubmitted: (value) => controller.updateSearch(value),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Expanded(
              child: FireStream(
                stream: ProductService().getSnapshots(),
                itemBuilder: (context, item, index) {
                  Product product = Product.fromJson(item);

                  print(item);

                  if (state.search.isNotEmpty) {
                    if (!product.productName!
                        .toLowerCase()
                        .contains(state.search.toLowerCase()))
                      return Container();
                  }

                  return QDismissible(
                    onDismiss: () => controller.delete(product.id!),
                    child: Container(
                      margin: const EdgeInsets.only(
                        bottom: 12.0,
                      ),
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.grey[800],
                              ),
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "${product.productName}",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 32.0,
                                  backgroundColor: Colors.grey[200],
                                  backgroundImage: NetworkImage(
                                    product.photo ??
                                        "https://i.ibb.co/S32HNjD/no-image.jpg",
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: Text(product.productName ?? "-"),
                                    subtitle:
                                        Text(product.productCategory ?? "-"),
                                    trailing: Text(
                                      "${product.price}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    onTap: () async {
                                      await Get.to(ProductCrudFormView(
                                        product: product,
                                      ));
                                    },
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12.0,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                              ),
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Spacer(),
                                  Text(
                                    "Stock:",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  Text(
                                    "${product.stock}",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          await Get.to(ProductCrudFormView());
        },
      ),
    );
  }
}
