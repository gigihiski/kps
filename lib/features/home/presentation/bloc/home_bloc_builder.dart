import 'package:kps/core/utils/constants.dart';
import 'package:kps/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:kps/features/favorite/presentation/pages/favorite_page.dart';
import 'package:kps/features/home/presentation/bloc/home_bloc.dart';
import 'package:kps/features/profile/presentation/pages/profile_page.dart';
import 'package:kps/features/purchase/presentation/pages/purchase_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kps/features/history/presentation/pages/history_page.dart';

@immutable
class HomeBlocBuilder {
  static Widget build() {
    return Container(
        color: Constants.backgroundColor,
        child: BlocBuilder<HomeBloc, HomeState>(
            builder: (BuildContext context, HomeState state) {
          if (state is HistoryPageLoadedSuccess) return const HistoryPage();
          if (state is PurchasePageLoadedSuccess) return const PurchasePage();
          if (state is FavoritePageLoadedSuccess) return const FavoritePage();
          if (state is ProfilePageLoadedSuccess) return const ProfilePage();
          return const DashboardPage();
        }),
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0));
  }

  static Widget navigation() {
    return BlocBuilder<HomeBloc, HomeState>(
        builder: (BuildContext context, HomeState state) {
      return BottomNavigationBar(
          elevation: 0,
          backgroundColor: Constants.backgroundColor,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          currentIndex: context.select((HomeBloc bloc) => bloc.currentIndex),
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
                icon: Icon(Icons.monitor_outlined), label: 'Home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_outlined), label: 'History'),
            BottomNavigationBarItem(
                icon: Container(height: 25.0), label: 'Scan'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline), label: 'Favourites'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Profile')
          ],
          onTap: (index) => context
              .read<HomeBloc>()
              .add(OnBottomNavigationSelect(index: index)));
    });
  }
}
