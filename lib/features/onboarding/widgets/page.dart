import 'package:app_todo/core/extensions/context.dart';
import 'package:app_todo/core/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.title,
    required this.message,
    required this.image,
    this.onSkip,
    this.onBack,
    this.onNext,
  });

  final String title;
  final String message;
  final String image;
  final VoidCallback? onSkip;
  final VoidCallback? onBack;
  final VoidCallback? onNext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: onSkip,
                child: Text(
                  L.of(context).skip,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
            SvgPicture.asset(
              image,
              width: context.width,
              height: context.height * .3,
            ),
            SizedBox(height: context.height * .05),
            Text(
              title,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(fontSize: 32),
            ),
            SizedBox(height: context.height * .05),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                message,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: onBack,
                  child: Text(
                    L.of(context).back.toUpperCase(),
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Theme.of(context).colorScheme.primary,
                    ),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  onPressed: onNext,
                  child: Text(
                    L.of(context).next,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
