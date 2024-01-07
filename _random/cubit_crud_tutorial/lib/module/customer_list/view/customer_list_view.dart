
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/customer_list_controller.dart';
import '../state/customer_list_state.dart';
import 'package:get_it/get_it.dart';

class CustomerListView extends StatefulWidget {
  const CustomerListView({Key? key}) : super(key: key);

  @override
  State<CustomerListView> createState() => _CustomerListViewState();
}

class _CustomerListViewState extends State<CustomerListView> {
  CustomerListController controller = CustomerListController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<CustomerListController>()) {
      GetIt.I.unregister<CustomerListController>();
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
      child: BlocListener<CustomerListController, CustomerListState>(
        listener: (context, state) {},
        child: BlocBuilder<CustomerListController, CustomerListState>(
          builder: (context, state) {
            final bloc = context.read<CustomerListController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    CustomerListController controller,
    CustomerListState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomerList'),
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
    
    