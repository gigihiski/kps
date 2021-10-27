import 'package:kps/core/utils/constants.dart';
import 'package:kps/features/history/presentation/widgets/history_item.dart';
import 'package:flutter/material.dart';
import 'package:kps/features/topup/presentation/pages/instant_topup_page.dart';
import 'package:kps/features/topup/presentation/pages/other_method_topup_page.dart';

@immutable
class TopUpTabListView extends StatelessWidget {
  TopUpTabListView({Key? key}) : super(key: key);

  final historyItem = const HistoryItem();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
                child: TabBar(
                  labelPadding: const EdgeInsets.only(bottom: 10.0),
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  unselectedLabelColor: Colors.black.withOpacity(0.5),
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                  ),
                  labelStyle: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                  ),
                  tabs: const [Text('Instant Top Up'), Text('Other Method')],
                ),
                color: Constants.secondaryColor),
            const Expanded(
              child: TabBarView(
                children: [InstantTopUpPage(), OtherMethodTopUpPage()],
              ),
            ),
          ],
        ));
  }
}
