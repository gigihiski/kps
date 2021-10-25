import 'package:kps/features/history/presentation/widgets/bottom_sheet_history.dart';
import 'package:kps/features/history/presentation/widgets/history_item.dart';
import 'package:flutter/material.dart';

@immutable
class TabListView extends StatelessWidget {
  TabListView({Key? key}) : super(key: key);

  final historyItem = const HistoryItem();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Column(
          children: [
            const TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.blueGrey,
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w700,
              ),
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              tabs: [Text('Top Up'), Text('Bill'), Text('Purchase')],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.builder(
                      itemCount: 10,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          child: historyItem,
                          onTap: () {
                            BottomSheetHistory().buildTradeSheet(context);
                          },
                        );
                      }),
                  ListView.builder(
                      itemCount: 20,
                      itemBuilder: (_, index) {
                        return historyItem;
                      }),
                  ListView.builder(
                      itemCount: 5,
                      itemBuilder: (_, index) {
                        return historyItem;
                      }),
                ],
              ),
            ),
          ],
        ));
  }
}
