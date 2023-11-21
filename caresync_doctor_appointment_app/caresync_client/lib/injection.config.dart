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
    as _i24;
import 'module/doctor/doctor_dashboard/bloc/doctor_dashboard_bloc.dart' as _i3;
import 'module/doctor/doctor_main_navigation/bloc/doctor_main_navigation_bloc.dart'
    as _i4;
import 'module/doctor/doctor_profile/bloc/doctor_profile_bloc.dart' as _i5;
import 'module/patient/patient_dashboard/bloc/patient_dashboard_bloc.dart'
    as _i9;
import 'module/patient/patient_doctor_detail/bloc/patient_doctor_detail_bloc.dart'
    as _i10;
import 'module/patient/patient_doctor_list/bloc/patient_doctor_list_bloc.dart'
    as _i11;
import 'module/patient/patient_doctor_spesialization_list/bloc/patient_doctor_spesialization_list_bloc.dart'
    as _i12;
import 'module/patient/patient_lab_test_list/bloc/patient_lab_test_list_bloc.dart'
    as _i13;
import 'module/patient/patient_main_navigation/bloc/patient_main_navigation_bloc.dart'
    as _i14;
import 'module/patient/patient_medical_treatment_list/bloc/patient_medical_treatment_list_bloc.dart'
    as _i15;
import 'module/patient/patient_order/bloc/patient_order_bloc.dart' as _i16;
import 'module/patient/patient_order_detail/bloc/patient_order_detail_bloc.dart'
    as _i17;
import 'module/patient/patient_order_list/bloc/patient_order_list_bloc.dart'
    as _i18;
import 'module/patient/patient_order_patient_data/bloc/patient_order_patient_data_bloc.dart'
    as _i19;
import 'module/patient/patient_order_payment/bloc/patient_order_payment_bloc.dart'
    as _i20;
import 'module/patient/patient_profile/bloc/patient_profile_bloc.dart' as _i21;
import 'module/patient/patient_specialization_list/bloc/patient_specialization_list_bloc.dart'
    as _i22;
import 'module/tutorial/bloc/tutorial_bloc.dart' as _i23;
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
    gh.lazySingleton<_i10.PatientDoctorDetailBloc>(
        () => _i10.PatientDoctorDetailBloc());
    gh.singleton<_i11.PatientDoctorListBloc>(_i11.PatientDoctorListBloc());
    gh.singleton<_i12.PatientDoctorSpesializationListBloc>(
        _i12.PatientDoctorSpesializationListBloc());
    gh.singleton<_i13.PatientLabTestListBloc>(_i13.PatientLabTestListBloc());
    gh.singleton<_i14.PatientMainNavigationBloc>(
        _i14.PatientMainNavigationBloc());
    gh.singleton<_i15.PatientMedicalTreatmentListBloc>(
        _i15.PatientMedicalTreatmentListBloc());
    gh.singleton<_i16.PatientOrderBloc>(_i16.PatientOrderBloc());
    gh.singleton<_i17.PatientOrderDetailBloc>(_i17.PatientOrderDetailBloc());
    gh.singleton<_i18.PatientOrderListBloc>(_i18.PatientOrderListBloc());
    gh.singleton<_i19.PatientOrderPatientDataBloc>(
        _i19.PatientOrderPatientDataBloc());
    gh.singleton<_i20.PatientOrderPaymentBloc>(_i20.PatientOrderPaymentBloc());
    gh.singleton<_i21.PatientProfileBloc>(_i21.PatientProfileBloc());
    gh.singleton<_i22.PatientSpecializationListBloc>(
        _i22.PatientSpecializationListBloc());
    gh.singleton<_i23.TutorialBloc>(_i23.TutorialBloc());
    gh.singleton<_i24.UnderMaintenanceBloc>(_i24.UnderMaintenanceBloc());
    return this;
  }
}
