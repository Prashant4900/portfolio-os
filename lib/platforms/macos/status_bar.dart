import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/constants/common.dart';
import 'package:portfolio/gen/assets.gen.dart';
import 'package:portfolio/utils/battery_provider.dart';
import 'package:provider/provider.dart';

class MacStatusBarWidget extends StatelessWidget {
  const MacStatusBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.5),
      ),
      child: Row(
        children: [
          horizontalMargin16,
          Assets.svg.apple.svg(
            height: 20,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
          horizontalMargin16,
          Text(
            'Finder',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
          ),
          horizontalMargin24,
          Text(
            'File',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
          horizontalMargin16,
          Text(
            'Edit',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
          horizontalMargin16,
          Text(
            'View',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
          horizontalMargin16,
          Text(
            'Go',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
          horizontalMargin16,
          Text(
            'Windows',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
          horizontalMargin16,
          Text(
            'Help',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
          ),
          const Spacer(),
          StreamBuilder<String>(
            stream:
                Provider.of<BatteryProvider>(context).batteryPercentageStream,
            initialData: '',
            builder: (context, snapshot) {
              return Row(
                children: [
                  Text(
                    snapshot.data ?? '',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ],
              );
            },
          ),
          horizontalMargin4,
          StreamBuilder<BatteryStatus>(
            stream:
                Provider.of<BatteryProvider>(context).batteryStatusController,
            initialData: BatteryStatus.full,
            builder: (context, snapshot) {
              return snapshot.data == BatteryStatus.full
                  ? const Icon(
                      CupertinoIcons.battery_100,
                      color: Colors.white,
                      size: 20,
                    )
                  : snapshot.data == BatteryStatus.mid
                      ? Assets.macos.svg.batteryMid.svg(
                          height: 12,
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        )
                      : const Icon(
                          CupertinoIcons.battery_25,
                          color: Colors.white,
                          size: 20,
                        );
            },
          ),
          horizontalMargin12,
          const Icon(
            CupertinoIcons.wifi,
            color: Colors.white,
            size: 20,
          ),
          horizontalMargin12,
          const Icon(
            CupertinoIcons.search,
            color: Colors.white,
            size: 20,
          ),
          horizontalMargin12,
          Assets.svg.cc.svg(
            height: 20,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
          horizontalMargin12,
          Assets.macos.lottie.siri.lottie(width: 20, animate: false),
          horizontalMargin12,
          StreamBuilder(
            stream: Stream<void>.periodic(const Duration(seconds: 1)),
            builder: (context, snapshot) {
              return FittedBox(
                fit: BoxFit.fitHeight,
                child: Text(
                  DateFormat('E d LLL hh:mm:ss a').format(DateTime.now()),
                  style: const TextStyle(
                    fontFamily: 'HN',
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
          horizontalMargin16,
        ],
      ),
    );
  }
}
