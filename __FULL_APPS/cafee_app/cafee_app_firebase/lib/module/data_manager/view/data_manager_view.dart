import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import '../controller/data_manager_controller.dart';
import '../state/data_manager_state.dart';
import 'package:get_it/get_it.dart';

class DataManagerView extends StatefulWidget {
  const DataManagerView({Key? key}) : super(key: key);

  @override
  State<DataManagerView> createState() => _DataManagerViewState();
}

class _DataManagerViewState extends State<DataManagerView> {
  DataManagerController controller = DataManagerController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<DataManagerController>()) {
      GetIt.I.unregister<DataManagerController>();
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
      child: BlocListener<DataManagerController, DataManagerState>(
        listener: (context, state) {},
        child: BlocBuilder<DataManagerController, DataManagerState>(
          builder: (context, state) {
            final bloc = context.read<DataManagerController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    DataManagerController controller,
    DataManagerState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataManager'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            QButton(
              label: "Reset data",
              onPressed: () => controller.resetData(),
            ),
          ],
        ),
      ),
    );
  }
}
