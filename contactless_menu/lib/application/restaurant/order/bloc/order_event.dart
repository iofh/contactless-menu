part of 'order_bloc.dart';

@immutable
abstract class OrderEvent extends Equatable {
  const OrderEvent();
}

class OrderStartedEvent extends OrderEvent {
  @override
  List<Object> get props => [];
}

class AddOrderEvent extends OrderEvent {
  const AddOrderEvent(this.menu);

  final MenuItemModel menu;

  @override
  List<Object> get props => [menu];
}

class ClearOrderEvent extends OrderEvent {
  @override
  List<Object> get props => [];
}
