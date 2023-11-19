// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'module/patient/patient_doctor_detail/bloc/patient_doctor_detail_bloc.dart'
    as _i5;
import 'module/patient/patient_doctor_list/bloc/patient_doctor_list_bloc.dart'
    as _i6;
import 'module/patient/patient_order/bloc/patient_order_bloc.dart' as _i7;
import 'module/patient/patient_order_patient_data/bloc/patient_order_patient_data_bloc.dart'
    as _i8;
import 'service/doctor_service/doctor_service.dart' as _i3;
import 'service/order_service/order_service.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.DoctorService>(_i3.DoctorService());
    gh.factory<_i4.OrderService>(() => _i4.OrderService());
    gh.singleton<_i5.PatientDoctorDetailBloc>(_i5.PatientDoctorDetailBloc());
    gh.singleton<_i6.PatientDoctorListBloc>(_i6.PatientDoctorListBloc());
    gh.singleton<_i7.PatientOrderBloc>(_i7.PatientOrderBloc());
    gh.singleton<_i8.PatientOrderPatientDataBloc>(
        _i8.PatientOrderPatientDataBloc());
    return this;
  }
}
