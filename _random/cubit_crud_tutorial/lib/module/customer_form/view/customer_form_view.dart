
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/customer_form_controller.dart';
import '../state/customer_form_state.dart';
import 'package:get_it/get_it.dart';

class CustomerFormView extends StatefulWidget {
  const CustomerFormView({Key? key}) : super(key: key);

  @override
  State<CustomerFormView> createState() => _CustomerFormViewState();
}

class _CustomerFormViewState extends State<CustomerFormView> {
  CustomerFormController controller = CustomerFormController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<CustomerFormController>()) {
      GetIt.I.unregister<CustomerFormController>();
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
      child: BlocListener<CustomerFormController, CustomerFormState>(
        listener: (context, state) {},
        child: BlocBuilder<CustomerFormController, CustomerFormState>(
          builder: (context, state) {
            final bloc = context.read<CustomerFormController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    CustomerFormController controller,
    CustomerFormState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomerForm'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Counter: ${state.counter}',
            style: const TextStyle(fontSize: 24),
          ),
          IconButton(
            onPressed: () => controller.increment(),
            icon: const Icon(
              Icons.add,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
    
    