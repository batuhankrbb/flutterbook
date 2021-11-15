import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class PullToRefreshBuilder extends StatefulWidget {
  const PullToRefreshBuilder(
      {Key? key,
      this.onLoading,
      required this.onRefresh,
      required this.listView,
      required this.snackMessage})
      : super(key: key);

  final VoidFutureCallBack? onLoading;
  final VoidFutureCallBack onRefresh;
  final ListView listView;
  final String snackMessage;

  @override
  _PullToRefreshBuilderState createState() => _PullToRefreshBuilderState();
}

class _PullToRefreshBuilderState extends State<PullToRefreshBuilder> {
  late RefreshController refreshController;

  @override
  void initState() {
    super.initState();
    refreshController = RefreshController();
  }

  @override
  void dispose() {
    super.dispose();
    refreshController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: refreshController,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      enablePullUp: false,
      enablePullDown: true,
      enableTwoLevel: false,
      onLoading: widget.onLoading,
      onRefresh: () async {
        await widget.onRefresh();
        refreshController.refreshCompleted();
      },
      child: widget.listView,
    );
  }
}
