import 'package:flutter/material.dart';

class EndlessPaginationView extends StatefulWidget {
  const EndlessPaginationView({
    super.key,
    required this.scrollController,
    required this.itemCount,
    required this.itemBuilder,
    required this.isNextPageLoading,
    required this.canRequestNewPage,
    required this.onRequestNextPage,
  });

  final ScrollController scrollController;
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;
  final bool isNextPageLoading;
  final bool canRequestNewPage;
  final void Function() onRequestNextPage;

  @override
  State<EndlessPaginationView> createState() => _EndlessPaginationViewState();
}

class _EndlessPaginationViewState extends State<EndlessPaginationView> {
  late final ScrollController _scrollController = widget.scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: widget.itemCount + (widget.isNextPageLoading ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == widget.itemCount && widget.isNextPageLoading) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(),
            ),
          );
        }
        return widget.itemBuilder(context, index);
      },
    );
  }

  void _onScroll() {
    if (widget.isNextPageLoading || !widget.canRequestNewPage) return;

    final ScrollPosition position = _scrollController.position;

    if (position.maxScrollExtent <= position.pixels + 300) {
      widget.onRequestNextPage();
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);

    super.dispose();
  }
}
