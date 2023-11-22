import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';



class PatientDashboardBloc
    extends Bloc<PatientDashboardEvent, PatientDashboardState>
    implements IBlocBase {
  PatientDashboardBloc() : super(PatientDashboardState()) {
    on<PatientDashboardIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });

    on<PatientDashboardOnSearchEvent>((event, emit) {
      var patientDoctorListBloc = GetIt.I<PatientDoctorListBloc>();
      patientDoctorListBloc.add(PatientDoctorListGetDoctorsEvent(
        search: event.search,
      ));
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
