// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'module/data_manager/controller/data_manager_controller.dart' as _i3;
import 'module/edit_profile/controller/edit_profile_controller.dart' as _i4;
import 'module/login/controller/login_controller.dart' as _i5;
import 'module/pos/controller/pos_controller.dart' as _i6;
import 'module/pos_payment/controller/pos_payment_controller.dart' as _i7;
import 'module/product_category_crud_form/controller/product_category_crud_form_controller.dart'
    as _i8;
import 'module/product_category_crud_list/controller/product_category_crud_list_controller.dart'
    as _i9;
import 'module/product_crud_form/controller/product_crud_form_controller.dart'
    as _i10;
import 'module/product_crud_list/controller/product_crud_list_controller.dart'
    as _i11;
import 'module/register/controller/register_controller.dart' as _i12;

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
    gh.singleton<_i3.DataManagerController>(_i3.DataManagerController());
    gh.singleton<_i4.EditProfileController>(_i4.EditProfileController());
    gh.singleton<_i5.LoginController>(_i5.LoginController());
    gh.singleton<_i6.PosController>(_i6.PosController());
    gh.singleton<_i7.PosPaymentController>(_i7.PosPaymentController());
    gh.singleton<_i8.ProductCategoryCrudFormController>(
        _i8.ProductCategoryCrudFormController());
    gh.singleton<_i9.ProductCategoryCrudListController>(
        _i9.ProductCategoryCrudListController());
    gh.singleton<_i10.ProductCrudFormController>(
        _i10.ProductCrudFormController());
    gh.singleton<_i11.ProductCrudListController>(
        _i11.ProductCrudListController());
    gh.singleton<_i12.RegisterController>(_i12.RegisterController());
    return this;
  }
}
