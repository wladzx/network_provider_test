import 'package:flutter/material.dart';
import 'package:network_provider_test/core/view/base_view.dart';
import 'package:network_provider_test/features/settings/presentation/view_model/settings_screen_view_model.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseView<SettingsScreenViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Settings'),
          ),
          body: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Settings Screen',
                ),
              ],
            ),
          ),
        );
      },
      onError: (error, viewModel) {},
      onModelReady: (viewModel) {},
    );
  }
}
