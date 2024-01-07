import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
<<<<<<< HEAD
import 'package:hyper_ui/model/doctor/doctor.dart';
import 'package:hyper_ui/service/doctor_service/doctor_service.dart';
import 'package:injectable/injectable.dart';
import '../event/patient_doctor_list_event.dart';
import '../state/patient_doctor_list_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

@singleton
class PatientDoctorListBloc
    extends Bloc<PatientDoctorListEvent, PatientDoctorListState>
    with _BlocLifecycle {
=======
import 'package:hyper_ui/bloc_util.dart';
import 'package:hyper_ui/service/doctor_service/doctor_service.dart';

import '../event/patient_doctor_list_event.dart';
import '../state/patient_doctor_list_state.dart';


class PatientDoctorListBloc
    extends Bloc<PatientDoctorListEvent, PatientDoctorListState>
    implements IBlocBase {
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  PatientDoctorListBloc() : super(PatientDoctorListState()) {
    on<PatientDoctorListIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
    on<PatientDoctorListGetDoctorsEvent>((event, emit) async {
      state.doctorList = [];
      emit(state.copyWith());

      state.doctorList = await GetIt.I<DoctorService>().getDoctors(
        search: event.search,
      );

      emit(state.copyWith());
    });
  }

  @override
  void initState() {
    //initState event
<<<<<<< HEAD
    super.initState();
=======
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
    add(PatientDoctorListGetDoctorsEvent());
  }

  @override
  void dispose() {
    //dispose event
<<<<<<< HEAD
    super.dispose();
  }

  @override
  Future<void> close() {
    dispose();
    return super.close();
=======
  }

  @override
  void ready() {
    //ready event
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  }
}
