import 'package:flutter/material.dart';
import 'package:flutter_shimmer_list/widgets/profile_shimmer.dart';
import 'package:flutter_shimmer_list/widgets/text_shimmer.dart';

class ShimmerList extends StatelessWidget {
  final int length;
  final EdgeInsets padding;

  const ShimmerList({
    Key? key,
    this.length = 5,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: length,
      padding: padding,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20),
                child: const ProfileShimmer(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 7),
                    child: const TextShimmer(width: 100, height: 10),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 9),
                    child: const TextShimmer(width: 150, height: 8),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
