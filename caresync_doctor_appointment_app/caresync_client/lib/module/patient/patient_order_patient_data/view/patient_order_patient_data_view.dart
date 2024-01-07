import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/theme/theme_config.dart';
import 'package:hyper_ui/shared/util/validator/validator.dart';
import 'package:hyper_ui/shared/widget/container/qcontainer.dart';
import 'package:hyper_ui/shared/widget/form/date_picker/datepicker.dart';
import 'package:hyper_ui/shared/widget/form/memo_field/memo_field.dart';
import 'package:hyper_ui/shared/widget/form/radio/radio.dart';
import 'package:hyper_ui/shared/widget/form/radio/radio2.dart';
import 'package:hyper_ui/shared/widget/form/switch/switch.dart';
import 'package:hyper_ui/shared/widget/form/textfield/text_field.dart';
import '../bloc/patient_order_patient_data_bloc.dart';
import '../event/patient_order_patient_data_event.dart';
import '../state/patient_order_patient_data_state.dart';
=======
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870

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
<<<<<<< HEAD
    bloc.initState();
=======
    if (GetIt.I.isRegistered<PatientOrderPatientDataBloc>())
      GetIt.I.unregister<PatientOrderPatientDataBloc>();
    GetIt.I.registerSingleton(bloc);
    bloc.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => bloc.ready(),
    );
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
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
<<<<<<< HEAD
                        value: null,
=======
                        value: state.fullName,
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
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
<<<<<<< HEAD
                        value: null,
=======
                        value: DateTime.tryParse(state.birthDate.toString()),
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
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
<<<<<<< HEAD
=======
                        value: state.gender,
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
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
<<<<<<< HEAD
                        value: null,
=======
                        value: state.idCard,
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
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
<<<<<<< HEAD
                        value: null,
=======
                        value: state.address,
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
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
