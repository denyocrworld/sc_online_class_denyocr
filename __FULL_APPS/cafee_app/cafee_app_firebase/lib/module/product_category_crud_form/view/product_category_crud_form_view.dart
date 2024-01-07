import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/util/show_loading/show_loading.dart';
import 'package:hyper_ui/shared/widget/form/button/action_button.dart';
import '../controller/product_category_crud_form_controller.dart';
import '../state/product_category_crud_form_state.dart';
import 'package:get_it/get_it.dart';

class ProductCategoryCrudFormView extends StatefulWidget {
  const ProductCategoryCrudFormView({Key? key}) : super(key: key);

  @override
  State<ProductCategoryCrudFormView> createState() =>
      _ProductCategoryCrudFormViewState();
}

class _ProductCategoryCrudFormViewState
    extends State<ProductCategoryCrudFormView> {
  ProductCategoryCrudFormController controller =
      ProductCategoryCrudFormController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (GetIt.I.isRegistered<ProductCategoryCrudFormController>()) {
      GetIt.I.unregister<ProductCategoryCrudFormController>();
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
      child: BlocListener<ProductCategoryCrudFormController,
          ProductCategoryCrudFormState>(
        listener: (context, state) {},
        child: BlocBuilder<ProductCategoryCrudFormController,
            ProductCategoryCrudFormState>(
          builder: (context, state) {
            final bloc = context.read<ProductCategoryCrudFormController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    ProductCategoryCrudFormController controller,
    ProductCategoryCrudFormState state,
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
                QTextField(
                  label: "Product category name",
                  validator: Validator.required,
                  value: state.productCategoryName,
                  onChanged: (value) {
                    state.productCategoryName = value;
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
