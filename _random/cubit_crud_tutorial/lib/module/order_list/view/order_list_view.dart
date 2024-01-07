
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/order_list_controller.dart';
import '../state/order_list_state.dart';
import 'package:get_it/get_it.dart';

class OrderListView extends StatefulWidget {
  const OrderListView({Key? key}) : super(key: key);

  @override
  State<OrderListView> createState() => _OrderListViewState();
}

class _OrderListViewState extends State<OrderListView> {
  OrderListController controller = OrderListController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<OrderListController>()) {
      GetIt.I.unregister<OrderListController>();
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
      child: BlocListener<OrderListController, OrderListState>(
        listener: (context, state) {},
        child: BlocBuilder<OrderListController, OrderListState>(
          builder: (context, state) {
            final bloc = context.read<OrderListController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    OrderListController controller,
    OrderListState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OrderList'),
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
    
    