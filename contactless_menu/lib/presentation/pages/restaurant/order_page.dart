import 'package:contactless_menu/application/restaurant/order/bloc/order_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Order'),
      ),
      body: BlocBuilder<OrderBloc, OrderState>(
        builder: (_, state) {
          if (state is OrderLoadingState) {
            return const CircularProgressIndicator();
          }
          if (state is OrderLoadedState) {
            return ListView.builder(
              itemCount: state.ordersModel.menuModel.length,
              itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.done),
                title: Text(
                  state.ordersModel.menuModel[index].menuTitle,
                ),
              ),
            );
          }
          return const Text('Something went wrong!');
        },
      ),
    );
  }
}
