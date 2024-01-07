// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'module/customer_form/controller/customer_form_controller.dart' as _i3;
import 'module/customer_list/controller/customer_list_controller.dart' as _i4;
import 'module/dashboard/controller/dashboard_controller.dart' as _i5;
import 'module/login/controller/login_controller.dart' as _i6;
import 'module/main_navigation/controller/main_navigation_controller.dart'
    as _i7;
import 'module/order_list/controller/order_list_controller.dart' as _i8;
import 'module/pos/controller/pos_controller.dart' as _i9;
import 'module/product_form/controller/product_form_controller.dart' as _i10;
import 'module/product_list/controller/product_list_controller.dart' as _i11;
import 'module/profile/controller/profile_controller.dart' as _i12;

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
    gh.singleton<_i3.CustomerFormController>(_i3.CustomerFormController());
    gh.singleton<_i4.CustomerListController>(_i4.CustomerListController());
    gh.singleton<_i5.DashboardController>(_i5.DashboardController());
    gh.singleton<_i6.LoginController>(_i6.LoginController());
    gh.singleton<_i7.MainNavigationController>(_i7.MainNavigationController());
    gh.singleton<_i8.OrderListController>(_i8.OrderListController());
    gh.singleton<_i9.PosController>(_i9.PosController());
    gh.singleton<_i10.ProductFormController>(_i10.ProductFormController());
    gh.singleton<_i11.ProductListController>(_i11.ProductListController());
    gh.singleton<_i12.ProfileController>(_i12.ProfileController());
    return this;
  }
}
