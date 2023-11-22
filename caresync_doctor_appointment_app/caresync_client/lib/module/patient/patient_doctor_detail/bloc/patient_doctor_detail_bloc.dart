import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/bloc_util.dart';
import '../event/patient_doctor_detail_event.dart';
import '../state/patient_doctor_detail_state.dart';

class PatientDoctorDetailBloc
    extends Bloc<PatientDoctorDetailEvent, PatientDoctorDetailState>
    implements IBlocBase {
  PatientDoctorDetailBloc() : super(PatientDoctorDetailState()) {
    print("PatientDoctorDetailBloc is created");
    print("---");

    on<PatientDoctorDetailIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });

    on<PatientDoctorDetailSetDoctorEvent>((event, emit) {
      state.doctor = event.doctor;
      emit(state.copyWith());
    });
  }

  @override
  void initState() {
    //initState event
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
