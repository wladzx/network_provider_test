import 'package:flutter/material.dart';
import 'package:network_provider_test/components/texts/ch_text.dart';
import 'package:network_provider_test/core/view/base_view.dart';
import 'package:network_provider_test/features/invoice_details/presentation/view_model/invoice_details_screen_view_model.dart';

class InvoiceDetailsScreen extends StatefulWidget {
  const InvoiceDetailsScreen({Key? key}) : super(key: key);

  @override
  State<InvoiceDetailsScreen> createState() => _InvoiceDetailsScreenState();
}

class _InvoiceDetailsScreenState extends State<InvoiceDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseView<InvoiceDetailsScreenViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Invoice Details'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 30),
              const CHText(text: 'Total debt', type: CHTextType.body2),
              const CHText(text: '\$138.56', type: CHTextType.subtitle),
              const SizedBox(height: 16),
              _cardsList(context),
              const SizedBox(height: 16),
              const CHText(
                text: 'Invoice History',
                type: CHTextType.subtitle,
              ),
              const SizedBox(height: 16),
              _invoicesList()
            ],
          ),
        );
      },
      onError: (error, viewModel) {},
      onModelReady: (viewModel) {},
    );
  }

  Widget _cardsList(BuildContext context) {
    return SizedBox(
      height: 200.0,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.8),
        itemBuilder: (BuildContext context, int itemIndex) {
          return _buildCarouselItem(context);
        },
      ),
    );
  }

  Widget _buildCarouselItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: const CHText(
          text: 'Credit card info',
          color: Colors.white,
          type: CHTextType.subtitle,
        ),
      ),
    );
  }

  Widget _invoicesList() {
    final invoicesList = ['paid', 'processing', 'payment pending'];
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: invoicesList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CHText(
                      text: 'Invoice number $index',
                      type: CHTextType.body1,
                    ),
                    CHText(
                      text: 'Payment status: ${invoicesList[index]}',
                      color: Colors.black,
                      type: CHTextType.body2,
                    ),
                  ],
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(height: 3);
        },
      ),
    );
  }
}
