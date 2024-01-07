import 'package:hyper_ui/module/dashboard/widget/dashboard_customer_statistic.dart';
import 'package:hyper_ui/module/dashboard/widget/dashboard_menu.dart';
import 'package:hyper_ui/module/dashboard/widget/dashboard_order_statistic.dart';
import 'package:hyper_ui/shared/theme/theme_config.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/dashboard_controller.dart';
import '../state/dashboard_state.dart';
import 'package:get_it/get_it.dart';

class DashboardView extends StatefulWidget {
  DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  DashboardController controller = DashboardController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<DashboardController>()) {
      GetIt.I.unregister<DashboardController>();
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
      child: BlocListener<DashboardController, DashboardState>(
        listener: (context, state) {},
        child: BlocBuilder<DashboardController, DashboardState>(
          builder: (context, state) {
            final bloc = context.read<DashboardController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    DashboardController controller,
    DashboardState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DashboardOrderStatistic(),
              SizedBox(
                height: 12.0,
              ),
              DashboardCustomerStatistic(),
              SizedBox(
                height: 20.0,
              ),
              DashboardMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
