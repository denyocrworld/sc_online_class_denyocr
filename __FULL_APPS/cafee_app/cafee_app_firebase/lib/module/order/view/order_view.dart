import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';

class OrderView extends StatefulWidget {
  const OrderView({Key? key}) : super(key: key);

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  OrderController controller = OrderController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<OrderController>()) {
      GetIt.I.unregister<OrderController>();
    }
    GetIt.I.registerSingleton(controller);
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
      child: BlocListener<OrderController, OrderState>(
        listener: (context, state) {},
        child: BlocBuilder<OrderController, OrderState>(
          builder: (context, state) {
            final bloc = context.read<OrderController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    OrderController controller,
    OrderState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            QSearchField2(
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 8.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: state.items.length,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  Map item = state.items[index];
                  return OrderItem(
                    index: index,
                    item: item,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
