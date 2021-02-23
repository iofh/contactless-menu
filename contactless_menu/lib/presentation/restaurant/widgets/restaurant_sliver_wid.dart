import 'package:contactless_menu/application/restaurant/restaurant_bloc.dart';
import 'package:contactless_menu/presentation/core/sliver_header_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RestaurantSliverWid extends StatelessWidget {
  const RestaurantSliverWid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPersistentHeader(
          pinned: false,
          delegate: SliverHeaderDelegate(
            minHeight: MediaQuery.of(context).size.height * 0.1,
            maxHeight: MediaQuery.of(context).size.height * 0.2,
            child: Container(
              child: Center(child: Text('Contacless Menu')),
              color: Theme.of(context).appBarTheme.color,
            ),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: MediaQuery.of(context).size.height * 0.18,
          delegate: SliverChildListDelegate(
            [
              BlocBuilder<RestaurantBloc, RestaurantState>(
                builder: (context, state) {
                  return state.map(
                      initial: (_) => Container(),
                      loadInProgress: (_) => Center(
                            child: CircularProgressIndicator(),
                          ),
                      loadSuccess: (state) {
                        return ListView.builder(
                          itemBuilder: (context, index) {
                            final res = state.restaurant[index];
                            if (res.failureOption.isSome()) {
                              return Container(
                                color: Colors.red,
                              );
                            } else {
                              return Container(
                                child: Text(
                                  res.restaurantDescription.toString(),
                                ),
                              );
                            }
                          },
                          itemCount: state.restaurant.size,
                        );
                      },
                      loadFailure: (_) {
                        return Container(
                          child: Text(
                            _.toString(),
                          ),
                        );
                      });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
