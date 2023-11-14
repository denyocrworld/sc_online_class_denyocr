import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';
import '../event/patient_doctor_spesialization_list_event.dart';
import '../state/patient_doctor_spesialization_list_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientDoctorSpesializationListBloc extends Bloc<
    PatientDoctorSpesializationListEvent,
    PatientDoctorSpesializationListState> with _BlocLifecycle {
  PatientDoctorSpesializationListBloc()
      : super(PatientDoctorSpesializationListState()) {
    on<PatientDoctorSpesializationListIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });

    on<PatientDoctorSpesializationListLoadDataEvent>((event, emit) async {
      state.doctorList = await GetIt.I<DoctorService>().getDoctors();
      emit(state.copyWith());
    });
  }

  @override
  void initState() {
    //initState event
    add(PatientDoctorSpesializationListLoadDataEvent());
    super.initState();
  }

  @override
  void dispose() {
    //dispose event
    super.dispose();
  }

  @override
  Future<void> close() {
    dispose();
    return super.close();
  }
}
