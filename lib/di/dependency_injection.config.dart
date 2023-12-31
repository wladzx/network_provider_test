// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/home/presentation/view_model/home_screen_view_model.dart'
    as _i3;
import '../features/invoice_details/presentation/view_model/invoice_details_screen_view_model.dart'
    as _i4;
import '../features/settings/presentation/view_model/settings_screen_view_model.dart'
    as _i5;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.HomeScreenViewModel>(() => _i3.HomeScreenViewModel());
  gh.factory<_i4.InvoiceDetailsScreenViewModel>(
      () => _i4.InvoiceDetailsScreenViewModel());
  gh.factory<_i5.SettingsScreenViewModel>(() => _i5.SettingsScreenViewModel());
  return getIt;
}
