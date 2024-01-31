import 'package:flutter/material.dart';
import 'package:portfolio/constants/common.dart';
import 'package:portfolio/utils/apps_provider.dart';
import 'package:provider/provider.dart';

class MacAppBody extends StatefulWidget {
  const MacAppBody({
    required this.child,
    required this.title,
    super.key,
    this.backgroundColor,
  });

  final Widget child;
  final Color? backgroundColor;
  final String title;

  @override
  State<MacAppBody> createState() => _MacAppBodyState();
}

class _MacAppBodyState extends State<MacAppBody> {
  bool _showFullSize = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * (_showFullSize ? 1 : .7),
      height: MediaQuery.sizeOf(context).height * (_showFullSize ? 1 : .75),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Column(
        children: [
          InkWell(
            onDoubleTap: () {
              setState(() {
                _showFullSize = !_showFullSize;
              });
            },
            child: Container(
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
                  InkWell(
                    onTap: () {
                      setState(() {
                        _showFullSize = true;
                      });
                    },
                    child: const CircleAvatar(
                      radius: 5.5,
                      backgroundColor: Colors.green,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  horizontalMargin48,
                  const Spacer(),
                ],
              ),
            ),
          ),
          Expanded(child: widget.child),
        ],
      ),
    );
  }
}
