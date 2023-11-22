import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';

class PatientSpecializationListView extends StatefulWidget {
  const PatientSpecializationListView({Key? key}) : super(key: key);

  @override
  State<PatientSpecializationListView> createState() =>
      _PatientSpecializationListViewState();
}

class _PatientSpecializationListViewState
    extends State<PatientSpecializationListView> {
  PatientSpecializationListBloc bloc = PatientSpecializationListBloc();
  @override
  void initState() {
    if (GetIt.I.isRegistered<PatientSpecializationListBloc>())
      GetIt.I.unregister<PatientSpecializationListBloc>();
    GetIt.I.registerSingleton(bloc);
    bloc.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => bloc.ready(),
    );
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => bloc,
      child: BlocListener<PatientSpecializationListBloc,
          PatientSpecializationListState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientSpecializationListBloc,
            PatientSpecializationListState>(
          builder: (context, state) {
            final bloc = context.read<PatientSpecializationListBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientSpecializationListBloc bloc,
    PatientSpecializationListState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PatientSpecializationList'),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SearchField(
                onSubmitted: (value) {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0 / 0.36,
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                ),
                itemCount: state.categories.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = state.categories[index];
                  return InkWell(
                    onTap: () => Get.to(PatientDoctorSpesializationListView()),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "$item",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
