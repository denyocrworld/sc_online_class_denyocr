
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    
    