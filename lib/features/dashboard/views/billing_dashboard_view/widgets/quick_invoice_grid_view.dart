import 'package:flutter/material.dart';

import 'custom_quick_invoice_text_field.dart';

class QuickInvoiceGridView extends StatelessWidget {
  const QuickInvoiceGridView({
    super.key,
  });

  static const List<String> titles = [
    'Customer name',
    'Customer Email',
    'Item name',
    'Item mount',
  ];
  static const List<String> hintsText = [
    'Type customer name',
    'Type customer Email',
    'Type Item name',
    'USD',
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 24,
            childAspectRatio: (constraints.maxWidth / 2 - 8) /
                105, // 8 because padding between them is 16 , 105 refer to hight
          ),
          itemBuilder: (context, index) => CustomQuickInvoiceTextField(
            hintText: hintsText[index],
            title: titles[index],
          ),
          itemCount: titles.length,
        );
      },
    );
  }
}
