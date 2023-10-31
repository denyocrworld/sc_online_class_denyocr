import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/model/doctor/doctor.dart';
import 'package:hyper_ui/service/doctor_service/doctor_service.dart';
import '../event/patient_doctor_list_event.dart';
import '../state/patient_doctor_list_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientDoctorListBloc
    extends Bloc<PatientDoctorListEvent, PatientDoctorListState>
    with _BlocLifecycle {
  PatientDoctorListBloc() : super(PatientDoctorListState()) {
    on<PatientDoctorListIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
    on<PatientDoctorListGetDoctorsEvent>((event, emit) async {
      //List<dynamic> >>> List<Model> >>> List<Doctor>
      // List items = await DoctorService().get();
      // state.doctorList = items
      //     .map(
      //       (item) => Doctor.fromJson(item),
      //     )
      //     .toList();

      state.doctorList = await DoctorService().getDoctors();
      emit(state.copyWith());
    });
  }

  @override
  void initState() {
    //initState event
    super.initState();
    add(PatientDoctorListGetDoctorsEvent());
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
