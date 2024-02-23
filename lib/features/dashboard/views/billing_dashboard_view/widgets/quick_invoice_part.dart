import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'latest_transaction_list.dart';
import 'latest_transaction_text.dart';
import 'quick_invoice_bottom_buttons.dart';
import 'quick_invoice_divider.dart';
import 'quick_invoice_grid_view.dart';
import 'quick_invoice_header.dart';

class QuickInvoicePart extends StatelessWidget {
  const QuickInvoicePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          Gap(24),
          LatestTransactionText(),
          Gap(12),
          LatestTransactionList(),
          QuickInvoiceDivider(),
          Flexible(child: QuickInvoiceGridView()),
          Gap(24),
          QuickInvoiceBottomButtons(),
        ],
      ),
    );
  }
}
