import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/model/product/product.dart';
import 'package:hyper_ui/shared/util/validator/validator.dart';
import 'package:hyper_ui/shared/widget/form/number_field/numberfield.dart';
import 'package:hyper_ui/shared/widget/form/textfield/text_field.dart';
import '../controller/product_crud_form_controller.dart';
import '../state/product_crud_form_state.dart';
import 'package:get_it/get_it.dart';

class ProductCrudFormView extends StatefulWidget {
  final Product? product;
  const ProductCrudFormView({
    Key? key,
    this.product,
  }) : super(key: key);

  @override
  State<ProductCrudFormView> createState() => _ProductCrudFormViewState();
}

class _ProductCrudFormViewState extends State<ProductCrudFormView> {
  ProductCrudFormController controller = ProductCrudFormController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (GetIt.I.isRegistered<ProductCrudFormController>()) {
      GetIt.I.unregister<ProductCrudFormController>();
    }
    GetIt.I.registerSingleton(controller);
    controller.initState();
    controller.setEditMode(widget.product);
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
      child: BlocListener<ProductCrudFormController, ProductCrudFormState>(
        listener: (context, state) {},
        child: BlocBuilder<ProductCrudFormController, ProductCrudFormState>(
          builder: (context, state) {
            final bloc = context.read<ProductCrudFormController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    ProductCrudFormController controller,
    ProductCrudFormState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductCrudForm'),
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
                  value: state.photo,
                  onChanged: (value) {
                    state.photo = value;
                  },
                ),
                QTextField(
                  label: "Product name",
                  validator: Validator.required,
                  value: state.productName,
                  onChanged: (value) {
                    state.productName = value;
                  },
                ),
                QDropdownField(
                  label: "Product category",
                  validator: Validator.required,
                  items: [
                    {
                      "label": "Food",
                      "value": "Food",
                    },
                    {
                      "label": "Drink",
                      "value": "Drink",
                    }
                  ],
                  value: state.productCategory,
                  onChanged: (value, label) {
                    state.productCategory = value;
                  },
                ),
                QNumberField(
                  label: "Price",
                  validator: Validator.required,
                  value: state.price?.toString(),
                  onChanged: (value) {
                    state.price = double.tryParse(value) ?? 0;
                  },
                ),
                QNumberField(
                  label: "Stock",
                  validator: Validator.required,
                  value: state.stock?.toString(),
                  onChanged: (value) {
                    state.stock = double.tryParse(value) ?? 0;
                  },
                ),
                QMemoField(
                  label: "Description",
                  validator: Validator.required,
                  value: state.description,
                  onChanged: (value) {
                    state.description = value;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Save",
        onPressed: () async {
          bool isValid = formKey.currentState!.validate();
          if (!isValid) {
            return;
          }

          showLoading();
          bool isSuccess = await controller.save();
          hideLoading();

          if (!isSuccess) {
            snackbarDanger(message: "Failed to save!");
            return;
          }

          Get.back();
        },
      ),
    );
  }
}
