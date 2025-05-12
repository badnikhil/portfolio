import 'package:flutter/material.dart';
import 'package:portfolio/data/model/experience.dart';
import 'package:portfolio/presentation/utils/extensions/extensions.dart';
import 'package:portfolio/presentation/widgets/widgets.dart';
import 'package:url_launcher/url_launcher_string.dart'; // ✅ Required for GitHub link support

import '../../../configs/configs.dart';
import 'three_d_flip.dart';

class ExperienceStepCard extends StatelessWidget {
  const ExperienceStepCard({
    super.key,
    required this.experience,
    required this.index,
    required this.animation,
    required this.start,
    required this.end,
    this.githubLink,
  });

  final Experience experience;
  final Animation<double> animation;
  final double start;
  final double end;
  final int index;
  final String? githubLink;

  Animation<double> get curvedAnimation => CurvedAnimation(
        parent: animation,
        curve: Interval(
          start,
          end,
          curve: Curves.easeInOut,
        ),
      );

  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry padding = context.percentPadding(
      t: s2,
      r: s3,
      b: s5,
    );

    return IntrinsicHeight(
      child: <Widget>[
        ThreeDFlip(
          animation: curvedAnimation,
          start: start,
          end: end,
          child: <Widget>[
            Text(
              "/ ${"$index".prefixZero()}",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w200,
                  ),
            ),
            horizontalSpaceMedium,
            Text(
              "${experience.startDate.toMonthAndYear()} - ${experience.endDate.toMonthAndYear()}",
              textAlign: TextAlign.center,
              maxLines: 2,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w200,
                  ),
            ),
          ]
              .addRow(
                mainAxisSize: MainAxisSize.min,
              )
              .addPadding(edgeInsets: padding),
        ).addAlign(alignment: Alignment.topCenter).addExpanded(),

        ThreeDFlip(
          animation: curvedAnimation,
          start: start,
          end: end,
          child: Container(
            width: s2,
            margin: context.percentPadding(r: s5),
            decoration: const BoxDecoration(color: kBlack),
          ),
        ),

        ThreeDFlip(
          animation: curvedAnimation,
          start: start,
          end: end,
          child: <Widget>[
            Text(
              experience.company,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            verticalSpaceMedium,
            Text(
              experience.position,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            if (experience.type == JobType.remote) const Text("(remote)"),
            verticalSpaceLarge,
            ...experience.responsibilities
                .map((responsibility) => Text(responsibility.prefixDash()))
                .toList(),

            if (experience.githubLink != null)
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: GestureDetector(
                  onTap: () => launchUrlString(experience.githubLink!),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.code, size: 18, color: Colors.blue),
                      const SizedBox(width: 6),
                      Text(
                        "View on GitHub ",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
          ]
              .addColumn(crossAxisAlignment: CrossAxisAlignment.start)
              .addPadding(edgeInsets: padding),
        ).addExpanded(flex: 2),
      ].addRow(crossAxisAlignment: CrossAxisAlignment.start),
    );
  }
}


class MobileExperienceStepCard extends StatelessWidget {
  const MobileExperienceStepCard({
    super.key,
    required this.experience,
    required this.index,
    required this.animation,
    required this.start,
    required this.end,
    this.githubLink
  });

  final Experience experience;
  final Animation<double> animation;
  final double start;
  final double end;
  final int index;
  final String? githubLink;

  Animation<double> get curvedAnimation => CurvedAnimation(
        parent: animation,
        curve: Interval(
          start,
          end,
          curve: Curves.easeInOut,
        ),
      );

  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry padding = context.percentPadding(
      t: s2,
      r: s3,
      b: s2,
    );

    return IntrinsicHeight(
      child: <Widget>[
        ThreeDFlip(
          animation: curvedAnimation,
          start: start,
          end: end,
          child: <Widget>[
            Text(
              "/ ${"$index".prefixZero()}",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w200,
                  ),
            ),
            horizontalSpaceMassive,
            Text(
              "${experience.startDate.toMonthAndYear()} - ${experience.endDate.toMonthAndYear()}",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w200,
                  ),
            ),
          ]
              .addRow(
                mainAxisSize: MainAxisSize.min,
              )
              .addPadding(
                edgeInsets: padding,
              ),
        ).addAlign(alignment: Alignment.topLeft),
        AnimatedHorizontalStick(controller: curvedAnimation),
        ThreeDFlip(
          animation: curvedAnimation,
          start: start,
          end: end,
          child: <Widget>[
            Text(
              experience.company,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            verticalSpaceMedium,
            Text(
              experience.position,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            if (experience.type == JobType.remote) const Text("(remote)"),
            verticalSpaceMedium,
            ...experience.responsibilities
                .map((responsibility) => Text(responsibility.prefixDash()))
                .toList(),

            // ✅ GitHub project link section
            if (experience.githubLink != null)
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: GestureDetector(
                  onTap: () => launchUrlString(experience.githubLink!),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.code, size: 18, color: Colors.blue),
                      const SizedBox(width: 6),
                      Text(
                        "View GitHub Project",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
          ]
              .addColumn(
                crossAxisAlignment: CrossAxisAlignment.start,
              )
              .addPadding(edgeInsets: padding),
        ),
        verticalSpaceMedium,
      ].addColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
      ),
    );
  }
}

