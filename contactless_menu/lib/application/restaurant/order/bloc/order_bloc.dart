import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:contactless_menu/domain/restaurant/primitive_menu_model.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(OrderLoadedState());

  @override
  Stream<OrderState> mapEventToState(
    OrderEvent event,
  ) async* {
    if (event is OrderStartedEvent) {
      yield* _mapOrderStartedToState();
    } else if (event is AddOrderEvent) {
      yield* _mapMenuItemToState(event, state);
    } else if (event is ClearOrderEvent) {
      yield* _mapClearItemToState(event, state);
    }
  }
}

Stream<OrderState> _mapOrderStartedToState() async* {
  yield OrderLoadingState();
  try {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield const OrderLoadedState();
  } catch (_) {
    yield OrderErrorState();
  }
}

Stream<OrderState> _mapMenuItemToState(
  AddOrderEvent event,
  OrderState state,
) async* {
  if (state is OrderLoadedState) {
    try {
      yield OrderLoadedState(
        ordersModel: OrderListModel(
            menuModel: List.from(state.ordersModel.menuModel)..add(event.menu)),
      );
    } on Exception {
      yield OrderErrorState();
    }
  }
}

Stream<OrderState> _mapClearItemToState(
  ClearOrderEvent event,
  OrderState state,
) async* {
  if (state is OrderLoadedState) {
    try {
      yield InitialOrderState();
      yield const OrderLoadedState();
    } on Exception {
      yield OrderErrorState();
    }
  }
}
