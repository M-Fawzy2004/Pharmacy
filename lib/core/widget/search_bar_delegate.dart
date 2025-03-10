import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/helper/search_text_field.dart';

class SearchBarDelegate extends SliverPersistentHeaderDelegate {
  @override
  double get minExtent => 60;
  @override
  double get maxExtent => 60;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: const SearchTextField(),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
