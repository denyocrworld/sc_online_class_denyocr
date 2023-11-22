import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';



class PatientDoctorSpesializationListBloc extends Bloc<
    PatientDoctorSpesializationListEvent,
    PatientDoctorSpesializationListState> implements IBlocBase {
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
