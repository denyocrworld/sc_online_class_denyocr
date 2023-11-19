import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/product_detail/view/product_detail_view.dart';
import 'package:hyper_ui/shared/util/validator/validator.dart';
import 'package:hyper_ui/shared/widget/form/category_picker/category_picker.dart';
import 'package:hyper_ui/shared/widget/scaffold/scaffold.dart';
import 'package:hyper_ui/state_util.dart';
import '../controller/product_list_controller.dart';
import '../state/product_list_state.dart';

class ProductListView extends StatefulWidget {
  ProductListView({Key? key}) : super(key: key);

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  ProductListController controller = ProductListController();

  @override
  void initState() {
    controller.initState();
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
    //-----------
    return QSCaffold(
      title: "Product List",
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: SearchField(
              onChanged: (value) {},
              requestFocusOnReady: true,
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 12.0,
              ),
              Expanded(
                child: QCategoryPicker(
                  clipBehavior: Clip.antiAlias,
                  items: [
                    {
                      "label": "Capuccino",
                      "value": "Capuccino",
                    },
                    {
                      "label": "Machiatto",
                      "value": "Machiatto",
                    },
                    {
                      "label": "Latte",
                      "value": "Latte",
                    },
                    {
                      "label": "Milk",
                      "value": "Milk",
                    },
                    {
                      "label": "Tea",
                      "value": "Tea",
                    },
                    {
                      "label": "Snack",
                      "value": "Snack",
                    }
                  ],
                  validator: Validator.required,
                  onChanged: (index, label, value, item) {},
                ),
              ),
              const SizedBox(
                width: 6.0,
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 6.0,
                ),
                height: 36.0,
                width: 36.0,
                decoration: BoxDecoration(
                  color: Theme.of(context).disabledColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: InkWell(
                  onTap: () => Get.to(CategoryListView()),
                  child: const Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ),
              ),
              const SizedBox(
                width: 20.0,
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Expanded(
            child: LayoutBuilder(builder: (context, constraint) {
              int crossAxisCount =
                  (MediaQuery.of(context).size.width / 160).floor();

              //Adaptive
              return GridView.builder(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0 / 1.6,
                  crossAxisCount: crossAxisCount,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: state.products.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = state.products[index];
                  return InkWell(
                    onTap: () => Get.to(ProductDetailView(
                      item: item,
                    )),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    item["photo"] ??
                                        "https://i.ibb.co/S32HNjD/no-image.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    8.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item["product_name"],
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                Text(
                                  item["category"],
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Color(0xff9a9a9a),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "\$${item["price"]}",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 32,
                                      width: 32,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.all(0.0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                        .animate()
                        .moveX(
                          begin: index % 2 == 0 ? -100 : 100,
                          duration: ((index * 300) + 800).ms,
                        )
                        .fadeIn(
                          duration: ((index * 300) + 800).ms,
                        ),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
