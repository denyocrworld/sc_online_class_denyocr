import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/shared/theme/theme_config.dart';
import 'package:hyper_ui/shared/util/validator/validator.dart';
import 'package:hyper_ui/shared/widget/form/button/button.dart';
import 'package:hyper_ui/shared/widget/form/category_picker/category_picker.dart';
import 'package:hyper_ui/shared/widget/text/more_text/more_text.dart';
import '../controller/product_detail_controller.dart';
import '../state/product_detail_state.dart';

class ProductDetailView extends StatefulWidget {
  final Map item;
  ProductDetailView({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  ProductDetailController controller = ProductDetailController();

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
      child: BlocListener<ProductDetailController, ProductDetailState>(
        listener: (context, state) {},
        child: BlocBuilder<ProductDetailController, ProductDetailState>(
          builder: (context, state) {
            final bloc = context.read<ProductDetailController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    ProductDetailController controller,
    ProductDetailState state,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Product Detail'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_outline,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 160.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      widget.item["photo"],
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
              SizedBox(
                height: 12.0,
              ),
              Text(
                "${widget.item["product_name"]}",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                "${widget.item["category"]}",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                "Description",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              MoreText(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              QCategoryPicker(
                label: "Size",
                items: [
                  {
                    "label": "S",
                    "value": "S",
                  },
                  {
                    "label": "M",
                    "value": "M",
                  },
                  {
                    "label": "L",
                    "value": "L",
                  }
                ],
                titleStyle: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                validator: Validator.required,
                onChanged: (index, label, value, item) {},
              ),
              const SizedBox(
                height: 8.0,
              ),
              QCategoryPicker(
                label: "Sugar",
                items: [
                  {
                    "label": "Normal",
                    "value": "Normal",
                  },
                  {
                    "label": "Less Sugar",
                    "value": "Less Sugar",
                  },
                  {
                    "label": "More Sugar",
                    "value": "More Sugar",
                  }
                ],
                titleStyle: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                validator: Validator.required,
                onChanged: (index, label, value, item) {},
              ),
              QCategoryPicker(
                label: "Ice",
                items: [
                  {
                    "label": "Normal",
                    "value": "Normal",
                  },
                  {
                    "label": "Less Ice",
                    "value": "Less Ice",
                  },
                  {
                    "label": "More Ice",
                    "value": "More Ice",
                  }
                ],
                titleStyle: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                validator: Validator.required,
                onChanged: (index, label, value, item) {},
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Wrap(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      "\$4.53",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: QButton(
                    label: "Add to Cart",
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
