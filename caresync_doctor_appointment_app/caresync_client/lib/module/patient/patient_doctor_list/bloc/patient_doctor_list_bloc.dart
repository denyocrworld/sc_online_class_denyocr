import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:hyper_ui/service/doctor_service/doctor_service.dart';

import '../event/patient_doctor_list_event.dart';
import '../state/patient_doctor_list_state.dart';


class PatientDoctorListBloc
    extends Bloc<PatientDoctorListEvent, PatientDoctorListState>
    implements IBlocBase {
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
    add(PatientDoctorListGetDoctorsEvent());
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }
}
