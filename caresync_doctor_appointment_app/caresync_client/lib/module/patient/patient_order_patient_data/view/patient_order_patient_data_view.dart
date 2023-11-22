import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';

class PatientOrderPatientDataView extends StatefulWidget {
  const PatientOrderPatientDataView({Key? key}) : super(key: key);

  @override
  State<PatientOrderPatientDataView> createState() =>
      _PatientOrderPatientDataViewState();
}

class _PatientOrderPatientDataViewState
    extends State<PatientOrderPatientDataView> {
  PatientOrderPatientDataBloc bloc = PatientOrderPatientDataBloc();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (GetIt.I.isRegistered<PatientOrderPatientDataBloc>())
      GetIt.I.unregister<PatientOrderPatientDataBloc>();
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
      child: BlocListener<PatientOrderPatientDataBloc,
          PatientOrderPatientDataState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientOrderPatientDataBloc,
            PatientOrderPatientDataState>(
          builder: (context, state) {
            final bloc = context.read<PatientOrderPatientDataBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientOrderPatientDataBloc bloc,
    PatientOrderPatientDataState state,
  ) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              QContainer(
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Patient data",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        "Fill in the forms",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      QTextField(
                        label: "Full name",
                        validator: Validator.required,
                        value: state.fullName,
                        onChanged: (value) {
                          state.fullName = value;
                        },
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      QDatePicker(
                        label: "Birth date",
                        validator: Validator.required,
                        value: DateTime.tryParse(state.birthDate.toString()),
                        onChanged: (value) {
                          state.birthDate = DateFormat("y-MM-dd").format(value);
                        },
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      QRadioField2(
                        label: "Gender",
                        validator: Validator.atLeastOneitem,
                        value: state.gender,
                        items: [
                          {
                            "label": "Female",
                            "value": "Female",
                          },
                          {
                            "label": "Male",
                            "value": "Male",
                          }
                        ],
                        onChanged: (value, label) {
                          state.gender = value;
                        },
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      QTextField(
                        label: "ID Card",
                        validator: Validator.required,
                        value: state.idCard,
                        onChanged: (value) {
                          state.idCard = value;
                        },
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      QMemoField(
                        label: "Address",
                        validator: Validator.required,
                        value: state.address,
                        onChanged: (value) {
                          state.address = value;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.all(12.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 42,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: warningColor,
            ),
            onPressed: () {
              bool isValid = formKey.currentState!.validate();
              if (isValid) {
                var stepNavigationController =
                    StepNavigationController.instance;
                stepNavigationController.updateIndex(3);
              }
            },
            child: const Text("Continue"),
          ),
        ),
      ),
    );
  }
}
