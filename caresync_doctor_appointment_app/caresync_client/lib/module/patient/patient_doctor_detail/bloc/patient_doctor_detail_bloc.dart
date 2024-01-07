import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import 'package:injectable/injectable.dart';
import '../event/patient_doctor_detail_event.dart';
import '../state/patient_doctor_detail_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

// @injectable
// @lazySingleton
@singleton
class PatientDoctorDetailBloc
    extends Bloc<PatientDoctorDetailEvent, PatientDoctorDetailState>
    with _BlocLifecycle {
=======
import 'package:hyper_ui/bloc_util.dart';
import '../event/patient_doctor_detail_event.dart';
import '../state/patient_doctor_detail_state.dart';

class PatientDoctorDetailBloc
    extends Bloc<PatientDoctorDetailEvent, PatientDoctorDetailState>
    implements IBlocBase {
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  PatientDoctorDetailBloc() : super(PatientDoctorDetailState()) {
    print("PatientDoctorDetailBloc is created");
    print("---");

    on<PatientDoctorDetailIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
<<<<<<< HEAD
=======

    on<PatientDoctorDetailSetDoctorEvent>((event, emit) {
      state.doctor = event.doctor;
      emit(state.copyWith());
    });
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  }

  @override
  void initState() {
    //initState event
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
