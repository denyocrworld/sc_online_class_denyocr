// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'module/edit_profile/controller/edit_profile_controller.dart' as _i3;
import 'module/login/controller/login_controller.dart' as _i4;
import 'module/pos/controller/pos_controller.dart' as _i5;
import 'module/pos_payment/controller/pos_payment_controller.dart' as _i6;
import 'module/product_crud_form/controller/product_crud_form_controller.dart'
    as _i7;
import 'module/product_crud_list/controller/product_crud_list_controller.dart'
    as _i8;
import 'module/register/controller/register_controller.dart' as _i9;

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
    gh.singleton<_i3.EditProfileController>(_i3.EditProfileController());
    gh.singleton<_i4.LoginController>(_i4.LoginController());
    gh.singleton<_i5.PosController>(_i5.PosController());
    gh.singleton<_i6.PosPaymentController>(_i6.PosPaymentController());
    gh.singleton<_i7.ProductCrudFormController>(
        _i7.ProductCrudFormController());
    gh.singleton<_i8.ProductCrudListController>(
        _i8.ProductCrudListController());
    gh.singleton<_i9.RegisterController>(_i9.RegisterController());
    return this;
  }
}
