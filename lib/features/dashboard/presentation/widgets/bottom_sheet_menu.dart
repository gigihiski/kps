import 'package:flutter/material.dart';

@immutable
class BottomSheetMenu {
  void buildMenuSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
        ),
        builder: (context) {
          return Container(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (_, index) {
                  if (index == 0) {
                    return ListTile(
                        leading: const Icon(Icons.money),
                        title: const Text("Deposit",
                            style: TextStyle(color: Colors.black)),
                        onTap: () {});
                  }
                  if (index == 1) {
                    return ListTile(
                        leading: const Icon(Icons.money_off),
                        title: const Text("Withdraw",
                            style: TextStyle(color: Colors.black)),
                        onTap: () {});
                  }
                  if (index == 2) {
                    return ListTile(
                        leading: const Icon(Icons.money_outlined),
                        title: const Text("Transfer",
                            style: TextStyle(color: Colors.black)),
                        onTap: () {});
                  }
                  if (index == 3) {
                    return ListTile(
                        leading: const Icon(Icons.history),
                        title: const Text("Transactions",
                            style: TextStyle(color: Colors.black)),
                        onTap: () {});
                  }
                  if (index == 4) {
                    return ListTile(
                        leading: const Icon(Icons.remove_circle),
                        title: const Text("Archive an Account",
                            style: TextStyle(color: Colors.black)),
                        onTap: () {});
                  }
                  return Container();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
              ),
              height: 500.0);
        });
  }
}
