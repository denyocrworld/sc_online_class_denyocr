import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/model/product/product.dart';
import 'package:hyper_ui/service/product_service/product_service.dart';
import 'package:hyper_ui/shared/widget/firebase/fire_stream.dart';
import '../controller/product_crud_list_controller.dart';
import '../state/product_crud_list_state.dart';
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
            Expanded(
              child: FireStream(
                stream: ProductService().getSnapshots(),
                itemBuilder: (context, item, index) {
                  Product product = Product.fromJson(item);
                  return QDismissible(
                    onDismiss: () => controller.delete(product.id!),
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: NetworkImage(
                            product.photo ??
                                "https://i.ibb.co/S32HNjD/no-image.jpg",
                          ),
                        ),
                        title: Text(product.productName ?? "-"),
                        subtitle: Text(product.productCategory ?? "-"),
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
