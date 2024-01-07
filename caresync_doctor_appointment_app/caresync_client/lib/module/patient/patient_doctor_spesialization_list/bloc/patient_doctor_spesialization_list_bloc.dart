import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';
<<<<<<< HEAD
import '../event/patient_doctor_spesialization_list_event.dart';
import '../state/patient_doctor_spesialization_list_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientDoctorSpesializationListBloc extends Bloc<
    PatientDoctorSpesializationListEvent,
    PatientDoctorSpesializationListState> with _BlocLifecycle {
=======



class PatientDoctorSpesializationListBloc extends Bloc<
    PatientDoctorSpesializationListEvent,
    PatientDoctorSpesializationListState> implements IBlocBase {
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
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
<<<<<<< HEAD
    super.initState();
=======
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
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
