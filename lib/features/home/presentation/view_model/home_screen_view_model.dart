import 'package:injectable/injectable.dart';
import 'package:network_provider_test/core/view_model/base_view_model.dart';

@injectable
class HomeScreenViewModel extends BaseViewModel {
  HomeScreenViewModel();

  String get title => 'Home';
}
