// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'module/auth/login/bloc/login_bloc.dart' as _i7;
import 'module/custom/under_maintenance/bloc/under_maintenance_bloc.dart'
    as _i23;
import 'module/doctor/doctor_dashboard/bloc/doctor_dashboard_bloc.dart' as _i3;
import 'module/doctor/doctor_main_navigation/bloc/doctor_main_navigation_bloc.dart'
    as _i4;
import 'module/doctor/doctor_profile/bloc/doctor_profile_bloc.dart' as _i5;
import 'module/patient/patient_dashboard/bloc/patient_dashboard_bloc.dart'
    as _i9;
import 'module/patient/patient_doctor_list/bloc/patient_doctor_list_bloc.dart'
    as _i10;
import 'module/patient/patient_doctor_spesialization_list/bloc/patient_doctor_spesialization_list_bloc.dart'
    as _i11;
import 'module/patient/patient_lab_test_list/bloc/patient_lab_test_list_bloc.dart'
    as _i12;
import 'module/patient/patient_main_navigation/bloc/patient_main_navigation_bloc.dart'
    as _i13;
import 'module/patient/patient_medical_treatment_list/bloc/patient_medical_treatment_list_bloc.dart'
    as _i14;
import 'module/patient/patient_order/bloc/patient_order_bloc.dart' as _i15;
import 'module/patient/patient_order_detail/bloc/patient_order_detail_bloc.dart'
    as _i16;
import 'module/patient/patient_order_list/bloc/patient_order_list_bloc.dart'
    as _i17;
import 'module/patient/patient_order_patient_data/bloc/patient_order_patient_data_bloc.dart'
    as _i18;
import 'module/patient/patient_order_payment/bloc/patient_order_payment_bloc.dart'
    as _i19;
import 'module/patient/patient_profile/bloc/patient_profile_bloc.dart' as _i20;
import 'module/patient/patient_specialization_list/bloc/patient_specialization_list_bloc.dart'
    as _i21;
import 'module/tutorial/bloc/tutorial_bloc.dart' as _i22;
import 'service/doctor_service/doctor_service.dart' as _i6;
import 'service/order_service/order_service.dart' as _i8;

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
    gh.singleton<_i3.DoctorDashboardBloc>(_i3.DoctorDashboardBloc());
    gh.singleton<_i4.DoctorMainNavigationBloc>(_i4.DoctorMainNavigationBloc());
    gh.singleton<_i5.DoctorProfileBloc>(_i5.DoctorProfileBloc());
    gh.singleton<_i6.DoctorService>(_i6.DoctorService());
    gh.singleton<_i7.LoginBloc>(_i7.LoginBloc());
    gh.factory<_i8.OrderService>(() => _i8.OrderService());
    gh.singleton<_i9.PatientDashboardBloc>(_i9.PatientDashboardBloc());
    gh.singleton<_i10.PatientDoctorListBloc>(_i10.PatientDoctorListBloc());
    gh.singleton<_i11.PatientDoctorSpesializationListBloc>(
        _i11.PatientDoctorSpesializationListBloc());
    gh.singleton<_i12.PatientLabTestListBloc>(_i12.PatientLabTestListBloc());
    gh.singleton<_i13.PatientMainNavigationBloc>(
        _i13.PatientMainNavigationBloc());
    gh.singleton<_i14.PatientMedicalTreatmentListBloc>(
        _i14.PatientMedicalTreatmentListBloc());
    gh.singleton<_i15.PatientOrderBloc>(_i15.PatientOrderBloc());
    gh.singleton<_i16.PatientOrderDetailBloc>(_i16.PatientOrderDetailBloc());
    gh.singleton<_i17.PatientOrderListBloc>(_i17.PatientOrderListBloc());
    gh.singleton<_i18.PatientOrderPatientDataBloc>(
        _i18.PatientOrderPatientDataBloc());
    gh.singleton<_i19.PatientOrderPaymentBloc>(_i19.PatientOrderPaymentBloc());
    gh.singleton<_i20.PatientProfileBloc>(_i20.PatientProfileBloc());
    gh.singleton<_i21.PatientSpecializationListBloc>(
        _i21.PatientSpecializationListBloc());
    gh.singleton<_i22.TutorialBloc>(_i22.TutorialBloc());
    gh.singleton<_i23.UnderMaintenanceBloc>(_i23.UnderMaintenanceBloc());
    return this;
  }
}
