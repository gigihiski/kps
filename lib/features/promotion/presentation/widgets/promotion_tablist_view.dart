import 'package:flutter/material.dart';
import 'package:kps/features/promotion/presentation/widgets/promotion_item.dart';

@immutable
class PromotionTabListView extends StatelessWidget {
  PromotionTabListView({Key? key}) : super(key: key);

  final promotionItem = const PromotionItem();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Column(
          children: [
            const TabBar(
              isScrollable: true,
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
              tabs: [
                Text('All'),
                Text('Top Up'),
                Text('Bill'),
                Text('Insurance'),
                Text('Investment'),
                Text('News')
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.separated(
                    itemCount: 10,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        child: promotionItem,
                        onTap: () {},
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider();
                    },
                  ),
                  ListView.separated(
                    itemCount: 10,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        child: promotionItem,
                        onTap: () {},
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider();
                    },
                  ),
                  ListView.separated(
                    itemCount: 10,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        child: promotionItem,
                        onTap: () {},
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider();
                    },
                  ),
                  ListView.separated(
                    itemCount: 10,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        child: promotionItem,
                        onTap: () {},
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider();
                    },
                  ),
                  ListView.separated(
                    itemCount: 10,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        child: promotionItem,
                        onTap: () {},
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider();
                    },
                  ),
                  ListView.separated(
                    itemCount: 10,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        child: promotionItem,
                        onTap: () {},
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider();
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
