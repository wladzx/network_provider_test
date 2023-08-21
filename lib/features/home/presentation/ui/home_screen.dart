import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:network_provider_test/components/texts/ch_text.dart';
import 'package:network_provider_test/core/view/base_view.dart';
import 'package:network_provider_test/features/home/presentation/view_model/home_screen_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeScreenViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(viewModel.title),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: CHText(
                    text: 'Latest Notifications',
                    type: CHTextType.subtitle,
                  ),
                ),
                notificationList(),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: CHText(
                    text: 'Upgrade your plan',
                    type: CHTextType.subtitle,
                  ),
                ),
                const SizedBox(height: 16),
                _plans(),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: CHText(
                    text: 'Last invoice',
                    type: CHTextType.subtitle,
                  ),
                ),
                const SizedBox(height: 16),
                _lastInvoice(),
                const SizedBox(height: 16),
                _currentPlan(),
              ],
            ),
          ),
        );
      },
      onError: (error, viewModel) {},
      onModelReady: (viewModel) {},
    );
  }

  Widget notificationList() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 75,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _notificationItem(Colors.red, 'Payment mandate expired!'),
          _notificationItem(Colors.black45, '50% discount on static IP plans!'),
          _notificationItem(Colors.blueAccent, 'Check this out!'),
        ],
      ),
    );
  }

  Widget _notificationItem(Color bgColor, String notificationMsg) {
    return Container(
      width: 160,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        notificationMsg,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _plans() {
    return Row(
      children: [
        Expanded(
          child: _planItem(
            Colors.green,
            '1000 mpbs',
            'from \$25.99',
          ),
        ),
        Expanded(
          child: _planItem(
            Colors.blue,
            '500 mpbs',
            'from \$14.99',
          ),
        ),
        Expanded(
          child: _planItem(
            Colors.deepPurple,
            '150 mpbs',
            'from \$9.99',
          ),
        ),
      ],
    );
  }

  Widget _planItem(Color color, String description, String price) {
    return Container(
      height: 75,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CHText(
            text: description,
            color: Colors.white,
            type: CHTextType.body1,
          ),
          CHText(
            text: price,
            color: Colors.white,
            type: CHTextType.body1,
          ),
        ],
      ),
    );
  }

  Widget _lastInvoice() {
    return InkWell(
      onTap: (){
        context.goNamed('invoiceDetails');
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(8),
        width: double.infinity,
        height: 150,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'June 2023',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                Text(
                  '2312324',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Spacer(),
            Text('\$66,23'),
            Spacer(),
            Row(
              children: [
                Text(
                  'Not paid',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                Text(
                  'Due date: 03.08.2023',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _currentPlan() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      height: 150,
      decoration: const BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CHText(
            text: 'Current plan',
            type: CHTextType.subtitle,
            color: Colors.white,
          ),
          CHText(
            text: 'Manage, modify or upgrade your current plan',
            type: CHTextType.body2,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
