import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/state_util.dart';
import '../controller/product_list_controller.dart';
import '../state/product_list_state.dart';
import 'package:get_it/get_it.dart';

class ProductListView extends StatefulWidget {
  ProductListView({Key? key}) : super(key: key);

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  ProductListController controller = ProductListController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<ProductListController>()) {
      GetIt.I.unregister<ProductListController>();
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
      child: BlocListener<ProductListController, ProductListState>(
        listener: (context, state) {},
        child: BlocBuilder<ProductListController, ProductListState>(
          builder: (context, state) {
            final bloc = context.read<ProductListController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    ProductListController controller,
    ProductListState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductList'),
        actions: [
          IconButton(
            onPressed: () => controller.deleteAll(),
            icon: const Icon(
              Icons.delete_forever,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20.0),
        itemCount: state.products.length,
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = state.products[index];
          return QDismissible(
            onDismiss: () => controller.delete(item["id"]),
            child: Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  backgroundImage: NetworkImage(
                    item["photo"],
                  ),
                ),
                title: Text(item["product_name"]),
                subtitle: Text(item["category_name"]),
                trailing: Text("${item["price"]}"),
                onTap: () async {
                  await Get.to(ProductFormView(
                    item: item,
                  ));
                  controller.getProducts();
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          await Get.to(ProductFormView());
          controller.getProducts();
        },
      ),
    );
  }
}
