import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/model/product_category/product_category.dart';
import 'package:hyper_ui/service/product_category_service/product_category_service.dart';
import '../controller/product_category_crud_list_controller.dart';
import '../state/product_category_crud_list_state.dart';
import 'package:get_it/get_it.dart';

class ProductCategoryCrudListView extends StatefulWidget {
  const ProductCategoryCrudListView({Key? key}) : super(key: key);

  @override
  State<ProductCategoryCrudListView> createState() =>
      _ProductCategoryCrudListViewState();
}

class _ProductCategoryCrudListViewState
    extends State<ProductCategoryCrudListView> {
  ProductCategoryCrudListController controller =
      ProductCategoryCrudListController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<ProductCategoryCrudListController>()) {
      GetIt.I.unregister<ProductCategoryCrudListController>();
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
      child: BlocListener<ProductCategoryCrudListController,
          ProductCategoryCrudListState>(
        listener: (context, state) {},
        child: BlocBuilder<ProductCategoryCrudListController,
            ProductCategoryCrudListState>(
          builder: (context, state) {
            final bloc = context.read<ProductCategoryCrudListController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    ProductCategoryCrudListController controller,
    ProductCategoryCrudListState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductCategoryCrudList'),
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
                stream: ProductCategoryService().getSnapshots(),
                itemBuilder: (context, item, index) {
                  ProductCategory productCategory =
                      ProductCategory.fromJson(item);

                  print(item);

                  if (state.search.isNotEmpty) {
                    if (!productCategory.productCategoryName!
                        .toLowerCase()
                        .contains(state.search.toLowerCase()))
                      return Container();
                  }

                  return QDismissible(
                    onDismiss: () => controller.delete(productCategory.id!),
                    child: Container(
                      margin: const EdgeInsets.only(
                        bottom: 12.0,
                      ),
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        child: ListTile(
                          title: Text("${productCategory.productCategoryName}"),
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
          await Get.to(ProductCategoryCrudFormView());
        },
      ),
    );
  }
}
