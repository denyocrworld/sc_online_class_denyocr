import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import '../controller/category_list_controller.dart';
import '../state/category_list_state.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({Key? key}) : super(key: key);

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  CategoryListController controller = CategoryListController();

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
      child: BlocListener<CategoryListController, CategoryListState>(
        listener: (context, state) {},
        child: BlocBuilder<CategoryListController, CategoryListState>(
          builder: (context, state) {
            final bloc = context.read<CategoryListController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    CategoryListController controller,
    CategoryListState state,
  ) {
    List categories = [
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
        "label": "Cofee",
        "value": "Cofee",
      },
      {
        "label": "Healthy",
        "value": "Healthy",
      },
      {
        "label": "Snack",
        "value": "Snack",
      },
      {
        "label": "Fruits",
        "value": "Fruits",
      },
    ];
    return QSCaffold(
      title: "Category List",
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
            ),
            child: SearchField(
              onChanged: (value) {},
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(20.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.0,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemCount: categories.length,
              physics: ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                var item = categories[index];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "${item["label"]}",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
