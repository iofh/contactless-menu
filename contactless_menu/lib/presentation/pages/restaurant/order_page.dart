import 'package:contactless_menu/application/restaurant/order/bloc/order_bloc.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Order'),
        actions: [
          InkWell(
            onTap: () {
              if (context
                  .read<OrderBloc>()
                  .state
                  .ordersModel
                  .menuModel
                  .isNotEmpty) {
                context.read<OrderBloc>().state.ordersModel.menuModel.clear();
                context.read<OrderBloc>().add(ClearOrderEvent());
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Clear Order'),
            ),
          )
        ],
      ),
      body: BlocBuilder<OrderBloc, OrderState>(
        builder: (_, state) {
          if (state is OrderLoadingState) {
            return const CircularProgressIndicator();
          }
          if (state is OrderLoadedState || state is InitialOrderState) {
            return ListView.builder(
              itemCount: state.ordersModel.menuModel.length,
              itemBuilder: (context, index) => ListTile(
                leading: Text(
                  "\$ ${state.ordersModel.menuModel[index].menuPrice.toString()}",
                ),
                title: Text(
                  state.ordersModel.menuModel[index].menuTitle,
                ),
              ),
            );
          }

          return const Text('Something went wrong!');
        },
      ),
      floatingActionButton: Container(
        width: 100,
        height: 100,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(),
          onPressed: () => _showUnimplementedFlushbar(context),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
                'Order Now \$${context.watch<OrderBloc>().state.ordersModel.totalPrice}'),
          ),
        ),
      ),
    );
  }
}

void _showUnimplementedFlushbar(BuildContext context) {
  Flushbar(
    message: 'Coming Soon, Unimplemented',
    duration: Duration(seconds: 3),
  )..show(context);
}
