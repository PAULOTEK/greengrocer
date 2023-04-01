import 'package:flutter/material.dart';
import 'package:greengrocer/config/app_data.dart' as appData;
import 'package:greengrocer/modules/orders/view/widget/order_tile.dart';

class OrdersTabView extends StatelessWidget {
  const OrdersTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedidos'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (_, index) => const SizedBox(height: 10),
        itemBuilder: (_, index) => OrderTile(order: appData.orders[index]),
        itemCount: appData.orders.length,
      ),
    );
  }
}
