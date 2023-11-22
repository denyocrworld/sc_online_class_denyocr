import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/shared/util/validator/validator.dart';
import 'package:hyper_ui/shared/widget/form/button/action_button.dart';
import 'package:hyper_ui/shared/widget/form/dropdown/dropdown.dart';
import 'package:hyper_ui/shared/widget/form/image_picker/image_picker.dart';
import 'package:hyper_ui/shared/widget/form/number_field/numberfield.dart';
import 'package:hyper_ui/shared/widget/form/textfield/text_field.dart';
import '../controller/product_form_controller.dart';
import '../state/product_form_state.dart';
import 'package:get_it/get_it.dart';

class ProductFormView extends StatefulWidget {
  final Map? item;
  const ProductFormView({
    Key? key,
    this.item,
  }) : super(key: key);

  @override
  State<ProductFormView> createState() => _ProductFormViewState();
}

class _ProductFormViewState extends State<ProductFormView> {
  ProductFormController controller = ProductFormController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (GetIt.I.isRegistered<ProductFormController>()) {
      GetIt.I.unregister<ProductFormController>();
    }
    GetIt.I.registerSingleton(controller);
    if (widget.item != null) {
      controller.changeToEditMode(widget.item!);
    }
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
      child: BlocListener<ProductFormController, ProductFormState>(
        listener: (context, state) {},
        child: BlocBuilder<ProductFormController, ProductFormState>(
          builder: (context, state) {
            final bloc = context.read<ProductFormController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    ProductFormController controller,
    ProductFormState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductForm'),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                QImagePicker(
                  label: "Photo",
                  validator: Validator.required,
                  value: controller.state.photo,
                  onChanged: (value) {
                    controller.state.photo = value;
                  },
                ),
                QTextField(
                  label: "Product name",
                  validator: Validator.required,
                  value: controller.state.productName,
                  onChanged: (value) {
                    controller.state.productName = value;
                  },
                ),
                QNumberField(
                  label: "Price",
                  validator: Validator.required,
                  value: controller.state.price?.toString(),
                  onChanged: (value) {
                    controller.state.price = double.tryParse(value) ?? 0;
                  },
                ),
                QDropdownField(
                  label: "Category",
                  validator: Validator.required,
                  items: [
                    {
                      "label": "Makanan",
                      "value": "Makanan",
                    },
                    {
                      "label": "Minuman",
                      "value": "Minuman",
                    }
                  ],
                  value: controller.state.categoryName,
                  onChanged: (value, label) {
                    controller.state.categoryName = value;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Save",
        onPressed: () {
          bool isValid = formKey.currentState!.validate();
          if (!isValid) {
            return;
          }

          controller.save();
        },
      ),
    );
  }
}
