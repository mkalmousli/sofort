import 'dart:async';

import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:sofort/src/db.dart';

class DevicesListView extends StatefulWidget {
  const DevicesListView({super.key});

  @override
  State<DevicesListView> createState() => _DevicesListViewState();
}

class _DevicesListViewState extends State<DevicesListView> {
  static const _pageSize = 5;

  final _pagingController = PagingController<int, Device>(firstPageKey: 0);

  StreamSubscription? _updatesWatcher;

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });

    final q = db.devices.select();
    q.limit(1);
    _updatesWatcher = q.watch().listen((_) {
      _pagingController.refresh();
    });

    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final q = db.devices.select();
      q.limit(_pageSize, offset: _pageSize * pageKey);
      final newItems = await q.get();

      final isLastPage = newItems.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) => PagedListView<int, Device>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<Device>(
          itemBuilder: (context, device, index) => ListTile(
            title: Text(device.name),
          ),
        ),
      );

  @override
  void dispose() {
    _pagingController.dispose();
    _updatesWatcher?.cancel();
    super.dispose();
  }
}
