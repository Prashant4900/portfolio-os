import 'package:flutter/material.dart';
import 'package:portfolio/constants/common.dart';
import 'package:portfolio/utils/apps_provider.dart';
import 'package:provider/provider.dart';

class MyGameWindow extends StatelessWidget {
  const MyGameWindow({
    required this.game,
    required this.title,
    super.key,
  });

  final Widget game;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 30,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Row(
              children: [
                horizontalMargin16,
                InkWell(
                  onTap: () {
                    context.read<AppsProvider>().close();
                  },
                  child: const CircleAvatar(
                    radius: 5.5,
                    backgroundColor: Colors.red,
                  ),
                ),
                horizontalMargin8,
                InkWell(
                  onDoubleTap: () {},
                  child: const CircleAvatar(
                    radius: 5.5,
                    backgroundColor: Colors.yellow,
                  ),
                ),
                horizontalMargin8,
                const CircleAvatar(
                  radius: 5.5,
                  backgroundColor: Colors.green,
                ),
                const Spacer(),
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.white,
                      ),
                ),
                horizontalMargin48,
                const Spacer(),
              ],
            ),
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              child: game,
            ),
          ),
        ],
      ),
    );
  }
}
