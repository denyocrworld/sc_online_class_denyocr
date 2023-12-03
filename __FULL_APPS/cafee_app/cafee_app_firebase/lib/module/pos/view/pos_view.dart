import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/form/button/button.dart';
import '../controller/pos_controller.dart';
import '../state/pos_state.dart';
import 'package:get_it/get_it.dart';

class PosView extends StatefulWidget {
  const PosView({Key? key}) : super(key: key);

  @override
  State<PosView> createState() => _PosViewState();
}

class _PosViewState extends State<PosView> {
  PosController controller = PosController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<PosController>()) {
      GetIt.I.unregister<PosController>();
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
      child: BlocListener<PosController, PosState>(
        listener: (context, state) {},
        child: BlocBuilder<PosController, PosState>(
          builder: (context, state) {
            final bloc = context.read<PosController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PosController controller,
    PosState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pos'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //ALT+SHIFT+V
          Expanded(
            child: ListView.builder(
              itemCount: state.products.length,
              padding: EdgeInsets.zero,
              clipBehavior: Clip.none,
              itemBuilder: (context, index) {
                var item = state.products[index];
                return Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 24,
                        offset: Offset(0, 11),
                      ),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        8.0,
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 96,
                        height: 96,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.unsplash.com/photo-1643681154051-c43090a0fadb?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 2,
                              top: 2,
                              child: CircleAvatar(
                                radius: 14.0,
                                backgroundColor: Colors.black,
                                child: Text(
                                  "${item.stock ?? 0}",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Apple Smartwatch 9N Series",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              "\$145.00",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey[600],
                              ),
                            ),
                            const SizedBox(
                              height: 24.0,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () => controller.decreaseQty(item),
                                  child: CircleAvatar(
                                    radius: 16.0,
                                    backgroundColor: Colors.grey[200],
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.grey,
                                      size: 16.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 6.0,
                                  ),
                                  child: Text(
                                    "${item.qty}",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () => controller.increaseQty(item),
                                  child: CircleAvatar(
                                    radius: 16.0,
                                    backgroundColor: Colors.grey[200],
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.grey,
                                      size: 16.0,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: () => controller.emptyQty(item),
                                  child: CircleAvatar(
                                    radius: 16.0,
                                    backgroundColor: Colors.grey[200],
                                    child: Icon(
                                      Icons.delete_outline,
                                      color: Colors.grey,
                                      size: 16.0,
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
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Wrap(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                Text(
                  "${controller.total}",
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: QButton(
              label: "Checkout",
              onPressed: () => Get.to(PosPaymentView()),
            ),
          ),
        ],
      ),
    );
  }
}
