part of 'order_bloc.dart';

@immutable
abstract class OrderState extends Equatable {
  const OrderState();
}

class OrderLoadedState extends OrderState {
  final OrderListModel ordersModel;
  const OrderLoadedState({this.ordersModel = const OrderListModel()});

  @override
  List<Object> get props => [ordersModel];
}

class OrderLoadingState extends OrderState {
  @override
  List<Object> get props => [];
}

class OrderErrorState extends OrderState {
  @override
  List<Object> get props => [];
}
