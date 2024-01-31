import 'package:flutter/material.dart';
import 'package:portfolio/constants/common.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/platforms/macos/apps/safari.dart';
import 'package:portfolio/platforms/macos/apps/spotify.dart';
import 'package:portfolio/platforms/macos/apps/vs_code.dart';
import 'package:portfolio/utils/apps_provider.dart';
import 'package:provider/provider.dart';

class MacDockWidget extends StatelessWidget {
  const MacDockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          horizontalMargin12,
          Assets.svg.finder.svg(width: 45),
          horizontalMargin12,
          InkWell(
            onTap: () {
              context.read<AppsProvider>().open(const MySafariApp());
            },
            child: Assets.svg.safari.svg(width: 40),
          ),
          horizontalMargin12,
          Assets.macos.images.message.image(width: 40),
          horizontalMargin12,
          Assets.macos.images.mail.image(width: 40),
          horizontalMargin12,
          InkWell(
            onTap: () {
              context.read<AppsProvider>().open(const MySpotifyApp());
            },
            child: Assets.svg.spotify.svg(width: 45),
          ),
          horizontalMargin12,
          const CalenderIconWidget(),
          horizontalMargin12,
          Assets.macos.images.notes.image(width: 40),
          horizontalMargin12,
          InkWell(
            onTap: () {
              context.read<AppsProvider>().open(const MyVSCodeApp());
            },
            child: Assets.svg.vsCode.svg(width: 40),
          ),
          horizontalMargin12,
          Assets.macos.images.systemPref.image(width: 40),
          horizontalMargin12,
        ],
      ),
    );
  }
}

class CalenderIconWidget extends StatelessWidget {
  const CalenderIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Center(
              child: Text(
                'Jan',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
            child: Center(
              child: Text(
                '29',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
