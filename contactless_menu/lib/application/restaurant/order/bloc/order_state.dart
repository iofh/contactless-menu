part of 'order_bloc.dart';

@immutable
abstract class OrderState extends Equatable {
  final OrderListModel ordersModel;
  const OrderState(this.ordersModel);
}

class OrderLoadedState extends OrderState {
  final OrderListModel ordersModel;
  const OrderLoadedState({this.ordersModel = const OrderListModel()})
      : super(ordersModel);

  @override
  List<Object> get props => [ordersModel];
}

class OrderLoadingState extends OrderState {
  OrderLoadingState() : super(null);

  @override
  List<Object> get props => [];
}

class OrderErrorState extends OrderState {
  OrderErrorState() : super(OrderListModel());

  @override
  List<Object> get props => [];
}

class InitialOrderState extends OrderState {
  InitialOrderState() : super(OrderListModel());

  @override
  List<Object> get props => [];
}
