import 'package:contactless_menu/application/restaurant/restaurant_bloc.dart';
import 'package:contactless_menu/presentation/core/sliver_header_delegate.dart';
import 'package:contactless_menu/presentation/pages/restaurant/widgets/restaurant_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RestaurantSliverWid extends StatelessWidget {
  const RestaurantSliverWid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverPersistentHeader(
            pinned: false,
            delegate: SliverHeaderDelegate(
              minHeight: MediaQuery.of(context).size.height * 0.1,
              maxHeight: MediaQuery.of(context).size.height * 0.2,
              child: Container(
                child: Center(
                    child: Text(
                  'Contacless Menu',
                  style: TextStyle(fontSize: 30),
                )),
                color: Theme.of(context).appBarTheme.color,
              ),
            ),
          ),
        ];
      },
      body: BlocBuilder<RestaurantBloc, RestaurantState>(
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
                        child: const Text('Failure encountered'),
                        color: Colors.red,
                      );
                    } else {
                      return RestaurantTile(res: res);
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
    );
  }
}
